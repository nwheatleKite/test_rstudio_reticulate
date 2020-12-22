import pandas as pd

def get_random_df():
  #test if pandas import works
  d = {'col1': [1,2,3], 'col2': ['a','b','c']}
  df = pd.DataFrame(data=d)
  return df
