function a=hexaArray2bin(A)
    a='';
        for i = 1:32
            y(i)=cellstr(num2hex(single(A(i))));
            a=[a,hexa2bin(y{i})];
        end
    
end  
