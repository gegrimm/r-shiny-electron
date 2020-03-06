#!/usr/bin/env Rscript
# install latex dependencies
if (!require(tinytex)) {
  options(repos = "https://cloud.r-project.org")
  install.packages('tinytex')
}

args <- commandArgs(trailingOnly=TRUE)

if (dir.exists("./r-mac") & args[1] == "mac") {
  if (Sys.info()[1] != "Darwin") {
    stop("Mac build must be performed on Mac machine when latex is required.")
  }
  tinytex::install_tinytex(
    dir=file.path(getwd(), "tinytex"),
    force=TRUE,
    add_path=FALSE
  )
}

if (dir.exists("./r-win") & args[1] == "win") {
  if (Sys.info()[1] == "Darwin") {
    stop("Windows build must be performed on windows machine when latex is required.")
  }
  tinytex::install_tinytex(
    dir=file.path(getwd(), "tinytex"),
    force=TRUE,
    add_path=FALSE
  )
}
