#Schems is a database

# inside the schems we have lots table and every table we have lots of data 

#drop database DB67;
# drop database sql5;
 use DB6;
 
 create table Student(Id integer,Name varchar(30),class integer);
 
 insert into Student(Id,Name,class)
 values(1,"Soumen",5);
 select * from Student;
 
 #DQL COMMEND (80%) data query language 
 # SELECT
 # SELECT * from table ---------> Srar (*) means everythings in the table
 # Table is like a GiftBox inside the Box can be have lost of gift one item can be 3-5 pise 
 
 
 use DB6;
 create table Teacher(id integer primary key,Name varchar(30),Subject varchar(20),Age integer);
 
 insert into Teacher(id ,Name,Subject,Age)
 values(1,"Azad","All",35);
 select * from  Teacher;
 
 insert into Teacher(id ,Name,Subject,Age)
 values(2,"Bodzzad","All",30);
 select * from  Teacher;
 
 #select Name from Teacher; * mean every thing if we need spacifie thing from the table we have to give the name ..