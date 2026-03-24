-----CREATE DATABASE BankAccount
CREATE TABLE BankAccount(account_id int primary Key,account_holder_name varchar(50),account_balance int)
INSERT INTO BankAccount VALUES(100,'Harsh',30000)
INSERT INTO BankAccount VALUES(101,'Harish',40000)
INSERT INTO BankAccount VALUES(102,'Harini',5000)
INSERT INTO BankAccount VALUES(103,'Hasini',4000)


---Task 2: Retrieving Data
---Write an SQL SELECT statement to retrieve the account_holder_name and
----account_balance of all account holders from the BankAccount table.
SELECT account_holder_name, account_balance 
FROM BankAccount

 ---Task 3:Filtering Data
----Write an SQL SELECT statement to retrieve the account_holder_name and
----account_balance where the account_balance is more than 30,000
SELECT account_holder_name, account_balance 
FROM BankAccount
WHERE account_balance > 30000

---Task 4: Updating Data
---Write an SQL UPDATE statement to change the account_balance of the account
---holder whose ID is 101.
UPDATE BankAccount
SET account_balance = 45000
WHERE account_id = 101


SELECT * FROM BankAccount