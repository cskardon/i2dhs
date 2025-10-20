library('stringr')
library('docstring')

tidy_names_of_scotpho_la_for_maps <- function(df_scotpho_la_data) {

  #' Tidy the names used in the ScotPHO Local Authority dataset
  #' 
  #' @description Tidies the names to match the ones used by the Improvement Service to render maps.
  #' 
  #' NB this does not modify the parameter, it returns an updated version of the data frame.
  #' 
  #' @section What it does
  #' 
  #' * Replaces '&' with 'and'
  #' * Replaces 'Na h-Eileanan Siar' with `Na h-Eileanan an Iar`
  #' 
  #' @param df_scotpho_la_data the ScotPHO data frame to be modified

  working_df = data.frame(df_scotpho_la_data)
  working_df$area_name = str_replace_all(working_df$area_name, "&", "and")
  working_df$area_name = str_replace_all(working_df$area_name, "Siar", "an Iar")
  return(working_df)
}