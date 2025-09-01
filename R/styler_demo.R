# # Assignment symbol should be <-
# myVariableInCamelCase = "Hello, world!"
#
# # Semicolon end of line
# my_helper();
#
# # Text with quotes
# 'Text'
# 'Text with "double" and \'single\' quotes'
#
#
# # Spacing between parenthesis and after a comma
# another_variable <- mean(
# seq( 1,10,1 ),234,24,3534,132,45,65463,454,231,123,11,1133,
# na.rm=TRUE
# )
# # Long-function calls
# do_something_very_complicated(
#                               "that", requires, many, arguments,
#                               "some of which may be long"
#                               )
#
# # Named arguments with a space
# my_function(
#   second_function(
#     x=x,
#     y=long_argument_name,
#     extra_argument_a=10,
#     extra_argument_b=c(1, 43, 390, 210209)
#   )
# )
#
# # Multi-line statement with no braced expressions
# if (x > 10)
#   x * 2
#
# # Pipes not corrected by styler
# strings %>%
#   str_replace("a", "b") |>
#   str_replace("x", "y")
