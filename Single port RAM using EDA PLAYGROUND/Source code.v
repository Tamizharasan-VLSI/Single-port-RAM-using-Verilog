module single_port_ram #(parameter data_width =8,
                         parameter addr_width =6)
  (input clk,rst,
    input [data_width-1:0]data,
    input [addr_width-1:0]addr,
  input mode,
    output reg [data_width-1:0] out);
  
  localparam depth = 2**addr_width;
  reg [data_width-1:0] ram[depth-1:0];

  always@(posedge clk or posedge rst)begin
    if(rst)begin
      out <= 8'bx;
    end
    
    else begin
      if(mode)begin
        ram[addr] <= data;
    end
    
    else begin
      out <= ram[addr];
  end
  end
  end
  endmodule

