function a=hexaArray2bin128(A)
    a='';
        for i = 1:128
            y(i)=cellstr(num2hex(single(A(i))));
            a=[a,hexa2bin(y{i})];
        end
    
end  
