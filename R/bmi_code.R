#' Calculates BMI based on raw values
#'
#' @param height Height in meters
#' @param weight Weight in kilograms
#'
#' @returns numeric value for the BMI
#'
#' @examples calculate_bmi(height = 1.70, weight = 65)
calculate_bmi <- function(height, weight) {
  if (height <= 0) stop("Height must be greater than zero.")
  if (weight <= 0) stop("Weight must be greater than zero.")
  bmi <- weight / (height^2)
  return(bmi)
}


#' Calculates BMI in a data frame
#'
#' @param df Data frame with at least two columns: height and weight
#'
#' @returns Data frame (same as input) with an extra column for the 'bmi'
#'
#' @examples calculate_bmi_df(df = input_df)
calculate_bmi_df <- function(df) {
  if (!all(c("height", "weight") %in% names(df))) {
    stop("Dataframe must contain 'height' and 'weight' columns.")
  }
  df$bmi <- mapply(calculate_bmi, df$height, df$weight)
  return(df)
}


## Note: to automatically add Roxygen2 use short cut ctrl+alt+shift+R
