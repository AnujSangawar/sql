
--que1)write a sql query for a report that provide the following information for each person in the person table regardless is there is an address for each of those people:

create table person(
personid int,
firstname varchar(20),
lastname varchar(20),
primary key (personid)
)

create table address(
addressid int,
personid int,
city varchar(20),
state varchar(20),
primary key (addressid)
)

insert into person
values(101,'anuj','jackson'),
(102,'amol','williamsons'),
(103,'sharman','shakespare'),
(104,'rushikesh','alexzander'),
(105,'ruturaj','kane'),
(106,'shashank','thomas'),
(107,'nishant','iyer');


insert into address
values(1,101,'pune','maharashtra'),
(2,102,'nagpur','maharashtra'),
(3,103,'pune','maharashtra'),
(4,104,'nagpur','maharashtra'),
(5,105,'mumbai','maharashtra'),
(6,106,'mumbai','maharashtra'),
(7,107,'mumbai','maharashtra');

select p.firstname,p.lastname,a.city,a.state
from person p
inner join address a
on p.personid=a.personid
