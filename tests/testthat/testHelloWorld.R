library(reticulate)
library(rboto3)

# helper function to skip tests if we don't have the 'boto3' module
skip_if_no_boto3_module <- function() {
  have_boto3 <- py_module_available("boto3")
  if (!have_boto3)
    skip("Skipping test: Python 'boto3' module not found")
}

context("Hello World")

test_that("boto3 python module is loaded", {
  skip_on_cran()
  skip_on_bioc()
  expect_true(is.object(boto3))
  expect_type(boto3$`__version__`, "character")
})
