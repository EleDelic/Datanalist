library(shiny)
library(shinydashboard)

ui<- fluidPage(
    titlePanel(title="Menu mtcars"),
    sidebarLayout(
      selectInput("select", label = h3("MTcars"), 
                  choices = list("mpg" = 1, "cyl" = 2, "disp" = 3,
                                 "hp" = 4,"drat" = 5,"wt" = 6,
                                 "qsec" = 7,"vs" = 8,"am" = 9,
                                 "gear" = 10,"carb" = 11),
                  selected = 1),
    
    mainPanel(
      #verbatimTextOutput("value"),
      #dataTableOutput(outputId = "datitos")
      
      tabsetPanel(type = "tabs", 
                  tabPanel("Tab 1", 
                           
                           fluidRow(
      
    box(
      title = "Histograma",
      status = "primary",
      plotOutput(outputId = "histograma",height = 400)
    ),
    box(
      title = "Boxplot",
      plotOutput(outputId = "box",height = 400)
    )
     #plotOutput(outputId = "histograma"),
     #plotOutput(outputId = "box")
                           ))) 
    )
  )
  
)

server<- function(input,output){
  
  output$histograma<-renderPlot({
    if(input$select==1){
      hist(mtcars$mpg,freq = T, col="blue", main = "mpg",xlab = "Datamuestra")}
    
    if(input$select==2){
      hist(mtcars$cyl,freq = T, col="blue", main = "cyl",xlab = "Datamuestra")}
    
    if(input$select==3){
      hist(mtcars$disp,freq = T, col="blue", main = "Disp",xlab = "Datamuestra")}
    
    if(input$select==4){
      hist(mtcars$hp,freq = T, col="blue", main = "hp",xlab = "Datamuestra")}
    
    if(input$select==5){
      hist(mtcars$drat,freq = T, col="blue", main = "drat",xlab = "Datamuestra")}
    
    if(input$select==6){
      hist(mtcars$wt,freq = T, col="blue", main = "WT",xlab = "Datamuestra")}
    
    if(input$select==7){
      hist(mtcars$qsec,freq = T, col="blue", main = "qsec",xlab = "Datamuestra")}
    
    if(input$select==8){
      hist(mtcars$vs,freq = T, col="blue", main = "vs",xlab = "Datamuestra")}
    
    if(input$select==9){
      hist(mtcars$am,freq = T, col="blue", main = "am",xlab = "Datamuestra")}
    
    if(input$select==10){
      hist(mtcars$gear,freq = T, col="blue", main = "gear",xlab = "Datamuestra")}
    
    if(input$select==11){
      hist(mtcars$carb,freq = T, col="blue", main = "carb",xlab = "Datamuestra")}
    
                     })
  

  
  output$box<-renderPlot({
    if(input$select==1){
      boxplot(mtcars$mpg,lwd=2 , 
              col="purple", 
              main ="Boxplot mpg",
              notch = TRUE, # Añade intervalos de confianza para la mediana
              border = "black",  # Color del borde del boxplot
              outpch = 25,       # Símbolo para los outliers
              outbg = "red",   # Color de los datos atípicos
              whiskcol = "blue", # Color de los bigotes
              whisklty = 2,      # Tipo de línea para los bigotes
              lty=1
      )}
    
    
    if(input$select==2){
      boxplot(mtcars$cyl,lwd=2 , 
              col="purple", 
              main ="Boxplot cyl",
              notch = TRUE, # Añade intervalos de confianza para la mediana
              border = "black",  # Color del borde del boxplot
              outpch = 25,       # Símbolo para los outliers
              outbg = "red",   # Color de los datos atípicos
              whiskcol = "blue", # Color de los bigotes
              whisklty = 2,      # Tipo de línea para los bigotes
              lty=1
      )}
    
    if(input$select==3){
      boxplot(mtcars$disp,lwd=2 , 
              col="purple", 
              main ="Boxplot disp",
              notch = TRUE, # Añade intervalos de confianza para la mediana
              border = "black",  # Color del borde del boxplot
              outpch = 25,       # Símbolo para los outliers
              outbg = "red",   # Color de los datos atípicos
              whiskcol = "blue", # Color de los bigotes
              whisklty = 2,      # Tipo de línea para los bigotes
              lty=1
      )}
    
    if(input$select==4){
      boxplot(mtcars$hp,lwd=2 , 
              col="purple", 
              main ="Boxplot hp",
              notch = TRUE, # Añade intervalos de confianza para la mediana
              border = "black",  # Color del borde del boxplot
              outpch = 25,       # Símbolo para los outliers
              outbg = "red",   # Color de los datos atípicos
              whiskcol = "blue", # Color de los bigotes
              whisklty = 2,      # Tipo de línea para los bigotes
              lty=1
      )}
    
    if(input$select==5){
      boxplot(mtcars$drat,lwd=2 , 
              col="purple", 
              main ="Boxplot drat",
              notch = TRUE, # Añade intervalos de confianza para la mediana
              border = "black",  # Color del borde del boxplot
              outpch = 25,       # Símbolo para los outliers
              outbg = "red",   # Color de los datos atípicos
              whiskcol = "blue", # Color de los bigotes
              whisklty = 2,      # Tipo de línea para los bigotes
              lty=1
      )}
    
    if(input$select==6){
      boxplot(mtcars$wt,lwd=2 , 
              col="purple", 
              main ="Boxplot wt",
              notch = TRUE, # Añade intervalos de confianza para la mediana
              border = "black",  # Color del borde del boxplot
              outpch = 25,       # Símbolo para los outliers
              outbg = "red",   # Color de los datos atípicos
              whiskcol = "blue", # Color de los bigotes
              whisklty = 2,      # Tipo de línea para los bigotes
              lty=1
      )}
    
    if(input$select==7){
      boxplot(mtcars$qsec,lwd=2 , 
              col="purple", 
              main ="Boxplot sec",
              notch = TRUE, # Añade intervalos de confianza para la mediana
              border = "black",  # Color del borde del boxplot
              outpch = 25,       # Símbolo para los outliers
              outbg = "red",   # Color de los datos atípicos
              whiskcol = "blue", # Color de los bigotes
              whisklty = 2,      # Tipo de línea para los bigotes
              lty=1
      )}
    
    if(input$select==8){
      boxplot(mtcars$vs,lwd=2 , 
              col="purple", 
              main ="Boxplot vs",
              notch = TRUE, # Añade intervalos de confianza para la mediana
              border = "black",  # Color del borde del boxplot
              outpch = 25,       # Símbolo para los outliers
              outbg = "red",   # Color de los datos atípicos
              whiskcol = "blue", # Color de los bigotes
              whisklty = 2,      # Tipo de línea para los bigotes
              lty=1
      )}
    
    if(input$select==9){
      boxplot(mtcars$am,lwd=2 , 
              col="purple", 
              main ="Boxplot am",
              notch = TRUE, # Añade intervalos de confianza para la mediana
              border = "black",  # Color del borde del boxplot
              outpch = 25,       # Símbolo para los outliers
              outbg = "red",   # Color de los datos atípicos
              whiskcol = "blue", # Color de los bigotes
              whisklty = 2,      # Tipo de línea para los bigotes
              lty=1
      )}
    
    if(input$select==10){
      boxplot(mtcars$gear,lwd=2 , 
              col="purple", 
              main ="Boxplot gear",
              notch = TRUE, # Añade intervalos de confianza para la mediana
              border = "black",  # Color del borde del boxplot
              outpch = 25,       # Símbolo para los outliers
              outbg = "red",   # Color de los datos atípicos
              whiskcol = "blue", # Color de los bigotes
              whisklty = 2,      # Tipo de línea para los bigotes
              lty=1
      )}
    
    if(input$select==11){
      boxplot(mtcars$carb,lwd=2 , 
              col="purple", 
              main ="Boxplot carb",
              notch = TRUE, # Añade intervalos de confianza para la mediana
              border = "black",  # Color del borde del boxplot
              outpch = 25,       # Símbolo para los outliers
              outbg = "red",   # Color de los datos atípicos
              whiskcol = "blue", # Color de los bigotes
              whisklty = 2,      # Tipo de línea para los bigotes
              lty=1
      )}
    
  })
  
  
  
}
shinyApp(ui=ui, server = server)



