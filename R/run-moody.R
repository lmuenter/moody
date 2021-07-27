# title: Run Moody
# purpose: runs moody
# date: 24.07.2021
# author: Lukas Muenter

#-------------------------------
#' Run Moody
#'
#' Runs moody locally.
#' @import shiny
#' @export
moody <- function() {

  ## localise the app
  appDir <- system.file("shiny-examples", "myapp", package = "moody")


  ## warn if something is wrong
  if (appDir == "") {
    stop("Could not find the app. Try re-installing `moody`.", call. = FALSE)
  }

  ## run app
  runApp(appDir, display.mode = "normal")
}
