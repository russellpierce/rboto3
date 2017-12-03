
[![Project Status: WIP – Initial development is in progress, but there has not yet been a stable, usable release suitable for the public..](http://www.repostatus.org/badges/latest/wip.svg)](http://www.repostatus.org/) [![Last-changedate](https://img.shields.io/badge/last%20change-2017--12--03-green.svg)](/commits/prod) [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) [![Travis-CI Build Status](https://travis-ci.org/russellpierce/rboto3.svg?branch=prod)](https://travis-ci.org/russellpierce/rboto3) [![packageversion](https://img.shields.io/badge/Package%20version-0.1.0000-orange.svg?style=flat-square)](commits/prod) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/rboto3)](https://cran.r-project.org/package=rboto3) [![](http://cranlogs.r-pkg.org/badges/grand-total/rboto3)](http://cran.rstudio.com/web/packages/rboto3/index.html)

`rboto3`: An R Package for Amazon Web Services (AWS)
====================================================

The `rboto3` R package provides access to the Amazon Web Services (AWS) [boto3](http://boto3.readthedocs.io/en/latest/) SDK for Python from R via [package::reticulate](https://rstudio.github.io/reticulate/). Using the Python SDK allows the `rboto3` package to have a very minimal foot-print and yet allow complete AWS API access.

Why should I use it?
--------------------

Amazon does not provide an offical SDK for R. If you've searched around a bit, you'll have noticed that the landscape is littered with R packages for Amazon Web Services (AWS) no longer in development or that are incomplete. In my opinion, the dead packages are most often dead because they've depended on lower level interfaces from Amazon that Amazon was free to change one way or another. In contrast...

> \[Boto 3\] uses a data-driven approach to generate classes at runtime from JSON description files that are shared between SDKs in various languages. This includes descriptions for a high level, object oriented interface. Because Boto 3 is generated from these shared JSON files, we get fast updates to the latest services and features and a consistent API across services. Community contributions to JSON description files in other SDKs also benefit Boto 3, just as contributions to Boto 3 benefit the other SDKs.

The incomplete packages are frequently incomplete because they've targeted Amazon's web API or other low-level interface and been forced to write each feature step-by-step. By importing Boto 3 directly into R via {reticulate} we gain immediate access to all higher-level interfaces AWS has to offer and reduce the support burden on the R community to keep up with Amazon's changes. Although any language's SDK would have been suitable as a target this package has selected Python because it is similar to R in some respects and many users of R also have familarity with Python.

How do I use it?
----------------

Before you can use this package you need to have Python 2.x (&gt;=2.7) or Python 3.x (&gt;=3.4). You can then follow the Boto 3 [Quickstart](http://boto3.readthedocs.io/en/latest/guide/quickstart.html) guide to do your system configuration.

For an example usage from R, I'll parallel the example provided by Boto 3.

To use `{rboto3}` you must first tell it what service you are going to use and attach `{reticulate}` to gain the ability to easily interact with Python objects from R.

``` r
library(reticulate)
library(rboto3)

s3 <- boto3$resource('s3')
```

You'll notice that in places where the Python code uses a `.`, we use a `$` inside of R to access methods contained within boto3. Now that you have an s3 resource, you can do things with it, like print all of your bucket names:

How do I use it?
----------------

### Installation

For usage examples,

### Advanced Installation

If you need to keep your R Python environment seperate from the rest of your environment consider a [virtual environment](http://docs.python-guide.org/en/latest/dev/virtualenvs/). [virtualenvwrapper](http://docs.python-guide.org/en/latest/dev/virtualenvs/#virtualenvwrapper) makes setting up Python modules quite painless.

Once you have installed Python and setup `virtualenvwrapper` you need to create a new virtual environment and install the `boto3` Python module in it.

``` bash
mkvirtualenv --python=/usr/bin/python3 boto3
workon boto3
pip install boto3
```

``` r
reticulate::use_virtualenv("boto3")
library(rboto3)
client <- boto3$`__version__`
```
