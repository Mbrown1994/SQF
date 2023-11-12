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
          src = "FoodFraud.png",
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
        h3("What is food fraud"),
        "Food fraud is the deception of consumers through intentional",
        "adulteration of food. This is done by either substituting one",
        "product for another or using unapproved enhancements/additives.",
        "The key terms to understand when defining food fraud are",
        "misrepresenting, misbranding, mislabeling and counterfeiting.",
        br(),
        h3("Food Fraud Examples"),
        "Economically motivated adulteration (EMA) occurs when someone",
        "intentionally leaves out, takes out, or substitutes a valuable",
        "ingredient or part of a food. EMA also occurs when someone adds",
        "a substance to a food to make it appear better or of greater value.",
        br(),
        "Substitution: examples include adding sugar to honey, selling regular",
        "beef as Wagyu beef, or injecting shrimp with gel to make them look",
        "larger and weigh more.",
        br(),
        "Mislabeling: examples include the sale of horsemeat as beef in Europe,",
        "the addition of melamine to infant formula in China, and the mislabeling",
        "of fish species in the United States.",
        br(),
        "Counterfeiting: examples include cutting orange juice with cheaper alternatives",
        "including lemon, grapefruit, or mandarin juice.",
        
        br(),
       
        
       
      )
    )
)))