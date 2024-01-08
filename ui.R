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
          src = "FoodCulture.png",
          height = '450 px',
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
        h3("What is food safety culture?"),
        "They are the shared values, beliefs, and norms that affect",
        "mindset and behavior toward food safety throughout an organization.",
        "It is a way for management to drive the food safety culture within",
        "the company. A site with strong food safety culture has a fully",
        "implemented food safett system and addresses concerns or issues",
        "when they arise.",
        
        br(),
        h3("How do we spread food safety culture in CHAR?"),
        "1. We communicate about food safety policies and responsibilities",
        "during plant meetings and toolbox talks.",
        br(),
        br(),
        "2. We encourage employee feedback on food safety related issues.",
        br(),
        br(),
        "3. It is a performance measurement that it discussed at management",
        "review meetings.",
        br(),
        br(),
        "4. The food safety policy is reviewed and signed by all of management",
        "and posted in the employee hallway so that everyone is aware of our",
        "commitment to food safety.",
       
        
        
        br(),
       
        
       
      )
    )
)))