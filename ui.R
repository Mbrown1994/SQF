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
  title = "SQF Database - Berry Global",
  
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
          src = "Hold.png",
          height = '300 px',
          width = '350 px'
          
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
        h3("Containment and Hold Process?"),
        "In every manufacturing process, there will be times when something unexpected occurs,",
        " a part defect is found, or something is wrong with the equipment. What is important at",
        "these times is to make the right decision to protect both the customer and Berry from",
        "further risk. We do that by quickly and fully identifying all impacted product and holding",
        "that product for further review. This activity of quickly and completely identifying affected",
        "product is called 'containment.' Much like we 'contain' a spill to keep it from reaching the",
        "next step in the process.",
        
        
        br(),
        br(),
        
        
        
        h3("What happens when we find a defect?"),
        "When a defect is identified, it is important to stop producing/packing that defect",
        "and immediately let quality as well as your front line lead know. The quality team",
        "will take the lead on identifying how many boxes/pallets are affected so that we can",
        "either scrap the product out or begin the rework process. It is important to remember",
        "that we want to protect our consumers which starts with us and this process.",
        
        
        
      
        
        
        br(),
       
        
       
      )
    )
)))