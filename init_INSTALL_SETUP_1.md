

####  mmm_gitup

- TEST -- runApp("App-1", display.mode = "showcase")
- TEST --OK -- library(shiny); runApp('rstats_nov22/app_dir_1/app_1_demo.R' , display.mode = "showcase")
- TEST --OK -- library(shiny); runApp('rstats_nov22/app_dir_2/testApp_Shiny_.R' , display.mode = "showcase")

- 

<h1 align="center">SHINY Experiments - </h1>

<p align="center">
    <img src="https://github.com/RohitDhankar/rstats_nov22/blob/main/images_dir/Screenshot%20from%202022-11-10%2023-01-36.png" width= "850px">
</p>



#
<br>


##### Seen below some R Code and RStudio terminal Prints 

> So the SHINY Tutorial states - 
Launch your app by running runApp("App-1"). Then click escape and make some changes to your app

- Source -- https://shiny.rstudio.com/tutorial/written-tutorial/lesson1/



#
<br>

- Note the First Command Works Ok -- the App is launched -- 
- > library(shiny); runApp('rstats_nov22/app_dir_1/app_1_demo.R')

#
<br>


```bash
> library(shiny); runApp('rstats_nov22/app_dir_1/app_1_demo.R')

Listening on http://127.0.0.1:5212

> library(shiny); runApp('rstats_nov22/app_dir_1)
+ 
> library(shiny); runApp("rstats_nov22/app_dir_1")
Error in `shinyAppDir()`:
! App dir must contain either app.R or server.R.
Run `rlang::last_error()` to see where the error occurred.
> 
> 
```


#
<br>


##### Coding R within VS COde - Extensions Installed 

```bash
installing to /home/dhankar/R/x86_64-pc-linux-gnu-library/4.2/00LOCK-languageserver/00new/languageserver/libs
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (languageserver)

The downloaded source packages are in
        ‘/tmp/RtmpzBZxII/downloaded_packages’
```


#
<br>


#### Init Shiny Code 


#
<br>

- install.packages("shiny")

```bash

installing to /home/dhankar/R/x86_64-pc-linux-gnu-library/4.2/00LOCK-cli/00new/cli/libs
installing to /home/dhankar/R/x86_64-pc-linux-gnu-library/4.2/00LOCK-httpuv/00new/httpuv/libs
** R
** demo
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (httpuv)
* installing *source* package ‘shiny’ ...
** package ‘shiny’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
*** copying figures
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (shiny)

The downloaded source packages are in
	‘/tmp/RtmpA9dzBk/downloaded_packages’
```
#
<br>

#### Latest Installed Packages are within the -- 4.2 DIR 

- /home/dhankar/R/x86_64-pc-linux-gnu-library/4.2/

> The Older R Package DIR's are also on the system in previous Version DIR's 

