module tb;
  parameter data_width =8;
  parameter addr_width =6;
  localparam depth = 2**addr_width;
  reg clk,rst;
  reg [data_width-1:0]data;
  reg [addr_width-1:0]addr;
  reg mode;
  wire [data_width-1:0] out;
  integer i;
  
  single_port_ram dut(clk,rst,data,addr,mode,out);
  
  always #5 clk=~clk;
  
  initial begin
    clk=1;
    rst=1;
    mode=1'bx;
    data=0;
    addr=0;
    
    #10
    rst=0;
    
    mode=1;
    for(i=0;i<depth;i=i+1)begin
    addr=i;
      data=i;
      #10;
    end
    
    #10;
    mode=0;
    for(i=0;i<depth;i=i+1)begin
      addr=i;
      #10;
    end
    // for (i = 0; i < depth; i = i + 1) begin
    //   $display("RAM[%0d] = %0d", i, dut.ram[i]);          //uncommand to view data inside RAM
// end
    #20;$finish;
  end
  
  initial begin
    $monitor("time=%0t,mode=%b,addr=%d,data=%d,out=%d",$time,mode,addr,data,out);
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end

endmodule
