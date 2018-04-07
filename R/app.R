#' @export
semantic_widgets_gallery <- function() {
  appDir <- system.file("semantic_widgets_gallery", package = "semanticWidgets")
  if (appDir == "") {
    stop("Could not find example directory. Try re-installing ``.", call. = FALSE)
  }

  shiny::runApp(appDir, display.mode = "normal")
}