```bash
(base) dhankar@dhankar-1:~/R/x86_64-pc-linux-gnu-library$ pwd
/home/dhankar/R/x86_64-pc-linux-gnu-library
(base) dhankar@dhankar-1:~/R/x86_64-pc-linux-gnu-library$ ls -lahtr
total 20K
drwxr-xr-x   3 dhankar dhankar 4.0K May 14  2020 ..
drwxr-xr-x  87 dhankar dhankar 4.0K May 30  2020 3.4
drwxrwxr-x 122 dhankar dhankar 4.0K Jul  5  2021 4.1
drwxr-xr-x   5 dhankar dhankar 4.0K Nov 10 19:39 .
drwxrwxr-x  43 dhankar dhankar 4.0K Nov 10 22:06 4.2
#
(base) dhankar@dhankar-1:~/R/x86_64-pc-linux-gnu-library$ cd 3.4/
(base) dhankar@dhankar-1:~/.../3.4$ ls -lahtr
total 348K
drwxr-xr-x  9 dhankar dhankar 4.0K May 14  2020 ps
drwxr-xr-x  6 dhankar dhankar 4.0K May 14  2020 prettyunits
drwxr-xr-x  7 dhankar dhankar 4.0K May 14  2020 backports
drwxr-xr-x  8 dhankar dhankar 4.0K May 14  2020 rstudioapi
drwxr-xr-x  8 dhankar dhankar 4.0K May 14  2020 utf8
drwxr-xr-x  6 dhankar dhankar 4.0K May 14  2020 evaluate
drwxr-xr-x  6 dhankar dhankar 4.0K May 14  2020 praise
drwxr-xr-x  6 dhankar dhankar 4.0K May 14  2020 assertthat
drwxr-xr-x  6 dhankar dhankar 4.0K May 14  2020 pkgconfig
drwxr-xr-x  6 dhankar dhankar 4.0K May 14  2020 R6
drwxr-xr-x  6 dhankar dhankar 4.0K May 14  2020 BH
drwxr-xr-x  7 dhankar dhankar 4.0K May 14  2020 plogr
drwxr-xr-x  8 dhankar dhankar 4.0K May 14  2020 stringi
drwxr-xr-x  7 dhankar dhankar 4.0K May 14  2020 farver
drwxr-xr-x  6 dhankar dhankar 4.0K May 14  2020 labeling
drwxr-xr-x  6 dhankar dhankar 4.0K May 14  2020 RColorBrewer
drwxr-xr-x  7 dhankar dhankar 4.0K May 14  2020 viridisLite
drwxr-xr-x  6 dhankar dhankar 4.0K May 14  2020 crayon
drwxr-xr-x  8 dhankar dhankar 4.0K May 14  2020 fansi
drwxr-xr-x 13 dhankar dhankar 4.0K May 14  2020 colorspace
drwxr-xr-x  7 dhankar dhankar 4.0K May 14  2020 fracdiff
drwxr-xr-x  7 dhankar dhankar 4.0K May 14  2020 magrittr
drwxr-xr-x 16 dhankar dhankar 4.0K May 14  2020 Rcpp
drwxr-xr-x  7 dhankar dhankar 4.0K May 14  2020 timeDate
drwxr-xr-x 11 dhankar dhankar 4.0K May 14  2020 urca
drwxr-xr-x 10 dhankar dhankar 4.0K May 14  2020 zoo
drwxr-xr-x 11 dhankar dhankar 4.0K May 14  2020 digest
drwxr-xr-x  8 dhankar dhankar 4.0K May 14  2020 glue
drwxr-xr-x  7 dhankar dhankar 4.0K May 14  2020 gtable
drwxr-xr-x  7 dhankar dhankar 4.0K May 14  2020 rlang
drwxr-xr-x  7 dhankar dhankar 4.0K May 14  2020 withr
drwxr-xr-x  7 dhankar dhankar 4.0K May 14  2020 quadprog
drwxr-xr-x  8 dhankar dhankar 4.0K May 14  2020 processx
drwxr-xr-x  7 dhankar dhankar 4.0K May 14  2020 rprojroot
drwxr-xr-x  7 dhankar dhankar 4.0K May 14  2020 ellipsis
drwxr-xr-x  8 dhankar dhankar 4.0K May 14  2020 purrr
drwxr-xr-x  7 dhankar dhankar 4.0K May 14  2020 lifecycle
drwxr-xr-x  7 dhankar dhankar 4.0K May 14  2020 munsell
drwxr-xr-x  9 dhankar dhankar 4.0K May 14  2020 cli
drwxr-xr-x 13 dhankar dhankar 4.0K May 14  2020 xts
drwxr-xr-x  9 dhankar dhankar 4.0K May 14  2020 lmtest
drwxr-xr-x 13 dhankar dhankar 4.0K May 14  2020 RcppArmadillo
drwxr-xr-x  8 dhankar dhankar 4.0K May 14  2020 gridExtra
drwxr-xr-x  9 dhankar dhankar 4.0K May 14  2020 stringr
drwxr-xr-x  7 dhankar dhankar 4.0K May 14  2020 callr
drwxr-xr-x  6 dhankar dhankar 4.0K May 14  2020 desc
drwxr-xr-x  9 dhankar dhankar 4.0K May 14  2020 vctrs
drwxr-xr-x  6 dhankar dhankar 4.0K May 14  2020 scales
drwxr-xr-x  6 dhankar dhankar 4.0K May 14  2020 pkgbuild
drwxr-xr-x  7 dhankar dhankar 4.0K May 14  2020 tidyselect
drwxr-xr-x  6 dhankar dhankar 4.0K May 14  2020 pillar
drwxr-xr-x  7 dhankar dhankar 4.0K May 14  2020 pkgload
drwxr-xr-x  8 dhankar dhankar 4.0K May 14  2020 tibble
drwxr-xr-x 11 dhankar dhankar 4.0K May 14  2020 testthat
drwxr-xr-x 10 dhankar dhankar 4.0K May 14  2020 dplyr
drwxr-xr-x  9 dhankar dhankar 4.0K May 14  2020 tidyr
drwxr-xr-x  9 dhankar dhankar 4.0K May 14  2020 isoband
drwxr-xr-x  8 dhankar dhankar 4.0K May 14  2020 ggplot2
drwxr-xr-x  7 dhankar dhankar 4.0K May 14  2020 ggfortify
drwxr-xr-x  9 dhankar dhankar 4.0K May 22  2020 TTR
drwxr-xr-x  7 dhankar dhankar 4.0K May 22  2020 quantmod
drwxr-xr-x  8 dhankar dhankar 4.0K May 22  2020 tseries
drwxr-xr-x  9 dhankar dhankar 4.0K May 22  2020 forecast
drwxr-xr-x  8 dhankar dhankar 4.0K May 22  2020 xfun
drwxr-xr-x  7 dhankar dhankar 4.0K May 22  2020 highr
drwxr-xr-x  8 dhankar dhankar 4.0K May 22  2020 yaml
drwxr-xr-x  7 dhankar dhankar 4.0K May 22  2020 htmltools
drwxr-xr-x  8 dhankar dhankar 4.0K May 22  2020 jsonlite
drwxr-xr-x  7 dhankar dhankar 4.0K May 22  2020 base64enc
drwxr-xr-x  7 dhankar dhankar 4.0K May 22  2020 mime
drwxr-xr-x  6 dhankar dhankar 4.0K May 22  2020 tinytex
drwxr-xr-x 11 dhankar dhankar 4.0K May 22  2020 markdown
drwxr-xr-x 14 dhankar dhankar 4.0K May 22  2020 knitr
drwxr-xr-x 10 dhankar dhankar 4.0K May 22  2020 rmarkdown
drwxr-xr-x  7 dhankar dhankar 4.0K May 22  2020 sys
drwxr-xr-x  7 dhankar dhankar 4.0K May 22  2020 bitops
drwxr-xr-x  7 dhankar dhankar 4.0K May 22  2020 askpass
drwxr-xr-x  8 dhankar dhankar 4.0K May 22  2020 packrat
drwxr-xr-x  6 dhankar dhankar 4.0K May 24  2020 hms
drwxr-xr-x  8 dhankar dhankar 4.0K May 24  2020 clipr
drwxr-xr-x 10 dhankar dhankar 4.0K May 24  2020 readr
drwxr-xr-x  7 dhankar dhankar 4.0K May 29  2020 corrplot
drwxr-xr-x 14 dhankar dhankar 4.0K May 30  2020 RCurl
drwxr-xr-x  8 dhankar dhankar 4.0K May 30  2020 openssl
drwxr-xr-x  9 dhankar dhankar 4.0K May 30  2020 rsconnect
drwxr-xr-x 87 dhankar dhankar 4.0K May 30  2020 .
drwxr-xr-x  5 dhankar dhankar 4.0K Nov 10 19:39 ..
(base) dhankar@dhankar-1:~/.../3.4$ 

```

