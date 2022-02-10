library(shiny)
library(readr)
library(magrittr)
library(vroom)

# Leitura de Dados 

#clientes <- vroom::vroom("~/brendhalima.github.io/numera/data/dados_clientes.csv")
#clientes

#eventos <- vroom::vroom("~/brendhalima.github.io/numera/data/eventos_ofertas.csv")
#eventos

#portfolio <- vroom::vroom("~/brendhalima.github.io/numera/data/portfolio_ofertas.csv")
#portfolio


# Mostrar dados
shinyServer(function(input, output) {
  output$tabela <- renderDataTable(
    eventos,
    options = list(
      scrollX = TRUE,
      pageLength = 5
    )
  )
  
})