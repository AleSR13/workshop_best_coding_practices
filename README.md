# Best coding practices

For now this repo just contains some examples of "bad" code (code not following coding conventions). In the live workshop, I fix it using formatters in `r` (using `styler` package and the Tidyverse style) and `python` (using `black` with standard configuration and 80 characters in length)


## R code

### Pre-requisites:

- Have `rtools` installed
- Have `devtools` installed
- Have `usethis` and `testthat` installed
- Have `styler` installed
- Have `renv` installed and, after opening the R project, do `renv::restore()`

### Styling in R

1. Un-comment the code in the `R/styler_demo.R` file
2. Look at all the bad practices done in it
3. If you have installed `styler`, you should be able to run `styler::style_file("R/styler_demo.R")` and see how many (not all) styling errors are corrected

### Testing in R

1. Look at the file `R/bmi_code.R` and the functions it contains
2. Look at the tests for the BMI code in `tests/testthat/test-bmi_code.R`
3. Run the tests by using `devtools::test()`
4. Correct the failing test and run again the tests
