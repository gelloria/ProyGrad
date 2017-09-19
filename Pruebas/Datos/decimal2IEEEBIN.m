function decimal2IEEEBIN()
    entrada = fopen('SenoDECIMAL.txt','r');
    salida = fopen('SenoBINARIO.txt','w');
    formato = '%f';
    A = fscanf(entrada,formato);
        for i = 1:32
            y(i)=cellstr(num2hex(single(A(i))));
            fprintf(salida,'%s\n',hexa2bin(y{i}));
        end     
    fclose(entrada);
    fclose(salida);
end