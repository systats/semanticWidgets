library(shiny)
library(shiny.semantic)
library(semantic.dashboard)
library(dplyr)
library(stringr)
library(semanticWidgets)
# devtools::install_github("systats/semanticWidgets")

custom_header <- function(...){
  shiny::div(class = paste("ui top attached inverted menu"),
    div(class="item",
      span("semanticWidgets", style = "color:white")
    ),
    shiny::tags$a(id = "toggle_menu", class = "item", shiny::tags$i(class = "sidebar icon"), "Menu"),
    shiny::div(class = "right icon menu", ...)
  )
}

# Define UI for application that draws a histogram
ui <- shinyUI(
  dashboard_page(
    custom_header(),
    dashboard_sidebar(
      inverted = T,
      menuItem(tabName = "checkboxes", text = "Checkboxes", icon = uiicon("list")),
      menuItem(tabName = "checkboxes2", text = "Analysis", icon = uiicon("chart line"))
    ),
    dashboard_body(
      tabItems(
        tabItem(tabName = "checkboxes",
          ### Switch
          box(title = "Standard Checkbox", ribbon = F, width = 4,
              div(class="ui center aligned basic segment",
                  semanticWidgets::checkbox_input("id_stc"),
                  div(class="ui inverted divider"),
                  textOutput("id_stc")
              ),
              div(class="ui small right aligned header",
                  uiicon("right aligned code")
              ),
              tags$code(class = "ui code", 'checkbox_input("id_stc")')
          ),
          ### Switch
          box(title = "Switch Checkbox", ribbon = F, width = 4,
            div(class="ui center aligned basic segment",
              semanticWidgets::switch_input("id_sc"),
              div(class="ui inverted divider"),
              textOutput("id_sc")
            ),
            div(class="ui small right aligned header",
              uiicon("right aligned code")
            ),
            tags$code(class = "ui code", 'switch_input("id_sc")')
          ),
          ### Toggle
          box(title = "Toggle Checkbox", ribbon = F, width = 4,
              div(class="ui center aligned basic segment",
                  semanticWidgets::toggle_input("id_tc"),
                  div(class="ui inverted divider"),
                  textOutput("id_tc")
              ),
              div(class="ui small right aligned header",
                  uiicon("right aligned code")
              ),
              tags$code(class = "ui code", 'toggle_input("id_tc")')
          ),
          ### radio_group_input
          box(title = "Radio Group Checkbox", ribbon = F, width = 4, color = "red",
              div(class="ui center aligned basic segment",
                  radio_group_input("id_rgc", label = "What was the question?", choices = c("A1", "A2", "A3")),
                  #radioButtons("id_rgc", label = "What was the question?", choices = c("A1", "A2", "A3")),
                  div(class="ui inverted divider"),
                  textOutput("id_rgc")
              ),
              div(class="ui small right aligned header",
                  uiicon("right aligned code")
              ),
              tags$code(class = "ui code",
                'radio_group_input(\n
                  id = "id_rgc",\n
                  label = "What was the question?",\n
                  choices = c("A1", "A2", "A3")\n
                )
              ')
          )
        ),
        tabItem(tabName = "checkboxes2", "checkboxes2")
      )
    )
  )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

  output$id_stc <- renderText({
    input$id_stc
  })
  output$id_sc <- renderText({
    input$id_sc
  })
  output$id_tc <- renderText({
    input$id_tc
  })
  output$id_rgc <- renderText({
    input$id_rgc
  })

}

# Run the application
shinyApp(ui = ui, server = server)

#input <- list(type = "bill", number = "16359")





