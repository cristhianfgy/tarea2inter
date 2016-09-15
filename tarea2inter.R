
#Pregunta 3
par_e_impar<- function(n){        
  pares = c()    
  impares = c()  
  for(i in 1:n){   
    if(i%%2==0) {
      pares<-c(pares,i)  
    }else{
      impares<-c(impares,i)
    }
  }
  cat("Grupo de Numeros impares","\n",impares,"\n")
  cat("Grupo de Numeros pares","\n",pares)
}

par_e_impar(20)


#Pregunta 4

data(iris)
data_cris<- iris[,-5]
data_cris
View(data_cris)

Media_1_n<- function(n){
  colSums(data_cris[1:n,])/n
}

Media_1_n(3)

prom_2<-function(h){
for(i in 1:h){
  promedio2<- round(Media_1_n(i),digits = 2)
  cat("Promedio para n =",i,"::","\n") 
  cat("                        ",promedio2,"\n")
  }
}  

prom_2(5)

#Pregunta 1

fibo<- function(n){

  if(n<=0){
    cat(paste0("Error in Fibonacci(",n,") : Proporcione valores enteros positivos"))
  }
  
  if(n==1){
    Fib<-c(0)
    print(Fib)
  }
  
  if(n==2){
    Fib<-c(1,1)
    print(c(0,Fib[-n]))
  }
  
  if(n>=3){
  Fib<-numeric(n)
  Fib[1]=Fib[2]=1
  Fib

  for(i in 3:n){
      Fib[i]= Fib[i-2]+Fib[i-1]
      }
  print(c(0,Fib[-n]))
  }
}

fibo(0)
fibo(0)
fibo(3)
fibo(4)
fibo(5)

#Pregunta 2

fibo2<- function(n){
    
    if(n<=0){
      cat(paste0("Error in Fibonacci(",n,") : Proporcione valores enteros positivos"))
    }
    
    if(n==1){
      Fib<-c(0)
      print(Fib)
    }
    
    if(n==2){
      Fib<-c(1,1)
      print(c(0,Fib[-n]))
    }
    
    if(n>=3){
      Fib<-numeric(n)
      Fib[1]=Fib[2]=1
      Fib
      i<-3
      while(i<=n){
        Fib[i]= Fib[i-2]+Fib[i-1]
        i<-i+1
      }
      print(c(0,Fib[-n]))
    }
  }

