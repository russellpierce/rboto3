# A hack to make CI builds work on windows/appveyor
# See https://github.com/krlmlr/r-appveyor/issues/91
.libPaths(c("C:/RLibrary",.libPaths()))

library(testthat)
library(reticulate)
library(rboto3)

test_check("rboto3")
