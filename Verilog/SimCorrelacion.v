`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2016 01:49:22 AM
// Design Name: 
// Module Name: SimCorrelacion
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SimCorrelacion();

    reg Bitstream;
    reg Clk, Reset;
    reg Read;
    
    wire[10:0] Data_Out;
    wire Flag;
    
    Correlacion uut(Bitstream,Clk,Read,Reset,Data_Out,Flag);
    
    
    initial forever
        begin
            #5 Clk=~Clk;        
        end
        
    initial begin
        Clk=0;
        Reset=1;
        
        #20 Reset=0;
        
        
        //Patron
        
        #50
        
        InsertarByte(8'd173);
        
        InsertarByte(8'd109);
        
        InsertarByte(8'd221);
        
        //InsertarByte(8'd222);
        
        //InsertarByte(8'd214);
        
        //InsertarByte(8'd148);
        
        //InsertarByte(8'd237);
        
        //InsertarByte(8'd173);
        
        ///InsertarByte(8'd90);
        
        //InsertarByte(8'd219);
        
        //Muestras
        
        fork
            begin
                InsertarByte(8'd173);
                        
                InsertarByte(8'd107);
                
                InsertarByte(8'd110);
                    
                    
            end
            
            begin
                @(posedge Flag);
                    
                $display("Hola");
                $display(Data_Out==11'd1011 ? "Valor Correcto" : "Valor Incorrecto");
                
                @(posedge Flag);
                $display(Data_Out==11'd1012 ? "Valor Correcto" : "Valor Incorrecto");               
                                    
                @(posedge Flag);
                $display(Data_Out==11'd1017 ? "Valor Correcto" : "Valor Incorrecto");
            
            end
        
        join
        
        
                
        
        //InsertarByte(8'd173);
        
        //InsertarByte(8'd74);
        
        //InsertarByte(8'd219);
        
        //InsertarByte(8'd90);
        
        //InsertarByte(8'd214);
        
        //InsertarByte(8'd213);
        
        //InsertarByte(8'd107);
        
        #50 $finish;
        
        
    end
    
    task InsertarByte(input[7:0] Byte);
        //input[7:0] Byte;
        begin
            
        
        //Primer bit
            InsertarBit(Byte[0]);
        
        //Segundo bit
            InsertarBit(Byte[1]);
        
        //Tercer bit
            InsertarBit(Byte[2]);
        
        //Cuarto bit        
            InsertarBit(Byte[3]);
        
        //Quinto bit
            InsertarBit(Byte[4]);
        
        //Sexto bit
            InsertarBit(Byte[5]);
        
        //Setimo bit
            InsertarBit(Byte[6]);
        
        //Octavo bit
            InsertarBit(Byte[7]);
            
        end
        
    
    endtask: InsertarByte
    
    task InsertarBit(input Bit);
        //input Bit;
        begin
    
            
        
            #50
                
            #10 Bitstream = Bit;
        
            #10 Read = 1;
        
            #50 Read = 0;
            
        end
        
    
    endtask: InsertarBit
    
endmodule