#
<br>


```bash
$ cd /home/dhankar/R/x86_64-pc-linux-gnu-library/4.2/
(base) dhankar@dhankar-1:~/.../4.2$ 
(base) dhankar@dhankar-1:~/.../4.2$ ls -lahtr
total 172K
drwxr-xr-x  5 dhankar dhankar 4.0K Nov 10 19:39 ..
drwxrwxr-x  7 dhankar dhankar 4.0K Nov 10 21:57 base64enc
drwxrwxr-x 11 dhankar dhankar 4.0K Nov 10 21:57 digest
drwxrwxr-x  6 dhankar dhankar 4.0K Nov 10 21:58 evaluate
drwxrwxr-x  8 dhankar dhankar 4.0K Nov 10 21:58 glue
drwxrwxr-x  9 dhankar dhankar 4.0K Nov 10 21:58 xfun
drwxrwxr-x  7 dhankar dhankar 4.0K Nov 10 21:58 highr
drwxrwxr-x  7 dhankar dhankar 4.0K Nov 10 21:58 rlang
drwxrwxr-x  7 dhankar dhankar 4.0K Nov 10 21:58 fastmap
drwxrwxr-x  7 dhankar dhankar 4.0K Nov 10 21:58 htmltools
drwxrwxr-x  8 dhankar dhankar 4.0K Nov 10 21:58 jsonlite
drwxrwxr-x  8 dhankar dhankar 4.0K Nov 10 21:58 magrittr
drwxrwxr-x  8 dhankar dhankar 4.0K Nov 10 21:59 stringi
drwxrwxr-x  9 dhankar dhankar 4.0K Nov 10 21:59 stringr
drwxrwxr-x  8 dhankar dhankar 4.0K Nov 10 21:59 yaml
drwxrwxr-x 14 dhankar dhankar 4.0K Nov 10 21:59 knitr
drwxrwxr-x  7 dhankar dhankar 4.0K Nov 10 21:59 commonmark
drwxrwxr-x  7 dhankar dhankar 4.0K Nov 10 21:59 mime
drwxrwxr-x  9 dhankar dhankar 4.0K Nov 10 21:59 markdown
drwxrwxr-x  8 dhankar dhankar 4.0K Nov 10 22:00 fs
drwxrwxr-x  6 dhankar dhankar 4.0K Nov 10 22:00 R6
drwxrwxr-x  7 dhankar dhankar 4.0K Nov 10 22:00 rappdirs
drwxrwxr-x  7 dhankar dhankar 4.0K Nov 10 22:00 cachem
drwxrwxr-x 13 dhankar dhankar 4.0K Nov 10 22:01 sass
drwxrwxr-x  6 dhankar dhankar 4.0K Nov 10 22:01 memoise
drwxrwxr-x 16 dhankar dhankar 4.0K Nov 10 22:01 bslib
drwxrwxr-x  7 dhankar dhankar 4.0K Nov 10 22:01 jquerylib
drwxrwxr-x  6 dhankar dhankar 4.0K Nov 10 22:01 tinytex
drwxrwxr-x 10 dhankar dhankar 4.0K Nov 10 22:01 rmarkdown
drwxrwxr-x 16 dhankar dhankar 4.0K Nov 10 22:04 Rcpp
drwxrwxr-x 11 dhankar dhankar 4.0K Nov 10 22:04 cli
drwxrwxr-x  8 dhankar dhankar 4.0K Nov 10 22:04 xtable
drwxrwxr-x  8 dhankar dhankar 4.0K Nov 10 22:04 fontawesome
drwxrwxr-x  8 dhankar dhankar 4.0K Nov 10 22:04 sourcetools
drwxrwxr-x  6 dhankar dhankar 4.0K Nov 10 22:04 crayon
drwxrwxr-x  7 dhankar dhankar 4.0K Nov 10 22:04 withr
drwxrwxr-x  7 dhankar dhankar 4.0K Nov 10 22:04 ellipsis
drwxrwxr-x  9 dhankar dhankar 4.0K Nov 10 22:04 later
drwxrwxr-x  7 dhankar dhankar 4.0K Nov 10 22:04 lifecycle
drwxrwxr-x  8 dhankar dhankar 4.0K Nov 10 22:04 promises
drwxrwxr-x  8 dhankar dhankar 4.0K Nov 10 22:05 httpuv
drwxrwxr-x 11 dhankar dhankar 4.0K Nov 10 22:06 shiny
drwxrwxr-x 43 dhankar dhankar 4.0K Nov 10 22:06 .
(base) dhankar@dhankar-1:~/.../4.2$ 

```
#
<br>

