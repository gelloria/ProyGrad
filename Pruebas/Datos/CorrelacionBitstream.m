function CorrelacionBitstream()
    
    entrada1 = fopen('Se_alReal-E-Bitstream.txt','r');
    entrada2 = fopen('Se_alPatronDisparos-Bitstream.txt','r');
    ceros= fopen('Ceros1024.txt','r');
    
    salida = fopen('Se_alReal-E-CorrelacionTeorica.txt','w');
    formato = '%f';
    
    a = fscanf(entrada1,formato);
    b = fscanf(entrada2,formato);
    c=fscanf(ceros,formato);
    
    %a=hexaArray2bin128(A);
    %b=hexaArray2bin(B);
    %c=hexaArray2bin128(Ceros);
    
    cont=0;
    CorrelacionAnt=512;
    
    while(cont<257)
    Correlacion = AlgoritmoCorrelacionBitstream(c,b);
    #[Correlacion, CorrelacionAnt] = FiltroMovil(Correlacion, CorrelacionAnt);
    fprintf(salida,'%s\n',num2str(Correlacion));
    [a, c] = ShiftRight(a,c);
    cont++;
    end
       
    fclose(entrada1);
    fclose(entrada2);
    fclose(salida);
end

