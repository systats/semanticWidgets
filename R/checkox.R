#' switch_input
#' @description This is a switch input for shiny applications based on semantic-UI
#' @author Simon Roth
#' @param id The input slot
#' @param label Display text label (default is NULL)
#' @param fitted A fitted checkbox does not leave padding for a label
#' @param ckecked Is the switch pre-checked?
#' @param class A default class to override the existing one (experimention)
#' @return switch imput
#'
#' @export

switch_input <- function(id, label = NULL, fitted = F, checked = F, class = NULL){

  fit <- NULL; check <- NULL

  if(fitted) fit <- "fitted"
  if(checked) check <-  "checked"

  variation <- paste("ui", fit, "slider checkbox", sep = " ")

  # override default ui class
  if(!is.null(class)) variation <- class

  tagList(
    htmltools::div(class = variation,
                   htmltools::tags$input(id = id, type = "checkbox", checked = check),
                   htmltools::tags$label(label)
    )
  )
}

#' toggle_input
#' @description This is a switch input for shiny applications based on semantic-UI
#' @author Simon Roth
#' @param id The input slot
#' @param label Display text label (default is NULL)
#' @param fitted A fitted checkbox does not leave padding for a label
#' @param ckecked Is the toggle pre-checked?
#' @param class A default class to override the existing one (experimention)
#' @return switch imput
#'
#' @export

toggle_input <- function(id, label = NULL, fitted = F, checked = F, class = NULL){
  fit <- NULL; check <- NULL

  if(fitted) fit <- "fitted"
  if(checked) check <-  "checked"

  variation <- paste("ui", fit, "toggle checkbox", sep = " ")

  # override default ui class
  if(!is.null(class)) variation <- class

  tagList(
    htmltools::div(class = variation,
                   htmltools::tags$input(id = id, type = "checkbox", checked = check),
                   htmltools::tags$label(label)
    )
  )
}
