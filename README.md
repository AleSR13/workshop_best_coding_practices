# Best coding practices

For now this repo just contains some examples of "bad" code (code not following coding conventions). In the live workshop, I fix it using formatters in `r` (using `styler` package and the Tidyverse style) and `python` (using `black` with standard configuration and 80 characters in length)

## R code

### Pre-requisites:

- Have `rtools` installed
- Have `devtools` installed
- Have `usethis` and `testthat` installed
- Have `styler` installed
- Have `renv` installed and, after opening the R project, do `renv::restore()`
- Have RStudio installed in your laptop

### Styling in R

1. Un-comment the code in the `R/styler_demo.R` file
2. Look at all the bad practices done in it
3. If you have installed `styler`, you should be able to run `styler::style_file("R/styler_demo.R")` and see how many (not all) styling errors are corrected

### Testing in R

1. Look at the file `R/bmi_code.R` and the functions it contains
2. Look at the tests for the BMI code in `tests/testthat/test-bmi_code.R`
3. Run the tests by using `devtools::test()`
4. Correct the failing test and run again the tests

Note that I have the folder structure for an R package and therefore I can use the `devtools::test()` command. If you don't want to make your own package yet or somehow it is not working yet, you can also do: `testthat::test_file()` or `testthat::test_dir()` to test specific parts of your code.

## Python code

### Pre-requisites

- Have `python` installed on your laptop
- Have `pipx` installed on your laptop (`pip install pipx`)
- Have `uv` installed through `pipx` (`pipx install uv`)
- Have `black` installed through `pipx` (`pipx install black`)
- Have `poetry` installed through `pipx` (`pipx install poetry`)
- Have VS Code installed in your laptop

### Styling in python

1. Open VS Code and go to the file `src/python_best_practices/style_with_black.py` and look at all the bad practices it has
2. Open a new terminal within VS Code and type `black src/python_best_practices/style_with_black.py`
3. Check the script again and see how the format got changed to follow best practices according to [PEP8](https://peps.python.org/pep-0008/)
4. Configure the `.vscode/settings.json` file to auto-format on paste and on save so the format is always automatically corrected

### Testing in python

1. Run `uv sync` to make sure all the dependencies are checked
2. Go to the script `src/python_best_practices/bmi.py` to check the code for this exercise
3. Go to the script `tests/python_best_practices/test_bmi_code.py` to check the tests for the code
4. Run the tests using `uv run pytest` command
