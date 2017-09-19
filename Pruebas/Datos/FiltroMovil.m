function  [A, B] =FiltroMovil(a,b)
    #A=a;
    #B=b;
    var = (a+b)/2;
    B=a;
    A=var;
  end  