##### Installed  - RStudio and R on Personal - Ubuntu 18 

- R version 4.2.2 (2022-10-31) -- "Innocent and Trusting"

#
<br>

```bash
(base) dhankar@dhankar-1:~/.../RStudio_Nov22$ ls
git_up  init_INSTALL_SETUP_1.md  rstudio-2022.07.2-576-amd64.deb

(base) dhankar@dhankar-1:~/.../RStudio_Nov22$ sudo dpkg -i rstudio-2022.07.2-576-amd64.deb 
[sudo] password for dhankar: 
(Reading database ... 973481 files and directories currently installed.)
Preparing to unpack rstudio-2022.07.2-576-amd64.deb ...
Unpacking rstudio (2022.07.2+576) over (1.2.5042) ...
Setting up rstudio (2022.07.2+576) ...
Processing triggers for gnome-menus (3.13.3-11ubuntu1.1) ...
Processing triggers for desktop-file-utils (0.23-1ubuntu3.18.04.2) ...
Processing triggers for mime-support (3.60ubuntu1) ...
Processing triggers for hicolor-icon-theme (0.17-2) ...
Processing triggers for shared-mime-info (1.9-2) ...

```
#
<br>

```bash
(base) dhankar@dhankar-1:~/.../RStudio_Nov22$ R --version
R version 4.2.2 (2022-10-31) -- "Innocent and Trusting"
Copyright (C) 2022 The R Foundation for Statistical Computing
Platform: x86_64-pc-linux-gnu (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under the terms of the
GNU General Public License versions 2 or 3.
For more information about these matters see
https://www.gnu.org/licenses/.

#
#
(base) dhankar@dhankar-1:~/.../RStudio_Nov22$ R

R version 4.2.2 (2022-10-31) -- "Innocent and Trusting"
Copyright (C) 2022 The R Foundation for Statistical Computing
Platform: x86_64-pc-linux-gnu (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

>
```



#
<br>

##### Installing / Updating - RStudio and R on Personal - Ubuntu 18 

- https://cran.rstudio.com/
- https://cran.r-project.org/bin/linux/ubuntu/fullREADME.html


```bash
# update indices
sudo apt update -qq
# install two helper packages we need
sudo apt install --no-install-recommends software-properties-common dirmngr
# add the signing key (by Michael Rutter) for these repos
# To verify key, run gpg --show-keys /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc 
# Fingerprint: E298A3A825C0D65DFD57CBB651716619E084DAB9
wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | sudo tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
# add the R 4.0 repo from CRAN -- adjust 'focal' to 'groovy' or 'bionic' as needed
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran40/"
#deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran40/
sudo apt-get update
sudo apt-get install r-base

```

