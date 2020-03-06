library(shiny)

# when run in this electron app, the WITHIN_ELECTRON env variable is
# available; include specific chunks that are only executed in this context
if (Sys.getenv("WITHIN_ELECTRON") == 1) {
  # one use case is when a shiny app requires pandoc/latex rendering
  # the 'yarn setup' step will automatically pull these executables into the
  # electron package, but you will need to add the paths to the env like below
  tinytex_path <- Sys.getenv("RSTUDIO_TINYTEX")
  pandoc_path <- Sys.getenv("RSTUDIO_PANDOC")
  old_path <- Sys.getenv("PATH")
  Sys.setenv(PATH=paste(old_path, tinytex_path, sep=.Platform$path.sep))
  old_path <- Sys.getenv("PATH")
  Sys.setenv(PATH=paste(old_path, pandoc_path, sep=.Platform$path.sep))
}
