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

## Optional: connect your RStudio username to GitHub
Follow these instructions and contact Sep. This will allow you to import repositories (including this one) directly into RStudio from GitHub.

## Log into R-studio
https://rstudio-kite.gilead.com/

## R 4.0.2
Look in upper right hand corner of RStudio Pro, it will show you which version of R you are using. Switch to version 4.0.2 if possible for your project.

## Upload this repository into a new project
To create a new project, click on the pull down in upper right corner, and click 'New Project'. 
If your RStudio account is linked to GitHub, chose "Version Control" option. Click "Git", then copy and paste git@github.com:nwheatleKite/test_rstudio_reticulate.git into "Repository URL", and "give it a "Project Direcotry Name" is test_rstudio_reticulate. Do not provide a subdirecotry, and make sure the R-version is 4.0.2.

If your choose "New Directory", then select "New Project" - give a directory name, do not provide a subdirectory, and make sure the R-version is 4.0.2. You will have to upload the files 'manually' into the directory in RStudio.

## Run install_packages.R 
this installs both plumber and reticulate.

## Test plumber_test.R
Open plumber_test.R. In upper right hand corner of plumber_test.R, click "Run API". A Swagger API tester will popup. Test out the API to see if it is working. 

Click on GET/echo, click 'Try it out', then enter any text, then press 'Execute'. Your text should be echo'd back to you in the Response Body. 

Then Click on GET/plot, click 'Try it out', then enter 'setosa' into the spec Parameter, and press Execute. A Plot should be shown in the Response Body. 


## Create python virtual environnment : Very important
Open python_venv.R


## Test reticulate_test.R
