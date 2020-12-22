library('reticulate')

#the purpose of this script is to:
  #use reticulate to call python functions in RStudio

#activate the virtual environment
venv_name <- "myvenv"
venv_path <- paste0('~/.virtualenvs/', venv_name)
reticulate::use_virtualenv(virtualenv = venv_path, required=TRUE)


#import function from "./add_two_numbers.py"
reticulate::source_python('add_two_numbers.py')
summed <- add_two_numbers(2,5)
print(paste('Sum of numbers =', summed))


#import function from subfolder, import module that requires pandas import
reticulate::source_python('python/pandas_dataframe.py')
df <- get_random_df()
print(df)

#import module that imports another python module
reticulate::source_python('python/two_dataframes.py')
list_two_dfs <- get_list_dfs()
print(list_two_dfs)

