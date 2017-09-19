function datosSeno()
    I=linspace(0,2*pi,32);
    fid=fopen('SenoDECIMAL.txt','wt');
    fprintf(fid,'%.6f\n',10*sin(I));
    fclose(fid);
end

function datosSeno3()
    I=linspace(0,3*2*pi,32);
    fid=fopen('Seno3DECIMAL.txt','wt');
    fprintf(fid,'%.6f\n',10*sin(I));
    fclose(fid);
end

function datosSeno5()
    I=linspace(0,5*2*pi,32);
    fid=fopen('Seno5DECIMAL.txt','wt');
    fprintf(fid,'%.6f\n',10*sin(I));
    fclose(fid);
end

function datosCeros()
    I=linspace(0,5*2*pi,32);
    fid=fopen('CerosDECIMAL.txt','wt');
    fprintf(fid,'%d\n',I*0);
    fclose(fid);
end


function datosTriangular()
    t1=0:1.67:10;
    t2=10:-1.67:0;
    rampa1=t1;
    rampa2=t2;
    rampa=[rampa1,rampa2,zeros(1,20)];
    fid=fopen('TriangularDECIMAL.txt','wt');
    fprintf(fid,'%.6f\n',rampa);
    fclose(fid);
end

function datosEscalon()
    I=linspace(0,2*pi,32);
    escalon=[zeros(1,8) ones(1,12) zeros(1,12)];
    fid=fopen('EscalonDECIMAL.txt','wt');
    fprintf(fid,'%.6f\n',10*escalon);
    fclose(fid);
end