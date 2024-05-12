module Unit(
    input upSignal , //back sensor 
    input downSignal , //front sensor 
    input [1:0] Tcount, //number of tellers [1 , 2 ,3]
    input reset ,  // reset 
    output [4:0] Wtime , //expected waiting time 
    output  [2:0] Pcount ,// number of people in the queue
    output reg fullFlag , // 1 if the queue is full 
    output reg emptyFlag // 1 if the queue is empty  
); 

//making an instance of the counter 
Counter myCounter(
    .upSignal(upSignal) , 
    .downSignal(downSignal), 
    .reset(reset) , 
    .stateOutput(Pcount)  
);
// instance ROM
ROM myROM(
    .Pcount(Pcount), 
    .Tcount(Tcount),
    .Wtime(Wtime) 
);

//using dataflow to describe fullFlag
always @(Pcount) begin
    fullFlag = Pcount[0] && Pcount[1] && Pcount[2] ;/// if pcount[0]=1 && pcount[1]=1&& 
end                                                  // pcount[2]==1 then queue is full 
                                                     // 111==7  if false then  empty
always @(Tcount) begin
    if (Tcount == 0) begin
         $warning (  "number of tellers can't be 0!!"  ) ; 
    end
end

//emptyFlag is the inverted version of full flag 
always @(Pcount) begin
    emptyFlag = ~(Pcount[0] || Pcount[1] || Pcount[2]) ; 
end

endmodule