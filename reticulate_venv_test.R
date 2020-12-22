library('reticulate')

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
reticulate::use_virtualenv(virtualenv = venv_path, required=TRUE)

#install pandas, will take a few moments
reticulate::py_install(
  c('pandas'),
  envname = venv_name,
  method="virtualenv",
  pip=TRUE
  )
Sys.getenv('RETICULATE_PYTHON')
Sys.getenv('RETICULATE_PYTHON' = '/home/nwheatley/.virtualenvs/venv_psca/bin/python')
