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
          src = "GMP.png",
          height = '350 px',
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
        h3("What are good manufacturing practices?"),
        "Good manufacturing practices are used in the industry to",
        "define methods, processes, and guidelines that ensure the safety",
        "and quality of the products produced. Personnel hygiene, plant",
        "sanitation, equipment maintenance, product labeling, and record",
        "keeping are all defined within the guidelines of good manufacturing",
        "practices.",
        
        br(),
        h3("How does it relate to us?"),
        "Ex: For personal hygiene and sanitary practice, we require",
        "employees to wash their hands thoroughly, followed by the use",
        "of hand sanitizer any time they enter the floor.",
        br(),
        br(),
        "Ex: For hair contamination risk, we require employees with beards,",
        "mustaches, or sideburns extending below the ear to wear beard nets",
        "in the production area.",
        br(),
        br(),
        "There are other policies in place related to good manufacturing",
        "practices and all of these policies also apply to outside visitors/vendors.",
        
        br(),
       
        
       
      )
    )
)))