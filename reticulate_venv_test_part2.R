library('reticulate')

#the purpose of this script is to:
  #make sure .Rprofile was properly configured with RETICULATE_PYTHON path
    #by restarting R session, and seeing if RETICULATE_PYTHON is still properly set
  #upgrade pip in your virutal env in the terminal (i.e. NOT R console)
  #install python packages in python virtualenv

#copy and paste *your specific* venv_python_path from part1!
venv_name <- "myvenv"
venv_python_path <- paste0('~/.virtualenvs/', venv_name, "/bin/python3")


if (Sys.getenv('RETICULATE_PYTHON') == venv_python_path) {
  cat('Congrats! Your .Rprofile file is properly setting the RETICULATE_PYTHON variable')
} else {
  cat('Make sure you are using appropriate venv_name and venv_python_path and that you properly set up the .Rprofile file from part1')
}

#upgrade pip in the TERMINAL
#can't figure out how to do it using reticulate

#first activate the venv in the terminal
activate_command = paste0('source ~/.virtualenvs/', venv_name,"/bin/activate")
print('copy paste the activate command into terminal to activate the virtual environment')
cat(activate_command)
print('Then, upgrade pip by running the pip_upgrade_command')
pip_upgrade_command = "pip install --upgrade pip"
cat(pip_upgrade_command)


#now, install packages you want to use in your project
reticulate::py_install(
  c('prettyprinter', 'pandas', 'scikit-learn'),
  envname = venv_name,
  method="virtualenv",
  conda= FALSE,
  pip=TRUE,
)


