#' checkbox_input
#' @description This is a standard checkbox input for shiny applications based on semantic-UI
#' @author Simon Roth
#' @param id The input slot
#' @param label Display text label (default is NULL)
#' @param fitted A fitted checkbox does not leave padding for a label
#' @param ckecked Is the switch pre-checked?
#' @param class A default class to override the existing one (experimention)
#' @return checkbox imput
#'
#' @export

checkbox_input <- function(id, label = NULL, fitted = F, checked = F, class = NULL){

  fit <- NULL; check <- NULL

  if(fitted) fit <- "fitted"
  if(checked) check <-  "checked"

  variation <- paste("ui", fit, "checkbox", sep = " ")

  # override default ui class
  if(!is.null(class)) variation <- class

  tagList(
    htmltools::div(class = variation,
                   htmltools::tags$input(id = id, type = "checkbox", checked = check),
                   htmltools::tags$label(label)
    )
  )
}

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


#' radio_input
#' @description This is a radio input for shiny applications based on semantic-UI
#' @author Simon Roth
#' @param id The input slot
#' @param label Display text label (default is NULL)
#' @param fitted A fitted checkbox does not leave padding for a label
#' @param ckecked Is the toggle pre-checked?
#' @param class A default class to override the existing one (experimention)
#' @return radio imput
#'
#' @export
radio_input <- function(id, label = NULL, fitted = F, checked = F, class = NULL){
  fit <- NULL; check <- NULL

  if(fitted) fit <- "fitted"
  if(checked) check <-  "checked"

  variation <- paste("ui", fit, "radio checkbox", sep = " ")

  # override default ui class
  if(!is.null(class)) variation <- class

  tagList(
    htmltools::div(class = variation,
                   htmltools::tags$input(id = id, name = id, type = "radio", checked = check),
                   htmltools::tags$label(label)
    )
  )
}

#' radio_group_input
#' @description This is a switch input for shiny applications based on semantic-UI
#' @author Simon Roth
#' @param id The input slot
#' @param label Display text label (default is NULL)
#' @param fitted A fitted checkbox does not leave padding for a label
#' @param ckecked Is the toggle pre-checked?
#' @param class A default class to override the existing one (experimention)
#' @return radio group input
#'
#' @export

#choices <- c("A1", "A2")
#radio_group_input("hahah", choices = choices)
radio_group_input <- function(id, label = NULL, choices, fitted = F, checked = F, class = NULL){
  fit <- NULL; check <- NULL

  if(fitted) fit <- "fitted"
  if(checked) check <-  "checked"

  variation <- "ui radio checkbox"

  # override default ui class
  if(!is.null(class)) variation <- class

  tagList(
    div(id = id, class="ui form",
      tags$label(label),
      div(class="grouped fields",
        purrr::map(choices, ~{
          div(class="field",
              htmltools::div(class = variation,
                 htmltools::tags$input(name = id, type = "radio", checked = check, value = .x),
                 htmltools::tags$label(.x)
              )
          )
        })
      )
    )
  )
}

# <div id="shdashd" class="form-group shiny-input-radiogroup shiny-input-container">
#   <label class="control-label" for="shdashd"></label>
#   <div class="shiny-options-group">
#   <div class="radio">
#   <label>
#   <input type="radio" name="shdashd" value="adsd" checked="checked"/>
#   <span>adsd</span>
#   </label>
#   </div>
#   <div class="radio">
#   <label>
#   <input type="radio" name="shdashd" value="EDsd"/>
#   <span>EDsd</span>
#   </label>
#   </div>
#   </div>
#   </div>
#
#



