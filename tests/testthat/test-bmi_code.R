library(testthat)

# Test for calculate_bmi
test_that("calculate_bmi works correctly", {
  expect_equal(calculate_bmi(1.80, 75), 75 / (1.80^2))
  expect_error(calculate_bmi(0, 75), "Height must be greater than zero.")
  expect_error(calculate_bmi(1.80, 0), "Weight must be greater than zero.")
  expect_equal(calculate_bmi(1.70, 65), 10)
})

# Test for calculate_bmi_df
test_that("calculate_bmi_df works correctly", {
  df <- data.frame(height = c(1.80, 1.60), weight = c(75, 60))
  result <- calculate_bmi_df(df)
  expected_bmi <- c(75 / (1.80^2), 60 / (1.60^2))
  expect_equal(result$bmi, expected_bmi)

  df_missing <- data.frame(h = c(1.80), w = c(75))
  expect_error(calculate_bmi_df(df_missing), "Dataframe must contain 'height' and 'weight' columns.")
})
