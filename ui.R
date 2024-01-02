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
          src = "HACCP.png",
          height = '350 px',
          width = '500 px'
          
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
        h3("What does HACCP stand for?"),
        "HACCP stands for hazard analysis critical control points.",
        "This is a system that is in place to determine what risks",
        "or hazards exist within our plant that could hurt consumers",
        "(or make them sick) and then how do we address those risks.",
        
        br(),
        h3("How do we address these risks?"),
        "There are 3 different types of hazards that exist that we as",
        "a plant need to address:",
        br(),
        "1. Biological Hazards: This type of hazard includes viruses, ",
        "bacteria, mold, and yeast. Our best defense against biological",
        "hazards include sanitation of hands/equipment and part handling ",
        "methods.",
        br(),
        br(),
        "2. Chemical Hazards: This type of hazard includes cleaners, oils,",
        "lubricants, inks, and solvents. Our best defense against chemical",
        "hazards include cleaning/sanitizing product-contact surfaces following",
        "any maintenance activities and only allowing certain cleaning products",
        "on those surfaces.",
        br(),
        br(),
        "3. Physical Hazards: This type of hazard includes metal, wood, glass,",
        " and hair. Our best defense against physical hazards are some of the ",
        "GMP practices that we have in place like the hair and beard nets.",
        
        br(),
       
        
       
      )
    )
)))