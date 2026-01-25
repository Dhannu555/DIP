# **Tambola Ticket Generator (MATLAB)**



This project implements a rule-correct Tambola (Housie) ticket generator using MATLAB.

It generates a valid 3×9 Tambola ticket by strictly following all standard Tambola constraints through a clean, modular, function-based design.



#### **Features**



* Generates one valid Tambola ticket
* Enforces all official Tambola rules
* Modular and readable MATLAB functions
* Automatic retry until a valid ticket is generated
* No hardcoding of values
* Easy to extend (e.g., full strip of 6 tickets)





#### **Tambola Rules Implemented**



* Ticket size: 3 rows × 9 columns
* Total numbers per ticket: 15
* Numbers per row: 5
* Numbers per column: 1 to 3
* Number range: 1 to 90

###### 

###### Column-wise number ranges:

1. Column 1 → 1–9
2. Column 2 → 10–19
3. Column 3 → 20–29
4. Column 4 → 30–39
5. Column 5 → 40–49
6. Column 6 → 50–59
7. Column 7 → 60–69
8. Column 8 → 70–79
9. Column 9 → 80–90

* Numbers in each column are sorted top to bottom
* No duplicate numbers
* Blank cells are allowed



#### 

#### **Design Approach**



The solution is divided into two independent phases:

* Structure generation
* Decides where numbers will be placed
* Ensures row and column constraints
* Number assignment
* Generates valid numbers within column ranges
* Maintains ordering and uniqueness
* This separation makes the logic clean, reliable, and easy to debug.





#### **Project Structure**



tambola/

│

├── generateTambolaTicket.m     % Main controller function

├── generateColumnCounts.m      % Decides numbers per column

├── generateStructure.m         % Generates ticket structure

├── validateStructure.m         % Validates structure constraints

├── getColumnRange.m            % Returns valid column ranges

├── generateColumnNumbers.m     % Generates numbers for a column

├── fillTicket.m                % Fills numbers into the ticket

├── validateTicket.m            % Final ticket validation

└── README.md                   % Project documentation



#### 

#### **How to Run**



1. Open MATLAB
2. Place all .m files in the same directory
3. Run the following command:
4. ticket = generateTambolaTicket()



#### 

#### **Output Format**



* Output is a 3×9 matrix
* 0 represents a blank cell
* All non-zero values form a valid Tambola ticket
* Example Output

&nbsp;    0     14      0     32      0     58      0     71     83

&nbsp;    5      0     27      0     44      0     66      0     90

&nbsp;    9      0      0     39     48      0      0     75      0



#### 

#### **Validation Strategy**



* Structure validation
* Ensures correct number of slots per row and column
* Numerical validation
* Ensures valid ranges, uniqueness, and sorting
* Retry mechanism
* Invalid attempts are discarded automatically





#### **Author**



Dhananjay Agrahari

