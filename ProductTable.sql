use WFA3DotNet

---Creation of Table with constraints
--Q1 Create a Table Product
create table Products(
          ProductId int not null primary key identity(1,1),
		  Descriptions varchar(30) not null UNIQUE,
		  SetQty int not null
		  CHECK (SetQty=1 OR SetQty=5 OR Setqty=10)
          DEFAULT 1,
		  Rate decimal(10,2)
		  Check(Rate >=51 And Rate<=5000)
		  )
--Q2 Insert 20 records in the above Product table
insert into Products values('Titan',1,788.78)
insert into Products values('Fastrack',5,767.25)
insert into Products values('Sonata',10,123.76)
insert into Products values('Fossil',1,2345.67)
insert into Products values('Casio',5,2456.78)
insert into Products values('ESPRIT',5,435.87)
insert into Products values('Luminox',5,3245.65)
insert into Products values('Rolex',10,2345.75)
insert into Products values('Blancpain',5,1788.58)
insert into Products values('Panerai',1,288.48)
insert into Products values('Cartier',5,791.08)
insert into Products values('Omega',10,145.86)
insert into Products values('Bremont',1,234.79)
insert into Products values('Corum',5,123.65)
insert into Products values('Hublot',10,788.03)
insert into Products values('Citizen',1,456.34)
insert into Products values('Tommy Hilfiger',1,3467.83)
insert into Products values('Maxima',5,785.46)
insert into Products values('Zenith',10,342.45)
insert into Products values('Rado',5,896.72)
select * from Products;

--Q3 Update all the rates with 10% rate hike
update products set rate=rate*1.1 

--Q4 Delete last record by providing the productId
delete from products where ProductId=20

--Q5 Alter the above table and add the following column
alter table products add Margincode char(1)
check(Margincode='A'or Margincode='B' or Margincode=NULL)

--Q6 Update few Records to set Margincode to A and some records Margincode to B
update products set Margincode='A' where ProductId<5
update products set Margincode='B' where ProductId>7

--Q7Update all the SetQty to 10 for all Items which have MarginCode A and whose original SetQty is 1

update products set SetQty=10 where Margincode='A' and SetQty=1