```bash

$ sudo apt-get install r-base
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following packages were automatically installed and are no longer required:
  libappindicator1 libindicator7 linux-hwe-5.4-headers-5.4.0-100 linux-hwe-5.4-headers-5.4.0-104 linux-hwe-5.4-headers-5.4.0-105
  linux-hwe-5.4-headers-5.4.0-107 linux-hwe-5.4-headers-5.4.0-109 linux-hwe-5.4-headers-5.4.0-110 linux-hwe-5.4-headers-5.4.0-126
  linux-hwe-5.4-headers-5.4.0-47 linux-hwe-5.4-headers-5.4.0-48 linux-hwe-5.4-headers-5.4.0-51 linux-hwe-5.4-headers-5.4.0-52
  linux-hwe-5.4-headers-5.4.0-58 linux-hwe-5.4-headers-5.4.0-60 linux-hwe-5.4-headers-5.4.0-62 linux-hwe-5.4-headers-5.4.0-65
  linux-hwe-5.4-headers-5.4.0-66 linux-hwe-5.4-headers-5.4.0-67 linux-hwe-5.4-headers-5.4.0-70 linux-hwe-5.4-headers-5.4.0-72
  linux-hwe-5.4-headers-5.4.0-73 linux-hwe-5.4-headers-5.4.0-74 linux-hwe-5.4-headers-5.4.0-77 linux-hwe-5.4-headers-5.4.0-80
  linux-hwe-5.4-headers-5.4.0-81 linux-hwe-5.4-headers-5.4.0-84 linux-hwe-5.4-headers-5.4.0-86 linux-hwe-5.4-headers-5.4.0-87
  linux-hwe-5.4-headers-5.4.0-89 linux-hwe-5.4-headers-5.4.0-90 linux-hwe-5.4-headers-5.4.0-91 linux-hwe-5.4-headers-5.4.0-92
  linux-hwe-5.4-headers-5.4.0-94 linux-hwe-5.4-headers-5.4.0-96 linux-hwe-5.4-headers-5.4.0-97 linux-hwe-5.4-headers-5.4.0-99
Use 'sudo apt autoremove' to remove them.
The following additional packages will be installed:
  r-base-core r-recommended
Suggested packages:
  elpa-ess r-doc-info | r-doc-pdf r-mathlib
The following packages will be upgraded:
  r-base r-base-core r-recommended
3 upgraded, 0 newly installed, 0 to remove and 225 not upgraded.
Need to get 26.2 MB of archives.
After this operation, 1,386 kB of additional disk space will be used.
Do you want to continue? [Y/n] 
After this operation, 1,386 kB of additional disk space will be used.
Do you want to continue? [Y/n] y
Get:1 https://cloud.r-project.org/bin/linux/ubuntu bionic-cran40/ r-base-core 4.2.2-1.1804.0 [26.1 MB]
Get:2 https://cloud.r-project.org/bin/linux/ubuntu bionic-cran40/ r-base 4.2.2-1.1804.0 [45.2 kB]
Get:3 https://cloud.r-project.org/bin/linux/ubuntu bionic-cran40/ r-recommended 4.2.2-1.1804.0 [2,780 B]
Fetched 26.2 MB in 3s (9,798 kB/s)        
(Reading database ... 973289 files and directories currently installed.)
Preparing to unpack .../r-base-core_4.2.2-1.1804.0_amd64.deb ...
Unpacking r-base-core (4.2.2-1.1804.0) over (4.1.0-1.1804.0) ...
Preparing to unpack .../r-base_4.2.2-1.1804.0_all.deb ...
Unpacking r-base (4.2.2-1.1804.0) over (4.1.0-1.1804.0) ...
Preparing to unpack .../r-recommended_4.2.2-1.1804.0_all.deb ...
Unpacking r-recommended (4.2.2-1.1804.0) over (4.1.0-1.1804.0) ...
Setting up r-base-core (4.2.2-1.1804.0) ...
Installing new version of config file /etc/R/Makeconf ...
Installing new version of config file /etc/R/Renviron.site ...
Replacing config file /etc/R/Renviron with new version
Setting up r-recommended (4.2.2-1.1804.0) ...
Setting up r-base (4.2.2-1.1804.0) ...
Processing triggers for gnome-menus (3.13.3-11ubuntu1.1) ...
Processing triggers for hicolor-icon-theme (0.17-2) ...
Processing triggers for tex-common (6.09) ...
Running mktexlsr. This may take some time... done.
Processing triggers for mime-support (3.60ubuntu1) ...
Processing triggers for desktop-file-utils (0.23-1ubuntu3.18.04.2) ...
Processing triggers for install-info (6.5.0.dfsg.1-2) ...
Processing triggers for man-db (2.8.3-2ubuntu0.1) ...
(base) dhankar@dhankar-1:~/.../RStudio_Nov22$ 
#
#Users who need to compile R packages from source [e.g. package maintainers, or anyone installing packages with install.packages()] should also install the r-base-dev package:
sudo apt-get install r-base-dev
#
#
The following additional packages will be installed:
  libpcre2-16-0 libpcre2-32-0 libpcre2-dev libpcre2-posix0
Suggested packages:
  texlive-fonts-extra texlive-extra-utils texinfo
The following NEW packages will be installed:
  libpcre2-16-0 libpcre2-32-0 libpcre2-dev libpcre2-posix0
The following packages will be upgraded:
  r-base-dev
1 upgraded, 4 newly installed, 0 to remove and 224 not upgraded.
Need to get 966 kB of archives.
After this operation, 3,343 kB of additional disk space will be used.
Do you want to continue? [Y/n] 


```

#
<br>



