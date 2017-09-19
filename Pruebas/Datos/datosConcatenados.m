function datosConcatenadosPracticos ()
    entrada1 = fopen('tiempo2048.txt','r');
    entrada2 = fopen('Se_alGenerica-Correlacion-Seno1-Seno1-Teorica.txt','r');
    salida = fopen('Se_alGenerica-Correlacion-Seno1-Seno1-Teorica-Plot.txt','w');
    formato1 = '%f';
    formato2 = '%f';
    A = fscanf(entrada1,formato1);
    B = fscanf(entrada2,formato2);
    C = horzcat(A,B)
    fprintf(salida,'%.6f %1.6f\n',C);
    fclose(entrada1);
    fclose(entrada2);
    fclose(salida);
end



function datosConcatenadosTeoricos ()
    entrada1 = fopen('tiempo128.txt','r');
    entrada2 = fopen('Hexadecimal_C.txt','r');
    salida = fopen('SeñalMuestra1-Experimental.txt','w');
    formato1 = '%f';
    formato2 = '%f';
    A = fscanf(entrada1,formato1);
    B = fscanf(entrada2,formato2);
    C = horzcat(A,B)
    fprintf(salida,'%.6f %1.6f\n',C);
    fclose(entrada1);
    fclose(entrada2);
    fclose(salida);
end