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
          src = "Allergen.png",
          height = '400 px',
          width = '450 px'
          
        ),
        
        br(),
        br(),
        br(),
        br(),
        
        h3("Berry Global Food Safety Policy"),
        "Provide food safe and high-quality packaging products, and services",
         "that meet customers' expectations.", br(),
         "Comply with applicable customer and",
        "regulatory requirements while continually improving the safety", br(),
        "of the",
        "food packaging manufacturing system by establishing and reviewing food",
        "safety objectives. Maintain", br(),
        "system effectiveness through utilization of",
        "technology, teamwork, and skilled employees. We are committed", br(),
        "to maintaining",
        "our established food safety culture."
        
        
        ),
      sidebarPanel(
        
        # Describe what this app will be used for
        h3("What does the standard say?"),
        "Clause 2.8.1.1 The responsibility and methods used",
        "to control allergens and to prevent sources of allergens",
        "from contaminating food sector packaging shall be documented",
        "and implemented.",
        br(),
        h3("What are allergens?"),
        "An allergen is a substance that causes an inflammatory reaction",
        "to the body triggered by the immune system.",
        br(),
        h3("What does it mean?"),
        "The plant has a documented allergen management program",
        "(WI-00084) with the purpose of outlining procedures,",
        "requirements, and controls necessary to prevent sources",
        "of allergens from contaminating food packaging products.",
        "Some of our requirements to prevent sources of allergen",
        "contamination include hand washing, part handling methods,",
        "and cleaning of equipment.",
        br(),
        h3("What are the 9 major food allergens?"),
        "Milk, Tree nuts, Peanuts, Shellfish, Wheat, Eggs, Fish,",
        "Soy, and Sesame.",
        br(),
       
        
       
      )
    )
)))