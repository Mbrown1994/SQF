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
          src = "sqfculture.png",
          height = '350 px',
          width = '400 px'
          
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
        h3("What is food safety culture and how is it created?"),
        "A strong culture of food safety involves a commitment from everyone",
        "within an organization, from top-level management to frontline workers,",
        "to prioritize and uphold food safety standards. Generally recognized key",
        "elements in creating food safety culture include leadership, communication,",
        "commitment, risk awareness, environment, accountability, and employee",
        "knowledge/behaviors.",
        br(),
        br(),
        br(),
        h3("What can be done to promote a strong food safety culture?"),
        "Food safety culture should be promoted as a necessary and critical business",
        "issue for all employees. Organizations should make it a priority to brand their",
        "commitment to food safety culture and promote it everywhere. Open communication",
        "and expectations around food safety should be communicated thoroughly",
        "within the plant. Appropriate training (for example, this website!) should be available",
        "to all employees. In Charlotte, we promote employee feedback on food safety related issues,",
        "we communicate about food safety policies and responsibilities, and we use food safety related",
        "issues as a performance measurement. These are all ways that we spread the food safety culture",
        "within our plant.",
      
        
        
        br(),
       
        
       
      )
    )
)))