
ano<-2017
decil <- c(0, 0.1, 0.2, 0.3,  0.4,  0.5,  0.6,  0.7,  0.8,  0.9,      1)
VD4020<- c(0, 350, 800, 937, 1000, 1300, 1500, 2000, 2700, 4100, 700000)

decil <- decil[2:10]
VD4020<-VD4020[2:10]
banco<-data.frame(decil=decil,VD4020=VD4020)
banco$decil<-as.factor(banco$decil)

COR1<-rep("#31688e",9)
COR1[3]<-"red"

library(ggplot2)
library(ggthemes)
grafico<- ggplot(data = banco) +
  aes(x = decil, weight = VD4020) +
  geom_bar(fill = COR1) +
  labs(title = "Posição",
       x = "Distribuição do Rendimento",
       y = "Rendimento",
       caption = "Fonte: IBGE",
       subtitle = "relativa") +
  theme_solarized()



