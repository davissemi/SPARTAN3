# 2-bit comparator

This implements a 2-bit comparator, which takes 2 2-bit values and determines
the magnitude.  It implements the following truth table:

| a1,b1 | a0,b0 | a > b | a < b | a = b |
|-------|-------|-------|-------|-------|
| a1>b1 |   X   |   1   |   0   |   0   |
| a1<b1 |   X   |   0   |   1   |   0   |
| a1=b1 | a0>b0 |   1   |   0   |   0   |
| a1=b1 | a0<b0 |   0   |   1   |   0   |
| a1=b1 | a0=b0 |   0   |   0   |   1   |

On the Elbert V2, the switches and LEDs are configured thus:

D3: a = b
D2: a < b
D1: a > b

SW1: a[1]
SW2: a[0]
SW3: b[1]
SW4: b[0]

This project is functionally equivalent to the **two_bit_comparator** project,
only this one is implemented using behavioural modelling (the *_if* at the 
end).
