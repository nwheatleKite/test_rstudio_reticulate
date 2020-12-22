import pandas_dataframe as pd_df

get_random_df = pd_df.get_random_df

def get_list_dfs():
  df_list = [get_random_df(), get_random_df()]
  return df_list
