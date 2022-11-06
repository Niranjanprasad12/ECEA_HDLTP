# ECEA_HDLTP


# WEEK 1
I'm choosing verilog for this training program....



# WEEK 2
Used structural design for the 2 bit adder.
will update the report soon :(




# Week 3

**Procedural Block**:

Set of instructions written inside the procedural block are known as procedural statements.

initial, always, if-else,for, while are some of the examples of procedural statements...

initial -> one time execution. Multiple initial blocks inside a file will run concurrently. Mostly used in writing testbenches
always -> triggered by event expression. It can run multiple times. Used to generate clock and model sequential circuits and some combinations circuits (We will use * in the place of event expression to model the combinational circuits)

Looking more into the assignments used in the procudural blocks

We have two types

*Blocking*

Statements are executed one by one. Mostly used to model combinations circuits.

*Non blocking*

The right hand side of the sequential statements are evaluated first and all of them are assigned concurrently to the left hand side. Mostly used to model sequential circuits. (Used in modeling ring counter)

**Three types of modeling (Actually four)**

*Data flow modeling*

*Behavioral modeling*

*Structural modeling*

*switch level modeling*

** Data flow modeling **

Identified with the help of assign statements. Assign statements are continuously driven statements. Assign statements are used only with net type variables.
Mostly used to model a combinational login but sometimes used in sequential logic also.

**Behavioral modeling**

Used to model the behaviour of complex circuit in a simple way. Used when we know the behavior but don't know about the circuit structure.


**Structural modeling**

It is used when we know the exact structure the circuit which has to be designed. We can use module hierarchy from top to bottom level. Bottom level conists of gates.


# WEEK 5

JK FLIP FLOP
![JKFF](https://user-images.githubusercontent.com/81733224/200177547-2751f922-00f8-4ccc-beb3-50c3bb1f10eb.jpeg)

D FLIP FLOP
![DFF](https://user-images.githubusercontent.com/81733224/200177565-f6338720-a64d-43ea-91a8-51c737df66be.jpeg)

COUNTER
![counter](https://user-images.githubusercontent.com/81733224/200177624-9fcc765e-8143-4668-bd32-463379a933e0.jpeg)



SERIAL IN SERIAL OUT SHIFT REGISTER
![SISO](https://user-images.githubusercontent.com/81733224/200177618-8c9a1fd6-ba59-4878-afef-67f63589b1e2.jpeg)


