library(shiny)
library(shinydashboard)
library(tidyverse)
library(GGally)

ui <- dashboardPage(
                    dashboardHeader(title = "Reactive Dashboard "),
                    dashboardSidebar(
                                    sidebarMenu(
                                                fileInput("v_fileinput", label = "Upload Data CSV "),
                                                uiOutput("target_var"),
                                                actionButton("v_button", "Run Model"),
                                                textInput("v_filename", label = "Download - Results File", value = "results.csv", placeholder = "results.csv"),
                                                downloadButton("v_download", "Download Summary")
                                                )
                                    ),
                    dashboardBody(
                                fluidRow(
                                    box(plotOutput("eda_plot_1")), 
                                    box(plotOutput("model_plot"))
                                    )
                                )
                    )


server <- function(input, output) {
  
                                    file_data <- reactive({
                                                            file <- input$v_fileinput
                                                            
                                                            if(!is.null(file)){read.csv(file$datapath)}
                                                        })
  
                                    output$v_download <- downloadHandler(
                                        filename = function() {
                                        paste(input$v_filename)
                                        },
                                        content = function(file) {
                                        write_csv(modelRun(), file)
                                        }
                                    )
  
  modelRun <- eventReactive(input$v_button, {
    lm(as.formula(paste0(input$v_target, "~.")), data = file_data()) %>% 
      broom::tidy() 
  })
  
  output$eda_plot_1 <- renderPlot({
    req(file_data())
    ggduo(file_data())
  })
  
  output$target_var <- renderUI({
    req(file_data())
    
    selectInput("v_target", "Target Variable", choices = colnames(file_data() %>% select_if(is.numeric)))
  })
  
  
  output$model_plot <- renderPlot({
    
    modelRun() %>%   
      ggplot(aes(x = term, y = estimate, color = p.value <= 0.05)) + 
      geom_segment(aes(xend = term, yend = 0)) + 
      geom_point() + 
      theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
      labs(title = paste0("Coefficients for predicting ", input$v_target),
           subtitle = "Using a linear model")
  })
  
  
  
}

shinyApp(ui, server) 