## Bank Tech-Test

#### How to run programme

---

#### Progress points
1) Init project, Rspec & README file; `complete` <br>
2) Construct Account class - add_funds; `complete` <br>
3) Construct Account class - reduce_funds; `complete`<br>
4) Construct Account class - build_statement; <br>
5) Construct ATM class - deposit; <br>
6) Construct ATM class - withdraw; <br>
7) Construct ATM class - statement; <br>

---

#### Full brief
Requirements

You should be able to interact with the your code via IRB. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).
Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012 And a deposit of 2000 on 13-01-2012 And a withdrawal of 500 on 14-01-2012 When she prints her bank statement Then she would see

--- date ---|| - credit - || - debit - || - balance -  <br>
14/01/2012 || -------- ||  500.00 || 2500.00 <br>
13/01/2012 || 2000.00 || --------|| 3000.00 <br>
10/01/2012 || 1000.00 || -------- || 1000.00
