##================================================================================================
##                                                                                              
##    Nome: Funcao para calcular a posicao relativa da pessoa em relacao a PNADc                                           
##                                                    
##    Obs: tive que fazer um intervalo com 10% a mais ou a menos da mediana
##    prof. Steven Dutt-Ross                          
##    UNIRIO           
##================================================================================================

voce_e_a_PNAD<-function(x){
  # Funcao para o calculo da sua posição relativa (comparada com a PNAD)
  if (x<VD4020[2]){
    paste0("Você está entre os 10% mais pobres")
  } else
  if (x<VD4020[3]){
    paste0("Você está entre os 20% mais pobres")
  } else 
  if (x<VD4020[4]){
    paste0("Você está entre os 30% mais pobres")
  } else 
    if (x<VD4020[5]){
      paste0("Você está entre os 40% mais pobres")
  } else 
    if (x<VD4020[6]){
      paste0("Você está no valor mediano (50% da distribuição do rendimento)")
  } else 
    if (x<VD4020[7]){
      paste0("Você está no valor mediano (50% da distribuição do rendimento)")
  } else 
    if (x<VD4020[8]){
      paste0("Você está entre os 40% mais ricos")
  } else 
    if (x<VD4020[9]){
      paste0("Você está entre os 30% mais ricos")      
    } else 
    if (x<VD4020[10]){
      paste0("Você está entre os 20% mais ricos")      
    } else 
    if (x<VD4020[11]){
      paste0("Você está entre os 10% mais ricos")        
    }  
}

#ano<-2017
#decil <- c(0, 0.1, 0.2, 0.3,  0.4,  0.5,  0.6,  0.7,  0.8,  0.9,      1)
#VD4020<- c(0, 350, 800, 937, 1000, 1300, 1500, 2000, 2700, 4100, 700000)


