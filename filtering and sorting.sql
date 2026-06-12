use bankingdb;

select * from accounts where accounttype in ("Current", "savings");


-- Top 5 balance from accountype
SELECT * FROM Accounts
ORDER BY Balance DESC LIMIT 5;


-- Top form savings by balance
SELECT * FROM Accounts where accounttype= "savings"
ORDER BY Balance DESC
LIMIT 3;

-- customers name starts with alter
select * from customers where firstname like "A%";

select * from customers where lastname like "%kar";

select * from customers where Emailid like "%gmail%";

-- 
select firstname as name from customers;

-- string function
select firstname, lastname,concat(firstname," ", lastname) as FullName from customers;

-- uppercase and lowercase

select upper(firstname) as FirstName from customers;
select lower (lastname) as lastname from customers;

-- substring
select firstname,substring(firstname,2,3)from customers; 

-- replace
select replace("hello world","world","SQL") as replaced_string;

