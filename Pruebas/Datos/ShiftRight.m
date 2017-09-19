function  [A, B] =ShiftRight(a,b)
%    for i = 1:992
 %       A(i)=a(i+32); 
 %       B(i)=b(i+32);     
 %   end
 %   
 %   for i = 993:1024
 %       A(i)='0'; 
 %       B(i)=A(i-992);    
 %   end
    
    for i = 1:1016
        A(i)=a(i+8); 
        B(i)=b(i+8);     
    end
    
    for i = 1017:1024
        A(i)='0'; 
        B(i)=A(i-1016);    
    end
   
  end  
