library(HistData)
shinyUI(fluidPage(
    
    pageWithSidebar(
        headerPanel(h1("HistData Data Sets: Brief Exploratory Data Analysis")),
        
        
        sidebarPanel(
            selectInput("dataset", "Select a Data Set:", 
                        choices=ls("package:HistData"), selected="PolioTrials"),
            actionButton("click", "Update Selection")
        ),   
        
        mainPanel(
            
            tabsetPanel(
                
                tabPanel("About",
                         "This Shiny App provides a brief exploratory data analysis 
of the data sets in the HistData package (the HistData package provides a collection 
of data sets that are interesting and important in the history of statistics and 
data visualisation. They are part of a programme of research called statistical 
historiography, meaning the use of statistical methods to study problems and 
questions in the history of statistics and graphics). Select a data set (don't forget 
to click 'Update Selection'!), and navigate between the tabs to see a plot of the 
data set you have selected, data set structure, summary and table."
                ),
                
                    
                tabPanel("Plot",
                         plotOutput("plot")
                         ),                 
                tabPanel("Data Structure",
                         verbatimTextOutput("str")
                         ),
                tabPanel("Summary",
                         verbatimTextOutput("summary")
                ),
                tabPanel("Table",
                         tableOutput("table")  
                         )
                
                
            )
        )
        
        
        
        
        
    )
)
)