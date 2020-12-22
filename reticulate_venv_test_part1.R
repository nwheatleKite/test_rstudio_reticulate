library('reticulate')

#the purpose of this script is to:
  ## make sure you are using the correct python path
  ## create your python virtual environment 
  ## write .Rprofile to automatically set RETICULATE_PYTHON gobal variable in your project

#before you connect to a virutal environemnt
#make sure the system python is in the /opt/ folder. NOT in usr/ folder.

if (Sys.which('python')[[1]] == "/opt/python/3.7.7/bin/python" ) {
  print('Congrats, you are using the correct python')
} else {
  print('oops, let us try to fix it')
  reticulate::use_python('/opt/python/3.7.7/bin')
  if (Sys.which('python')[[1]] == "/opt/python/3.7.7/bin/python" ) {
    print('Congrats, now you are using the correct python')
  } else {
    print('something is wrong! Ask for help.')
  }
}
## In the terminal, upgrade pip
#$ pip install --upgrade pip

## create a python virtual environment
## chose your virtual env name
venv_name <- "myvenv"

reticulate::virtualenv_create(
  envname = venv_name, 
  python='/opt/python/3.7.7/bin/python', 
  packages = c("numpy"), 
  system_site_packages =  getOption("reticulate.virtualenv.system_site_packages",
            default = FALSE)
  )

venv_path <- paste0('~/.virtualenvs/', venv_name)
print(paste('the path to virtual environment should be here: ', venv_path))

#activate the virtual environment
reticulate::use_virtualenv(virtualenv = venv_path, required=TRUE)

#this should be the path to your virtual environment's python bin
venv_python_path = paste0('~/.virtualenvs/', venv_name, "/bin/python3")


#now, lets set the RETICULATE_PYTHON path to your venv
if (Sys.getenv('RETICULATE_PYTHON') != venv_python_path) {
  cat('Time to change python path to the python link in your venv\n')
  cat('Open file .Rprofile\n')
  cat('Peplace the text with this following line: \n')
  cat(paste0("Sys.setenv('RETICULATE_PYTHON' = \"", venv_python_path, '")\n'))
  cat('..and save it!\n')
  
} else {
  print(paste(Sys.getenv('RETICULATE_PYTHON'), "is correct"))
}

# Now, RESTART your session by pressing the red quit button
# When session restarts, it should properly read and execute the .Rprofile commands.
# After, repoen project and continue to part2




