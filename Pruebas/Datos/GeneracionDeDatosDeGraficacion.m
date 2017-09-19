function datosSeno()
    I=linspace(0,2*pi,32);
    fid=fopen('Seno.txt','wt');
    A = [I; 10*sin(I)];
    fprintf(fid,'%.6f %1.6f\n',A);
    fclose(fid);
end

function datosSeno3()
    I=linspace(0,3*2*pi,32);
    fid=fopen('Seno3.txt','wt');
    A = [I; 10*sin(I)];
    fprintf(fid,'%.6f %1.6f\n',A);
    fclose(fid);
end

function datosSeno5()
    I=linspace(0,5*2*pi,32);
    fid=fopen('Seno5.txt','wt');
    A = [I; 10*sin(I)];
    fprintf(fid,'%.6f %1.6f\n',A);
    fclose(fid);
end


function datosTriangular()
    t1=0:1.67:10;
    t2=10:-1.67:0;
    rampa1=t1;
    rampa2=t2;
    rampa=[rampa1,rampa2,zeros(1,20)];
    I=linspace(0,2*pi,32);
    fid=fopen('Triangular.txt','wt');
    A = [I; rampa];
    fprintf(fid,'%.6f %1.6f\n',A);
    fclose(fid);
end


function datosAutocorrelacion()
    I=linspace(0,2*pi,32);
    J=linspace(0,2*pi,61);
    fid=fopen('AutocorrSeno.txt','wt');
    A = [J; xcorr(10*sin(I))];
    fprintf(fid,'%.6f %1.6f\n',A);
    fclose(fid);
end

function datosEscalon()
    I=linspace(0,2*pi,32);
    escalon=[zeros(1,8) ones(1,12) zeros(1,12)];
    fid=fopen('Escalon.txt','wt');
    A = [I; 10*escalon];
    fprintf(fid,'%.6f %1.6f\n',A);
    fclose(fid);
end

function datosCorrelacion1()
    I=linspace(0,2*pi,32);
    J=linspace(0,2*pi,63);
    escalon=[zeros(1,8) ones(1,12) zeros(1,12)];
    fid=fopen('Correlacion1.txt','wt');
    A = [J; xcorr(10*sin(I),10*escalon)];
    fprintf(fid,'%.6f %1.6f\n',A);
    fclose(fid);
end



function datosCorrelacion2()
    t1=0:1.67:10;
    t2=10:-1.67:0;
    rampa1=t1;
    rampa2=t2;
    rampa=[rampa1,rampa2,zeros(1,20)];
    
    I=linspace(0,3*2*pi,32);
    J=linspace(0,2*pi,63);

    fid=fopen('Correlacion2.txt','wt');
    A = [J; xcorr(10*sin(I),rampa)];
    fprintf(fid,'%.6f %1.6f\n',A);
    fclose(fid);
end


function datosCorrelacion3()
    H=linspace(0,3*2*pi,32);
    I=linspace(0,5*2*pi,32);
    J=linspace(0,2*pi,63);
    fid=fopen('Correlacion3.txt','wt');
    A = [J; xcorr(10*sin(H),10*sin(I))];
    fprintf(fid,'%.6f %1.6f\n',A);
    fclose(fid);
end




function datosTiempo()
    J=linspace(0,2*pi,256);
    fid=fopen('tiempo256.txt','wt');
    fprintf(fid,'%.6f\n',J);
    fclose(fid);
end



