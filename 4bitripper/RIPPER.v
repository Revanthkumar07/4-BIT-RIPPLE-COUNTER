module RIPPER (clk, rstn, q);
  input clk, rstn;       
  output [3:0] q;        
  reg [3:0] q;
  
  always @(posedge clk or negedge rstn)
    if (!rstn)
      q[0] <= 0;
    else
      q[0] <= ~q[0];
  always @(negedge q[0] or negedge rstn)
    if (!rstn)
      q[1] <= 0;
    else
      q[1] <= ~q[1];
  always @(negedge q[1] or negedge rstn)
    if (!rstn)
      q[2] <= 0;
    else
      q[2] <= ~q[2];

  always @(negedge q[2] or negedge rstn)
    if (!rstn)
      q[3] <= 0;
    else
      q[3] <= ~q[3];

endmodule