```bash
(base) dhankar@dhankar-1:~/.../RStudio_Nov22$ # install two helper packages we need
(base) dhankar@dhankar-1:~/.../RStudio_Nov22$ sudo apt install --no-install-recommends software-properties-common dirmngr
[sudo] password for dhankar: 
Reading package lists... Done
Building dependency tree       
Reading state information... Done
dirmngr is already the newest version (2.2.4-1ubuntu1.6).
The following packages were automatically installed and are no longer required:
  libappindicator1 libindicator7 linux-hwe-5.4-headers-5.4.0-100 linux-hwe-5.4-headers-5.4.0-104 linux-hwe-5.4-headers-5.4.0-105
  linux-hwe-5.4-headers-5.4.0-107 linux-hwe-5.4-headers-5.4.0-109 linux-hwe-5.4-headers-5.4.0-110 linux-hwe-5.4-headers-5.4.0-126
  linux-hwe-5.4-headers-5.4.0-47 linux-hwe-5.4-headers-5.4.0-48 linux-hwe-5.4-headers-5.4.0-51 linux-hwe-5.4-headers-5.4.0-52
  linux-hwe-5.4-headers-5.4.0-58 linux-hwe-5.4-headers-5.4.0-60 linux-hwe-5.4-headers-5.4.0-62 linux-hwe-5.4-headers-5.4.0-65
  linux-hwe-5.4-headers-5.4.0-66 linux-hwe-5.4-headers-5.4.0-67 linux-hwe-5.4-headers-5.4.0-70 linux-hwe-5.4-headers-5.4.0-72
  linux-hwe-5.4-headers-5.4.0-73 linux-hwe-5.4-headers-5.4.0-74 linux-hwe-5.4-headers-5.4.0-77 linux-hwe-5.4-headers-5.4.0-80
  linux-hwe-5.4-headers-5.4.0-81 linux-hwe-5.4-headers-5.4.0-84 linux-hwe-5.4-headers-5.4.0-86 linux-hwe-5.4-headers-5.4.0-87
  linux-hwe-5.4-headers-5.4.0-89 linux-hwe-5.4-headers-5.4.0-90 linux-hwe-5.4-headers-5.4.0-91 linux-hwe-5.4-headers-5.4.0-92
  linux-hwe-5.4-headers-5.4.0-94 linux-hwe-5.4-headers-5.4.0-96 linux-hwe-5.4-headers-5.4.0-97 linux-hwe-5.4-headers-5.4.0-99
Use 'sudo apt autoremove' to remove them.
The following additional packages will be installed:
  python3-software-properties software-properties-gtk
The following packages will be upgraded:
  python3-software-properties software-properties-common software-properties-gtk
3 upgraded, 0 newly installed, 0 to remove and 228 not upgraded.
Need to get 98.7 kB of archives.
After this operation, 14.3 kB of additional disk space will be used.
Do you want to continue? [Y/n] y
Get:1 http://in.archive.ubuntu.com/ubuntu bionic-updates/main amd64 software-properties-common all 0.96.24.32.18 [10.1 kB]
Get:2 http://in.archive.ubuntu.com/ubuntu bionic-updates/main amd64 software-properties-gtk all 0.96.24.32.18 [64.9 kB]
Get:3 http://in.archive.ubuntu.com/ubuntu bionic-updates/main amd64 python3-software-properties all 0.96.24.32.18 [23.8 kB]
Fetched 98.7 kB in 1s (121 kB/s)                      
(Reading database ... 973289 files and directories currently installed.)
Preparing to unpack .../software-properties-common_0.96.24.32.18_all.deb ...
Unpacking software-properties-common (0.96.24.32.18) over (0.96.24.32.14) ...
Preparing to unpack .../software-properties-gtk_0.96.24.32.18_all.deb ...
Unpacking software-properties-gtk (0.96.24.32.18) over (0.96.24.32.14) ...
Preparing to unpack .../python3-software-properties_0.96.24.32.18_all.deb ...
Unpacking python3-software-properties (0.96.24.32.18) over (0.96.24.32.14) ...
Setting up python3-software-properties (0.96.24.32.18) ...
Setting up software-properties-common (0.96.24.32.18) ...
Setting up software-properties-gtk (0.96.24.32.18) ...
Processing triggers for shared-mime-info (1.9-2) ...
Processing triggers for gnome-menus (3.13.3-11ubuntu1.1) ...
Processing triggers for dbus (1.12.2-1ubuntu1.4) ...
Processing triggers for hicolor-icon-theme (0.17-2) ...
Processing triggers for mime-support (3.60ubuntu1) ...
Processing triggers for desktop-file-utils (0.23-1ubuntu3.18.04.2) ...
Processing triggers for libglib2.0-0:amd64 (2.56.4-0ubuntu0.18.04.9) ...
Processing triggers for libglib2.0-0:i386 (2.56.4-0ubuntu0.18.04.9) ...
Processing triggers for man-db (2.8.3-2ubuntu0.1) ...
(base) dhankar@dhankar-1:~/.../RStudio_Nov22$ 

```



