library(shinydashboard)

dashboardPage(
  dashboardHeader(
    title = 'Meu primeiro Shiny'
  ),
  dashboardSidebar(
    sidebarMenu(
      menuItem('Base de dados', tabName = 'basededados'),
      menuItem('Plots', tabName = 'plots')
    )
  ),
  dashboardBody(
    tabItems(
      tabItem(
        tabName = 'basededados',
        h1('Base de dados'),
        dataTableOutput('tabela')
      ),
      tabItem(
        tabName = 'plots',
        h1('Esses são os plots')
      )
    )
  )
)



