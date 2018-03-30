### Reference of HW2
newton = function(func,dfunc,start,interval=NULL,iter=0){
  f = match.fun(func)
  df = match.fun(dfunc)
  new = start - f(start)/df(start)
  if(!is.null(interval)){
    if(new<min(interval)){
      new = runif(1,min(interval),max(interval))
      cat("bigger than interval! Set value as",new,"\n")
    } 
    if(new>max(interval)){
      new = runif(1,min(interval),max(interval))
      cat("bigger than interval! Set value as",new,"\n")    
    }     
  }
  if(abs(f(new)) < 1e-6){
    res = list(root=new,
               iter=iter+1,
               bias = abs(func(new)))
    return(res)
  }  
  newton(f,df,new,interval,(iter+1))
}

x <- c(-13.87,-2.53,-2.44,-2.40,-1.75,-1.34,-1.05,-0.23,-0.07,0.27,1.77,2.76,3.29,3.47,3.71,3.80,4.24,4.53,43.21,56.75)
cauchy =  function(theta){
  x = get("x")
  res = -length(x)*log(pi)- sum(log((theta -x)^2+1))
  return(res)
}
decauchy = function(theta){
  x = get("x")
  -2*sum( (theta-x)/(1+(theta-x)^2))
}

dedecauchy = function(theta){
  x = get("x")
  -2*sum( (1-(theta-x)^2)/(1+(theta-x)^2)^2 )
}

sapply(c(-1,0,1.4,4.1,7,38),function(start){
  newton(decauchy,dedecauchy,start)
}) 

plot(Vectorize(cauchy),xlim=c(-50,50))
plot(Vectorize(decauchy),xlim=c(-50,50))
