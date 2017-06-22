library(shiny)

library(C50)
model<-readRDS("D:/shiny/model_tuned.rds")

shinyServer(function(input,output,session){
  
  
  output$contents29 <- renderPrint({
    
    
    
predict(model,data.frame(employeridentificationnumberein =input$Input1,
                         employeehiringcertificatei_9docw_4=input$Input2,
                         no_offueldispenser_undercompliance=input$Input3,
                         proofofmotorvehicleortrailerregistration=input$Input4,
                         timelimit_parkingdays_undercompliance=input$Input5,
                         X24hourordinancesforhoursofoperationverified=input$Input6,
                         debrieslitterwastagedisposable_adequateprovision=input$Input7,
                         noiselevel_underlimit=input$Input8,
                         soleproprietorship=input$Input9,
                         professionalemployees=input$Input10,
                         cashlabour=input$Input11,
                         mobilityofthevehicle=input$Input12,
                         proximitytostructures_undercompliance=input$Input13),type = 'prob')

})
})
