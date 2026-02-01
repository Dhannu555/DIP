### **Arithmetic Coding Implementation in MATLAB**



--------------------------------------------------



#### Arithmetic Coding for Lossless Data Compression using MATLAB



--------------------------------------------------



##### DESCRIPTION:

This program implements the Arithmetic Coding algorithm for lossless

data compression. Arithmetic coding represents an entire message as a

single fractional number in the interval \[0, 1) based on symbol

probabilities.



Unlike Huffman coding, arithmetic coding does not assign fixed codewords

to symbols. Instead, it progressively narrows a range based on the

probability of each symbol in the message.



--------------------------------------------------



###### OBJECTIVES:

\- To understand arithmetic coding as a lossless source coding technique

\- To implement cumulative probability based interval narrowing

\- To encode a message into a single fractional value

\- To demonstrate compression using probability models



--------------------------------------------------



##### TECHNOLOGY USED:

Programming Language: MATLAB



--------------------------------------------------



##### INPUT PARAMETERS:

\- alphabets : Array of symbols used in the message

\- probabs   : Probability of each symbol (must sum to 1)

\- MESSAGE   : Input message to be encoded



##### Example:

alphabets = \["A", "B", "C", "D"]

probabs   = \[0.3 0.3 0.2 0.2]

MESSAGE   = 'ABBACD'



--------------------------------------------------



##### THEORY BACKGROUND:

Arithmetic coding works by assigning a cumulative probability range to

each symbol. Starting with the range \[0, 1), the range is repeatedly

narrowed based on the probability of each symbol in the message.



For each symbol:

\- New Low  = Low + (Range × Cumulative Probability)

\- New High = Low + (Range × (Cumulative Probability + Symbol Probability))



The final encoded value is any number within the final interval.



--------------------------------------------------



##### ALGORITHM STEPS:

1\. Initialize low = 0 and high = 1

2\. Compute cumulative probabilities of symbols

3\. For each symbol in the message:

&nbsp;  a. Find the symbol index

&nbsp;  b. Compute current range = high − low

&nbsp;  c. Update low and high using cumulative probabilities

4\. After processing all symbols, compute the average of final low and high

5\. The average value represents the encoded message



--------------------------------------------------



##### PROGRAM FLOW:

\- Initialize inputs and variables

\- Calculate cumulative probabilities

\- Iterate through each character of the message

\- Update interval boundaries after each character

\- Display intermediate and final encoding ranges

\- Output final encoded value



--------------------------------------------------



##### OUTPUT:

\- Updated interval after each symbol

\- Final encoded range for the entire message

\- Average value representing the compressed message



--------------------------------------------------



##### SAMPLE OUTPUT:

Initial range: \[0.000000 , 1.000000)



After A : \[0.000000 , 0.300000)

After B : \[0.090000 , 0.180000)

After B : \[0.117000 , 0.144000)

After A : \[0.117000 , 0.125100)

After C : \[0.120630 , 0.122250)

After D : \[0.121854 , 0.122250)



Encoded range for the message "ABBACD" is: \[0.121854 , 0.122250)

Assigned average value for the message is: 0.122052



--------------------------------------------------



##### FEATURES:

\- Supports custom alphabets and probabilities

\- Displays step-by-step interval updates

\- Implements correct arithmetic coding logic

\- Interactive input option available (commented)



--------------------------------------------------



##### APPLICATIONS:

\- Lossless data compression

\- Digital communication systems

\- Information theory

\- Source coding techniques



--------------------------------------------------



##### LIMITATIONS:

\- No decoding implemented

\- Assumes correct probability distribution

\- Precision depends on floating-point accuracy



--------------------------------------------------



##### CONCLUSION:

This program successfully demonstrates arithmetic coding by encoding an

entire message into a single fractional value using cumulative

probability intervals. It provides a clear and educational

implementation suitable for academic and lab use.



--------------------------------------------------



REFERENCES:

\- Lecture notes and classroom instruction by Prof. Tapan Jain,

&nbsp; Digital Image processing, Department of ECE, IIIT Nagpur.

\- MATLAB Documentation



--------------------------------------------------



