library(shiny)
runGitHub( "git-init", "DatascienceNavya") 


# Define UI for miles per gallon application
shinyUI(pageWithSidebar(
  # Application title
  headerPanel("Asses the Risk"),
  
  # Sidebar with controls to select the variable to plot against mpg
  # and to specify whether outliers should be included
  sidebarPanel(
    selectInput(
      "Input1",
      "employer identification number",
      c("yes" = "yes",
        "no" = "no")
    ),
    
    selectInput(
      "Input2",
      "employee hiring certificate",
      c("yes" = "yes",
        "no" =
          "no")
    ),
    selectInput(
      "Input3",
      "no of fuel dispenser under compliance",
      c("yes" = "yes", "no" = "no")
    ),
    selectInput("Input4", "proof of motorvehicle or trailer registration",
                c("yes" = "yes",
                  "no" =
                    "no")),
    selectInput(
      "Input5",
      "time limit parkingdays undercompliance",
      c("yes" = "yes", "no" = "no")
    ),
    selectInput(
      "Input6",
      "24 hour ordinances for hours of operation verified",
      c("yes" = "yes", "no" = "no")
    ),
    selectInput(
      "Input7",
      "debries litter wastage disposable adequate provision",
      c("yes" = "yes", "no" = "no")
    ),
    selectInput("Input8", "noiselevel underlimit", c("yes" = "yes", "no" =
                                                       "no")),
    selectInput("Input9", "sole proprietorship", c("yes" = "yes", "no" = "no")),
    selectInput("Input10", "professional employees", c("yes" = "yes", "no" =
                                                         "no")),
    selectInput("Input11", "cash labour", c("yes" = "yes", "no" = "no")),
    selectInput("Input12", "mobility of the vehicle", c("yes" = "yes", "no" =
                                                       "no")),
    selectInput(
      "Input13",
      "proximity to structures_under compliance",
      c("yes" = "yes", "no" = "no")
      
      
      
      
      ),
    submitButton("submit",icon("refresh"))),
  mainPanel(
    verbatimTextOutput("contents29")
  
  ))
)

