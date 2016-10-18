## Bank Tech-Test

#### How to run programme
1) cd in to directory; <br>
2) open irb in terminal; <br>
3) enter `require './lib/atm'`; <br>
4) create instance using `atm = ATM.new`; <br>
5) Play around. Methods are as follows:
  - .deposit(amount, date*)
  - .withdraw(amount, date*)
  - .print_statement

*
 date arguement included in above methods for sake of veriety

---

#### Progress points
1) Init project, Rspec & README file; `complete` <br>
2) Construct Account class - add_funds; `complete` <br>
3) Construct Account class - reduce_funds; `complete`<br>
4) Construct Account class - build_statement; `complete`<br>
5) Construct ATM class - deposit; `complete`<br>
6) Construct ATM class - withdraw; `complete`<br>
7) Construct ATM class - statement; `complete`<br>
8) refactor. `ongoing`

---

#### Full brief
Requirements

You should be able to interact with the your code via IRB. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).
Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012 And a deposit of 2000 on 13-01-2012 And a withdrawal of 500 on 14-01-2012 When she prints her bank statement Then she would see

| date | credit | debit | balance |
|------|--------|-------|---------|
|14/01/2012 |  |  500.00 | 2500.00|
|13/01/2012 | 2000.00 |    | 3000.00 |
|10/01/2012 | 1000.00 |  | 1000.00|
