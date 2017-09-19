function Correlacion=AlgoritmoCorrelacionBitstream(a,b)
    Correlacion =0;
    for i = 1:1024
      regCorrelacion=num2str(xnor(a(i),b(i)));
      if(regCorrelacion=='1')
      Correlacion++;
      end 
    end
end  



