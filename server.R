
shinyServer(
    
    
    server<-function(input, output, session){
        
        
        data=eventReactive(input$click, {dataset=get(input$dataset, "package:HistData", inherits=FALSE)})
        
        output$plot=renderPlot({
                        
            plot(data(), col="blue")
            
        })
        
        output$str=renderPrint({
                        
            str(data())
            
        })
        
        output$summary=renderPrint({
                        
            summary(data())
            
        })
        
        output$table=renderTable({
            
            data()
        })
    }
)