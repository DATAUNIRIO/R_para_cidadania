#install.packages("PNADcIBGE")
#https://rpubs.com/BragaDouglas/335574
library(PNADcIBGE)
#How to disable scientific notation
options(scipen=999)

#VD4020 	Rendimento mensal efetivo de todos os trabalhos para pessoas de 14 anos ou mais de idade (apenas para pessoas que receberam em dinheiro, produtos ou mercadorias em qualquer trabalho)

#Importando os dados
variaveis_selecionadas <- c("UF", "VD4020")

#Para a importação do microdados de uma entrevista basta informar o número da entrevista desejada no parâmetro interview:
dadosPNADc_anual <- get_pnadc(year = 2018, interview = 1, vars = variaveis_selecionadas,savedir ="C:/Users/Steven/Desktop/Calculadora_Desigualdade/Temp/")
dadosPNADc_anual

library(survey)
# Decil de renda
quantisrenda <- svyquantile(~VD4020, dadosPNADc_anual, quantiles = seq(0, 1, length = 11), na.rm = T)
quantisrenda




