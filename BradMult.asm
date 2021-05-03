@R0             // first input load in into temp
D=M

@R3             // set R3 to our decerementor
M=D

D;JEQ           // END if R3 = 0

(LOOP)
    @R1         // load 2nd input into temp
    D=M

    @R2         // accumulator / result
    M=D + M     // load first input into result

    @R3         // decrementor if input 2
    M=M - 1
    D=M

    @LOOP
    D;JGT       // loop again if D is greater than 0

(END)
    @END
    0;JMP