```bash

$ 
(base) dhankar@dhankar-1:~/.../RStudio_Nov22$ sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran40/"
Get:1 file:/var/cuda-repo-10-2-local-10.2.89-440.33.01  InRelease
Ign:1 file:/var/cuda-repo-10-2-local-10.2.89-440.33.01  InRelease                         
Get:2 file:/var/cuda-repo-ubuntu1804-11-0-local  InRelease                                
Ign:2 file:/var/cuda-repo-ubuntu1804-11-0-local  InRelease              
Get:3 file:/var/cuda-repo-10-2-local-10.2.89-440.33.01  Release [574 B] 
Get:4 file:/var/cuda-repo-ubuntu1804-11-0-local  Release [564 B]        
Get:3 file:/var/cuda-repo-10-2-local-10.2.89-440.33.01  Release [574 B] 
Get:4 file:/var/cuda-repo-ubuntu1804-11-0-local  Release [564 B]                                 
Hit:6 https://download.docker.com/linux/ubuntu bionic InRelease                                                                              
Hit:7 https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64  InRelease                                                  
Ign:8 https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 InRelease                                                                   
Ign:9 http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 InRelease                                                                    
Hit:11 https://dl.winehq.org/wine-builds/ubuntu bionic InRelease                                                                             
Get:12 http://dl.google.com/linux/chrome/deb stable InRelease [1,811 B]                                                                      
Ign:13 https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.4 InRelease                                                                  
Hit:14 http://ppa.launchpad.net/alexlarsson/flatpak/ubuntu bionic InRelease                                                                  
Hit:15 http://packages.microsoft.com/repos/code stable InRelease                                                                             
Hit:16 http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 Release                                                                     
Hit:17 http://in.archive.ubuntu.com/ubuntu bionic InRelease                                                                                  
Ign:18 http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64  InRelease                                      
Hit:19 http://security.ubuntu.com/ubuntu bionic-security InRelease                                                                           
Err:12 http://dl.google.com/linux/chrome/deb stable InRelease                                                                                
  The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 4EB27DB2A3B88B8B
Hit:20 https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 Release                                                                    
Hit:21 http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64  Release                                        
Hit:22 http://ppa.launchpad.net/apandada1/brightness-controller/ubuntu bionic InRelease                                                      
Hit:24 http://in.archive.ubuntu.com/ubuntu bionic-updates InRelease                                                                          
Ign:25 https://kx.studio/repo stable InRelease                                                                                               
Hit:26 http://ppa.launchpad.net/cybermax-dexter/sdl2-backport/ubuntu bionic InRelease                                                        
Hit:28 https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.4 Release                                                                    
Hit:30 https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/bionic pgadmin4 InRelease                                                         
Get:31 http://in.archive.ubuntu.com/ubuntu bionic-backports InRelease [83.3 kB]                                                              
Hit:32 https://cloud.r-project.org/bin/linux/ubuntu bionic-cran40/ InRelease                                                                 
Ign:33 https://kx.studio/repo gcc5 InRelease                                                                                                 
Hit:35 http://ppa.launchpad.net/kxstudio-debian/libs/ubuntu bionic InRelease                                                                 
Ign:36 https://cloud.r-project.org/bin/linux/ubuntu -cran40/ InRelease                                                                       
Hit:38 https://kx.studio/repo stable Release                                                                                                 
Get:39 https://repo.skype.com/deb stable InRelease [4,501 B]                                                                                 
Hit:40 https://repo.fortinet.com/repo/ubuntu /bionic InRelease                                                                               
Hit:41 https://kx.studio/repo gcc5 Release                                                                                                   
Err:42 https://cloud.r-project.org/bin/linux/ubuntu -cran40/ Release                                                                         
  404  Not Found [IP: 54.192.171.100 443]
Hit:45 http://ppa.launchpad.net/kxstudio-debian/plugins/ubuntu bionic InRelease                                                              
Get:44 http://packages.ros.org/ros/ubuntu bionic InRelease [4,680 B]                                                                         
Hit:48 http://ppa.launchpad.net/kxstudio-debian/apps/ubuntu bionic InRelease                                                                 
Get:47 https://deb.torproject.org/torproject.org bionic InRelease [3,524 B]                                                  
Hit:50 http://ppa.launchpad.net/kxstudio-debian/kxstudio/ubuntu bionic InRelease                                             
Hit:52 http://ppa.launchpad.net/mixxx/mixxx/ubuntu bionic InRelease                                    
Hit:53 https://packages.microsoft.com/repos/ms-teams stable InRelease                                                                  
Hit:54 http://ppa.launchpad.net/ubuntugis/ubuntugis-unstable/ubuntu bionic InRelease                                                   
Get:43 http://ppa.launchpad.net/kxstudio-debian/music/ubuntu bionic InRelease [15.4 kB]              
Err:39 https://repo.skype.com/deb stable InRelease                                                                 
  The following signatures were invalid: EXPKEYSIG 1F3045A5DF7587C3 Skype Linux Client Repository <se-um@microsoft.com>
Hit:29 https://scala.jfrog.io/artifactory/debian all InRelease             
Err:44 http://packages.ros.org/ros/ubuntu bionic InRelease
  The following signatures were invalid: EXPKEYSIG F42ED6FBAB17C654 Open Robotics <info@osrfoundation.org>
Ign:37 https://scala.jfrog.io/artifactory/debian  InRelease
Err:47 https://deb.torproject.org/torproject.org bionic InRelease                                                                            
  The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 74A941BA219EC810
Hit:51 https://packagecloud.io/slacktechnologies/slack/debian jessie InRelease                                                               
Get:23 https://ubuntugis.qgis.org/ubuntugis bionic InRelease [3,673 B]                                                                       
Err:23 https://ubuntugis.qgis.org/ubuntugis bionic InRelease                                                                                 
  The following signatures couldn't be verified because the public key is not available: NO_PUBKEY D155B8E6A419C5BE
Get:27 https://ubuntu.qgis.org/ubuntu bionic InRelease [3,673 B]                                                                             
Err:27 https://ubuntu.qgis.org/ubuntu bionic InRelease                                                                                       
  The following signatures couldn't be verified because the public key is not available: NO_PUBKEY D155B8E6A419C5BE
Hit:58 https://scala.jfrog.io/artifactory/debian  Release                                                                                    
Reading package lists... Done                                                                                                                
W: Target Packages (stable/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list:61 and /etc/apt/sources.list.d/docker.list:1
W: Target Packages (stable/binary-all/Packages) is configured multiple times in /etc/apt/sources.list:61 and /etc/apt/sources.list.d/docker.list:1
W: Target Translations (stable/i18n/Translation-en_IN) is configured multiple times in /etc/apt/sources.list:61 and /etc/apt/sources.list.d/docker.list:1
W: Target Translations (stable/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list:61 and /etc/apt/sources.list.d/docker.list:1
W: Target DEP-11 (stable/dep11/Components-amd64.yml) is configured multiple times in /etc/apt/sources.list:61 and /etc/apt/sources.list.d/docker.list:1
W: Target DEP-11 (stable/dep11/Components-all.yml) is configured multiple times in /etc/apt/sources.list:61 and /etc/apt/sources.list.d/docker.list:1
W: Target DEP-11-icons-small (stable/dep11/icons-48x48.tar) is configured multiple times in /etc/apt/sources.list:61 and /etc/apt/sources.list.d/docker.list:1
W: Target DEP-11-icons (stable/dep11/icons-64x64.tar) is configured multiple times in /etc/apt/sources.list:61 and /etc/apt/sources.list.d/docker.list:1
W: Target CNF (stable/cnf/Commands-amd64) is configured multiple times in /etc/apt/sources.list:61 and /etc/apt/sources.list.d/docker.list:1
W: Target CNF (stable/cnf/Commands-all) is configured multiple times in /etc/apt/sources.list:61 and /etc/apt/sources.list.d/docker.list:1
W: Target Packages (Packages) is configured multiple times in /etc/apt/sources.list:78 and /etc/apt/sources.list.d/cuda-ubuntu1804-x86_64.list:1
W: Target Translations (en_IN) is configured multiple times in /etc/apt/sources.list:78 and /etc/apt/sources.list.d/cuda-ubuntu1804-x86_64.list:1
W: Target Translations (en) is configured multiple times in /etc/apt/sources.list:78 and /etc/apt/sources.list.d/cuda-ubuntu1804-x86_64.list:1
W: An error occurred during the signature verification. The repository is not updated and the previous index files will be used. GPG error: http://dl.google.com/linux/chrome/deb stable InRelease: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 4EB27DB2A3B88B8B
E: The repository 'https://cloud.r-project.org/bin/linux/ubuntu -cran40/ Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
W: An error occurred during the signature verification. The repository is not updated and the previous index files will be used. GPG error: https://repo.skype.com/deb stable InRelease: The following signatures were invalid: EXPKEYSIG 1F3045A5DF7587C3 Skype Linux Client Repository <se-um@microsoft.com>
W: An error occurred during the signature verification. The repository is not updated and the previous index files will be used. GPG error: http://packages.ros.org/ros/ubuntu bionic InRelease: The following signatures were invalid: EXPKEYSIG F42ED6FBAB17C654 Open Robotics <info@osrfoundation.org>
W: GPG error: https://deb.torproject.org/torproject.org bionic InRelease: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 74A941BA219EC810
E: The repository 'https://deb.torproject.org/torproject.org bionic InRelease' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
E: Repository 'http://ppa.launchpad.net/kxstudio-debian/music/ubuntu bionic InRelease' changed its 'Label' value from 'Music' to 'Deprecated'
N: This must be accepted explicitly before updates for this repository can be applied. See apt-secure(8) manpage for details.
W: An error occurred during the signature verification. The repository is not updated and the previous index files will be used. GPG error: https://ubuntugis.qgis.org/ubuntugis bionic InRelease: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY D155B8E6A419C5BE
W: An error occurred during the signature verification. The repository is not updated and the previous index files will be used. GPG error: https://ubuntu.qgis.org/ubuntu bionic InRelease: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY D155B8E6A419C5BE
W: Target Packages (stable/binary-amd64/Packages) is configured multiple times in /etc/apt/sources.list:61 and /etc/apt/sources.list.d/docker.list:1
W: Target Packages (stable/binary-all/Packages) is configured multiple times in /etc/apt/sources.list:61 and /etc/apt/sources.list.d/docker.list:1
W: Target Translations (stable/i18n/Translation-en_IN) is configured multiple times in /etc/apt/sources.list:61 and /etc/apt/sources.list.d/docker.list:1
W: Target Translations (stable/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list:61 and /etc/apt/sources.list.d/docker.list:1
W: Target DEP-11 (stable/dep11/Components-amd64.yml) is configured multiple times in /etc/apt/sources.list:61 and /etc/apt/sources.list.d/docker.list:1
W: Target DEP-11 (stable/dep11/Components-all.yml) is configured multiple times in /etc/apt/sources.list:61 and /etc/apt/sources.list.d/docker.list:1
W: Target DEP-11-icons-small (stable/dep11/icons-48x48.tar) is configured multiple times in /etc/apt/sources.list:61 and /etc/apt/sources.list.d/docker.list:1
W: Target DEP-11-icons (stable/dep11/icons-64x64.tar) is configured multiple times in /etc/apt/sources.list:61 and /etc/apt/sources.list.d/docker.list:1
W: Target CNF (stable/cnf/Commands-amd64) is configured multiple times in /etc/apt/sources.list:61 and /etc/apt/sources.list.d/docker.list:1
W: Target CNF (stable/cnf/Commands-all) is configured multiple times in /etc/apt/sources.list:61 and /etc/apt/sources.list.d/docker.list:1
W: Target Packages (Packages) is configured multiple times in /etc/apt/sources.list:78 and /etc/apt/sources.list.d/cuda-ubuntu1804-x86_64.list:1
W: Target Translations (en_IN) is configured multiple times in /etc/apt/sources.list:78 and /etc/apt/sources.list.d/cuda-ubuntu1804-x86_64.list:1
W: Target Translations (en) is configured multiple times in /etc/apt/sources.list:78 and /etc/apt/sources.list.d/cuda-ubuntu1804-x86_64.list:1
(base) dhankar@dhankar-1:~/.../RStudio_Nov22$ 
(base) dhankar@dhankar-1:~/.../RStudio_Nov22$ 

```
