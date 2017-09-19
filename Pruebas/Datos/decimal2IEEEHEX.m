function decimal2IEEEHEX()
    entrada = fopen('SeñalMuestra1DECIMAL.txt','r');
    salida = fopen('SeñalMuestra1HEXA.txt','w');
    formato = '%f';
    A = fscanf(entrada,formato);
        for i = 1:128
            y(i)=cellstr(num2hex(single(A(i))));
            fprintf(salida,'%s\n',y{i});
        end     
    fclose(entrada);
    fclose(salida);
end