---
title: "README.md"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Test RStudio/RConnect: Deploy Plumber API calling python
This repository was created to develope a standard test project that users will deploy to RConnect to ensure that their python virutal environments, file paths, python paths, and reticulate are working in sync.

This functions and both a guideline for setting up a Plumber+Python projects, and as a test to troubleshoot.

#### Log into R-studio
https://rstudio-kite.gilead.com/

Need an RStudio username? link

#### Recommended: Connect your RStudio username to GitHub
This will allow you to import repositories (including this one) directly into RStudio from GitHub. 

Instructions: link



#### R 4.0.2
Look in upper right hand corner of RStudio Pro, it will show you which version of R you are using. Switch to version 4.0.2 if possible for your project.

#### Upload this repository into a new project
To create a new project, click on the project pull down in upper right corner, and click 'New Project'. 
If your RStudio account is linked to GitHub, chose "Version Control" option. Click "Git", then copy and paste git@github.com:nwheatleKite/test_rstudio_reticulate.git into "Repository URL", and "give it a "Project Direcotry Name" is test_reticulate. Do not provide a subdirecotry, and make sure the R-version is 4.0.2.

If your selected "New Directory", then select "New Project" - give a directory name "test_reticulate", do not provide a subdirectory, and make sure the R-version is 4.0.2. You will have to upload the files 'manually' into the directory in RStudio.

#### Run install_packages.R 
This installs plumber and reticulate.

#### Test plumber_test.R
Open plumber_test.R. In upper right hand corner of plumber_test.R, click "Run API". A Swagger API tester will popup. Test out the API to see if it is working. 

Click on GET/echo, click 'Try it out', then enter any text, then press 'Execute'. Your text should be echo'd back to you in the Response Body. 

Then Click on GET/plot, click 'Try it out', then enter 'setosa' into the spec Parameter, and press Execute. A Plot should be shown in the Response Body. 


## Setup python virutal environment, global variables and Reticulate
Follow directions as described the following three R scripts

1) *reticulate_venv_test_part1.py*
    * set PYTHON path
    * set RETICULATE_PYTHON variable
    * create virtual env
    * edit .Rprofile
2) *reticulate_venv_test_part2.py*
    * quit R session, and re-enter project to refresh
    * ensure RETICULATE_PYTHON is still correct
    * activate virtual env
    * upgrade pip in terminal
    * install your favorite packages. (pandas required for these tests)
3) *reticulate_venv_test_part3.py*
    * import python modules
    * run python code in RStudio


## Integrate python into R plumber API

