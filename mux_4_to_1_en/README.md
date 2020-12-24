This project implements a 4-to-1 mux (with enable) with the following truth table:

|en|s1|s0|y |
|--|--|--|--|
|0 | X| X| 0|
|1 |0 |0 |x0|
|1 |0 |1 |x1|
|1 |1 |0 |x2|
|1 |1 |1 |x3|

Where

- SW8:  en
- SW7:  s1
- SW6:  s0
- SW0:  x0
- SW1:  x1
- SW2:  x2
- SW3:  x3
- D8:   y
