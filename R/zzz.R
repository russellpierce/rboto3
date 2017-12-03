#' This is the boto3 instance corresponding to the [boto3](http://boto3.readthedocs.io/en/latest/) module of the Boto3 Python SDK.
#' @export
#' @importFrom reticulate py_available import
boto3 <- NULL

.onLoad <- function(libname, pkgname) {
  boto3 <<- reticulate::import("boto3", delay_load = TRUE)
}
