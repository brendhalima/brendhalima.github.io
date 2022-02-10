# Case técnico - Numera

library(readr)

clientes <- read_csv("dados_clientes.csv")
eventos <- read_csv("eventos_ofertas.csv")
portfolio <- read_csv("portfolio_ofertas.csv")


summary(portfolio)
summary(eventos)
summary(clientes)

#clientes$id <- 
class(eventos$tipo_evento)

eventos$recompensa <- ifelse(eventos$id_oferta %in% portfolio$id, portfolio$recompensa,0)

eventos$valor <- ifelse(eventos$id_oferta %in% portfolio$id, portfolio$valor_minimo,0)

eventos$id_oferta <- ifelse(eventos$id_oferta %in% portfolio$id, portfolio$oferta,0)

eventos$idade <- ifelse(eventos$cliente %in% clientes$id, clientes$idade, 0)

eventos$gen <- ifelse(eventos$cliente %in% clientes$id, clientes$genero, 0)

eventos$renda <- ifelse(eventos$cliente %in% clientes$id, clientes$renda_anual, 0)

eventos$membro <- ifelse(eventos$cliente %in% clientes$id, clientes$membro_desde, 0)

as.factor(eventos$gen)

eventos <- na.omit(eventos)

eventos$membro <- as.Date(as.character(eventos$membro),format="%Y%m%d")

eventos$membro <- format(eventos$membro, "%m/%d/%Y")

as.factor(eventos$gen)
as.tibble(eventos)

view(eventos)

summary(eventos)
