`timescale 1ns / 1ps

module lav_pwm(
	input clk,
	output led
	);
// Create a simple counter

reg [7:0] counter =0;
always @ (posedge clk) begin
	if (counter < 1000) counter<= counter +1; // count until 1000
	else counter <=0;// reset counter
end

// create 50% duty cycle

assign led = (counter<80) ? 1:0; // assign LED to 1 if counter value is less than 50
endmodule
