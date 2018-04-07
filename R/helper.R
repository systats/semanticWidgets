#js_script <- "$('.ui.accordion' 'example').accordion();"
js_script <- "$('.trigger.example .accordion')
  .accordion({
    selector: {
      trigger: '.title .icon'
    }
  })
;"


tagList(
  shiny::div(class = "ui basic segment",
             shiny::div(
               class = "ui accordion", id = "example",
               shiny::div(class = "title", "Code"),
               shiny::div(class = "content active", shiny::div("Code"))
             )
  ),
  shiny::singleton(
    shiny::tags$script(
      paste0("$(document).ready(function() { ", js_script, " })")
    )
  )
)




div(class="ui form",
  div(class="grouped fields",
    tags$label("How often do you use checkboxes?"),
    div(class="field",
      div(class="ui radio checkbox">
        tags$input(type="radio", name="example2", checked="checked"),
        tags$label("Once a week")
      )
    )
  )
)
