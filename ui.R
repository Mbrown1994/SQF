# Packages used for this analysis
library(shinythemes)
library(tidyverse)
library(magrittr)
library(shiny)
library(caret)
library(tree)
library(dplyr)
library(DT)
library(ggplot2)
library(readr)
library(qcc)

options(shiny.autoreload = TRUE)





# Ignore a few warnings
suppressWarnings(library(caret))

# Add in the title and theme
shinyUI(navbarPage(
  
  # Application title
  title = "SQF Database - Berry CHAR",
  
  # Add a theme
  theme = shinytheme("flatly"),
  
  tabsetPanel(
    
    # Create the tab for the 'About' section of the app
    tabPanel(
      # Add the title
      title = "Training Topic",
      
      # Create a main panel for this specific tab
      mainPanel(
        
        # Add in the image
        img(
          src = "Food.png",
          height = '300 px',
          width = '480 px'
          
        ),
        
        h3("What is Food Safety Culture?"),
        
        
        ),
      sidebarPanel(
        
        # Describe what this app will be used for
        h3("What does the standard say?"),
        "Clause 13.4.1.2 Personnel working in or visitng food sector packaging",
        "manufacturing, handling, or storage operations shall ensure that: eaeting,",
        "drinking, smoking, or spitting is not permitted in areas where food sector ",
        "packaging is manufactured, handled, stored, or exposed.",
        br(),
        br(),
        br(),
        
        h3("What does it mean?"),
        "Personel are not allowed to eat or drink in any production areas - all food/drinks must be stored and used in",
        "the breakroom. This includes any",
        "candy, gum, and coffee. You should not use lockers to store any edible",
        "items as they may welcome pests of different types into the building.", 
        "If you find any food, drinks, or wrappers on the floor please it report to",
        "your lead.",
        br(),
        br(),
       
        
       
      )
    )
)))