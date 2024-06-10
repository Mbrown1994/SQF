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
  title = "SQF Database - Thinwall Region",
  
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
          src = "blood.png",
          height = '300 px',
          width = '300 px'
          
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
        h3("What are bloodborne pathogens?"),
        "Bloodborne pathogens are microorganisms such as viruses or bacteria",
        "that are carried in blood and can cause disease in people. Examples of",
        "bloodborne pathogens are:",
        br(),
        br(),
        "1. Hepatitis B (HBV)",
        br(),
        "2. Human Immunodeficiency Virus (HIV)",
        br(),
        
        
        br(),
        h3("How are they transmitted?"),
        "Bloodborne pathogens may be transmitted through the mucous membranes",
        "of the nose, eyes, and/or mouth. Accidental puncture from contaminated",
        "needles and other sharp objects can result in transmission of bloodborne",
        "pathogens. In case of an accident, do not touch or clean any blood from",
        "your fellow worker, work area or equipment. Barricade the contaminated",
        "area and wait for trained employees to clean the blood and decontaminate",
        "the area.",
       
        
        
        br(),
       
        
       
      )
    )
)))