create database InternetServiceProvider
create table Customers
(
	Customer_ID		varchar(10)			primary key,
	Customer_Name	varchar(50)		not null,
	Email			varchar(100)	not null  unique,
	Phone_Number	varchar(20)		not null,
	Address			varchar(200)	not null,
	status			char(1)			not null check(status='A' or status='I')
)
 drop table Customers
 select * from Customers

 insert into Customers values('C001','Pardhu','lankapardhu@gmail.com','7416220222','Vijayawada','A');
 insert into Customers values('C002','Vasanth','Vasanth01@gmail.com','8456923846','Guntur','A');
 insert into Customers values('C003','Sri Latha','srilatha56@gmail.com','6428523786','Nellore','I');
 insert into Customers values('C004','Annapurna','Annapurna89@gmail.com','9284663655','Tirupati','I');
 insert into Customers values('C005','Bhanu kiran','bhanukiran@gmail.com','7356837482','Anantapur','A');
 insert into Customers values('C006','Thanishka','thanishkareddy@gmail.com','8236517222','Kadiri','A');
 insert into Customers values('C007','Chandrashekar','chandukatakam@gmail.com','9476286333','Machilipatnam','I');
 insert into Customers values('C008','Vasavi','vasavi97@gmail.com','9284638627','Vijayawada','A');
 insert into Customers values('C009','Lohith kumar','lohithakula@gmail.com','7348746528','Ongole','I');
 insert into Customers values('C010','Sai kumar','saiakula@gmail.com','635812715','Kurnool','A');
 

create table ISP
(
	ISP_ID			varchar(10)			primary key,
	ISP_name		varchar(60)		not null,
	ISP_Address		varchar(30)		not null,
	Contact_Number	varchar(10)		not null,
	Email			varchar(30)		not null,
)
drop table ISP
select * from ISP
insert into ISP values('SP001','Reliance jio infocamm limted','Mumbai','09587-3458','reliancejio@gmail.com');
insert into ISP values('SP002','Bharati airtel limted','Delhi','05543-6785','Bharatiairtel@gmail.com');
insert into ISP values('SP003','Vodafone Idea limted','Gandhinagar','09687-8674','Vodafoneidea@gmail.com');
insert into ISP values('SP004','Bharat Sanchar Nigam limted','Delhi','05367-9876','BSNL0@gmail.com');
insert into ISP values('SP005','Excitel Broadband','Delhi','03539-4674','Excitelbroad@gmail.com');
insert into ISP values('SP006','Hathway Cables and datacom limted','Mumbai','08754-3978','Hathwaydatacom@gmail.com');
insert into ISP values('SP007','Tata communications limted','Mumbai','08656-0868','Tatacomunications@gmail.com');
insert into ISP values('SP008','You Broadband','Mumbai','27935-0475','youbroadband@gmail.com');
insert into ISP values('SP009','Gigatel Networks','South Delhi','76785-0912','Gigatelnetworks@gmail.com');
insert into ISP values('SP010','ACT Broadband','Bangalore','29387-2049','ACTbroadband@gmail.com');



 
create table Employees
(
	Employees_ID		varchar(10)		primary key,
	ISP_ID				varchar(10)		foreign key references ISP(ISP_ID),
	Employee_name		varchar(30)	not null,
	Position			varchar(40)	null,
	Salary				money		null,
)
drop table Employees
select * from Employees

insert into Employees values('E001','SP001','Deepak Naidu','System Administrator',120000);
insert into Employees values('E002','SP002','Yashwanth Reddy','Network Support Engineer',100000);
insert into Employees values('E003','SP003','Thirumalesh','Technical support Engineer',90000);
insert into Employees values('E004','SP004','Rajitha','Executive-Network Engineer',180000);
insert into Employees values('E005','SP005','Sunny Subhakar','Network Support Engineer',120000);
insert into Employees values('E006','SP006','Likitha','Network Transportation manager',150000);
insert into Employees values('E007','SP007','Mounika','Network Engineer',100000);
insert into Employees values('E008','SP008','Jaswanth setty','System Administrator',150000);
insert into Employees values('E009','SP009','Mohan Nayak','Technical Support Engineer',90000);
insert into Employees values('E010','SP010','Gayatri Devi','System Administrator',160000);



create table Service_plans
(
	Plan_ID			varchar(10)			primary key,
	Plan_Name		varchar(100)	not null,
	Download_Speed	varchar(20)			not null,
	Upload_Speed	varchar(20)			not null,
	Plan_Price	money			not null,
	Data_Limit		varchar(20)			not null,
)

insert into Service_plans values('P001','Data Sachet plan','100 Mbps','67 Mbps',199,'Unimited');
insert into Service_plans values('P002','Semi-Annual plan','30 Mbps','20 Mbps',2394,'Unimited');
insert into Service_plans values('P003','Quarterly plan','30 Mbps','20 Mbps',1197,'Unimited');
insert into Service_plans values('P004','Annual plan','30 Mbps','30 Mbps',4788,'Unimited');
insert into Service_plans values('P005','Monthly plan','150 Mbps','100 Mbps',999,'Unimited');
insert into Service_plans values('P006','Annual plan','150 Mbps','100 Mbps',8388,'Unimited');
insert into Service_plans values('P007','Quarterly plan','500 Mbps','300 Mbps',4497,'Unimited');
insert into Service_plans values('P008','Semi-Annual plan','1 Gbps','500 Mbps',23994,'Unimited');
insert into Service_plans values('P009','Annual plan','1 Gbps','700 Mbps',101988,'6600GB/Month');
insert into Service_plans values('P010','Airtel Standard Broadband plan','100 Mbps','67 Mbps',8150,'Unimited');
insert into Service_plans values('P011','Airtel Entertainment Broadband plan','200 Mbps','167 Mbps',5544,'Unimited');
insert into Service_plans values('P012','Airtel Professional Broadband plan','1 Gbps','600 Mbps',11997,'Unimited');
insert into Service_plans values('P013','Airtel Infinity Broadband plan','1 Gbps','700 Mbps',22194,'Unimited');
insert into Service_plans values('P014','BSNL Fibre Rural HOME wifi','30 Mbps upto 1000GB','17 Mbps',4788,'Unimited');


drop table Service_plans
select *from Service_plans

create table Subscriptions
(
	Subscription_ID		varchar(10)			primary key,
	Customer_ID			varchar(10)			foreign key references Customers(Customer_ID),
	Plan_ID				varchar(10)			foreign key references Service_plans(Plan_ID),
	Start_Date			date			not null,
	End_Date			date			not null,
)
drop table Subscriptions
select * from Subscriptions
insert into Subscriptions values('S001','C001','P001','2023-01-01','2023-01-28');
insert into Subscriptions values('S002','C002','P002','2023-02-01','2023-08-28');
insert into Subscriptions values('S003','C003','P003','2023-03-01','2023-07-28');
insert into Subscriptions values('S004','C004','P004','2023-01-01','2024-01-01');
insert into Subscriptions values('S005','C005','P005','2023-04-01','2023-05-28');
insert into Subscriptions values('S006','C006','P006','2023-05-01','2024-04-28');
insert into Subscriptions values('S007','C007','P007','2023-06-01','2023-09-28');
insert into Subscriptions values('S008','C008','P008','2023-06-01','2023-11-28');
insert into Subscriptions values('S009','C009','P009','2023-07-01','2024-06-28');
insert into Subscriptions values('S010','C010','P010','2023-01-01','2023-02-28');
insert into Subscriptions values('S011','C001','P011','2023-02-01','2023-04-28');
insert into Subscriptions values('S012','C002','P012','2023-03-01','2023-05-28');
insert into Subscriptions values('S013','C003','P013','2023-05-01','2023-07-28');
insert into Subscriptions values('S014','C004','P014','2023-06-01','2023-08-28');
insert into Subscriptions values('S015','C005','P001','2023-01-01','2023-01-28');
insert into Subscriptions values('S016','C006','P002','2023-02-01','2023-08-28');
insert into Subscriptions values('S017','C007','P003','2023-03-01','2023-07-28');
insert into Subscriptions values('S018','C008','P004','2023-01-01','2024-01-01');
insert into Subscriptions values('S019','C009','P005','2023-05-01','2023-06-28');
insert into Subscriptions values('S020','C010','P006','2023-06-01','2024-05-28');
insert into Subscriptions values('S021','C001','P007','2023-05-01','2023-08-28');
insert into Subscriptions values('S022','C002','P008','2023-04-01','2023-09-28');
insert into Subscriptions values('S023','C003','P001','2023-01-01','2023-01-28');


create table Billing
(
	Bill_ID				varchar(10)		primary key,
	Subscription_ID		varchar(10)			foreign key references Subscriptions(Subscription_ID),
	Bill_Date			date			not null,
	due_Date			date			not null,
	Amount				money			not null,
	Payment_Status		varchar(10)		not null check(Payment_Status='Paid' or Payment_Status='Not Paid'),
)
drop table Billing
select * from Billing

insert into Billing values('B001','S001','2023-01-01','2023-01-15',199,'Paid');
insert into Billing values('B002','S002','2023-02-01','2023-04-15',2394,'Not Paid');
insert into Billing values('B003','S003','2023-03-01','2023-05-15',1197,'Paid');
insert into Billing values('B004','S004','2023-01-01','2023-06-15',4788,'Paid');
insert into Billing values('B005','S005','2023-04-01','2023-04-15',999,'Not Paid');
insert into Billing values('B006','S006','2023-05-01','2023-05-15',8388,'Not Paid');
insert into Billing values('B007','S007','2023-06-01','2023-07-15',4497,'Paid');
insert into Billing values('B008','S008','2023-06-01','2023-08-15',23994,'Paid');
insert into Billing values('B009','S009','2023-07-01','2024-01-15',101988,'Paid');
insert into Billing values('B010','S010','2023-01-01','2023-02-01',8150,'Not Paid');



create table Technical_Support
(
	Support_ID			varchar(10)			primary key,
	Subscription_ID		varchar(10)			foreign key references Subscriptions(Subscription_ID),
	Customer_ID			varchar(10)			foreign key references Customers(Customer_ID),
	Support_Date			date			NOT NULL,
	Support_Description	varchar(500)	not null,
)
drop table Technical_Support
select * from Technical_Support
insert into Technical_Support values('SP001','S001','C001','2023-02-01','Excellent Speed');
insert into Technical_Support values('SP002','S002','C002','2023-09-01','Some what slow');
insert into Technical_Support values('SP003','S003','C003','2023-08-01','Some what slow');
insert into Technical_Support values('SP004','S004','C004','2024-01-01','Some what slow');
insert into Technical_Support values('SP005','S005','C005','2023-06-01','Excellent Speed');
insert into Technical_Support values('SP006','S006','C006','2024-05-01','Better');
insert into Technical_Support values('SP007','S007','C007','2023-10-01','Excellent Speed');
insert into Technical_Support values('SP008','S008','C008','2023-12-01','Excellent Speed');
insert into Technical_Support values('SP009','S019','C009','2024-07-01','Excellent Speed');
insert into Technical_Support values('SP010','S010','C010','2023-03-01','Better');
insert into Technical_Support values('SP011','S011','C011','2023-05-01','Excellent Speed');



create table Equipment_Inventory
(
	Equipment_ID		varchar(10)			primary key,
	ISP_ID				varchar(10)			foreign key references ISP(ISP_ID),
	Equipment_Name		varchar(100)		not null,
	Equipment_Type		varchar(50)			not null,
	Purchase_Date		date				 null,
)
select * from Equipment_Inventory
insert into Equipment_Inventory values('E001','SP001','Routers','Hardware','2020-02-15');
insert into Equipment_Inventory values('E002','SP002','UPS batteries','Hardware','2020-01-01');
insert into Equipment_Inventory values('E003','SP003','Routers','Hardware','2022-04-17');
insert into Equipment_Inventory values('E004','SP004','Service Cable','Hardware','2023-05-25');
insert into Equipment_Inventory values('E005','SP005','UPS batteries','Hardware','2021-02-05');
insert into Equipment_Inventory values('E006','SP006','Routers','Hardware','2022-03-25');
insert into Equipment_Inventory values('E007','SP007','Service cable','Hardware','2022-08-14');
insert into Equipment_Inventory values('E008','SP008','UPS batteries','Hardware','2023-09-18');
insert into Equipment_Inventory values('E009','SP009','Routers','Hardware','2023-12-19');
insert into Equipment_Inventory values('E010','SP010','Routers','Hardware','2023-10-20');

drop table Equipment_Inventory

create table Location
(
	Location_ID		varchar(10)		primary key,
	ISP_ID			varchar(10)		foreign key references ISP(ISP_ID),
	Location_Name	varchar(20)		not null,
	city			varchar(20)		not null,
	country			varchar(20)		not null,
)

insert into Location values('L001','SP001','Balaji colony','Tirupati','India');
insert into Location values('L002','SP002','Air bypass road','Tirupati','India');
insert into Location values('L003','SP003','Gandhinagar','Vijayawada','India');
insert into Location values('L004','SP004','Padamata','Vijayawada','India');
insert into Location values('L005','SP005','Panvel','Mumbai','India');
insert into Location values('L006','SP006','Palani Nagar','Chennai','India');
insert into Location values('L007','SP007','Hassannagar','Hubli','India');
insert into Location values('L008','SP008','Pambanagar','Kochi','India');
insert into Location values('L009','SP009','SR nagar','Hyderabad','India');
insert into Location values('L010','SP010','Bidhannagar','Kolkata','India');

drop table Location

create	table Service_Outage
(
	Outage_ID		varchar(10)		primary key,
	ISP_ID			varchar(10)		foreign key references ISP(ISP_ID),
	Outage_start_date	date	not null,
	Outage_end_date	date		not null,
	Outage_description	 varchar(200) null,
)
drop table Service_Outage
insert into Service_Outage values('O001','SP001','2023-01-01','2023-01-02','Congestion');
insert into Service_Outage values('O002','SP002','2023-01-02','2023-01-02','Failed link to provider');
insert into Service_Outage values('O003','SP003','2023-01-01','2023-01-02','Equipment failure');
insert into Service_Outage values('O004','SP004','2023-03-05','2023-03-06','Operator error');
insert into Service_Outage values('O005','SP005','2023-05-07','2023-05-08','Congestion');
insert into Service_Outage values('O006','SP006','2023-10-10','2023-10-11','Equipment failure');
insert into Service_Outage values('O007','SP007','2023-11-18','2023-11-20','Router malfunction');
insert into Service_Outage values('O008','SP008','2023-07-12','2023-07-12','Failed link to provider');
insert into Service_Outage values('O009','SP009','2023-01-23','2023-01-24','Bad weather');
insert into Service_Outage values('O010','SP010','2023-12-25','2023-12-26','Congestion');

select * from Service_Outage

create table Bandwidth_Allocation
(
	Bandwidth_ID	varchar(10)		primary key,
	Customer_ID		varchar(10)		foreign key references Customers(Customer_ID),
	Plan_ID			varchar(10)		foreign key references Service_plans(Plan_ID),
	Bandwidth_amount varchar(20)  null,
	Start_date		date	null,
	End_date		date	null,
)
insert into Bandwidth_Allocation values('BW001','C001','P001','45Mbps','2023-01-01','2023-01-28');
insert into Bandwidth_Allocation values('BW002','C002','P002','20Mbps','2023-02-01','2023-08-28');
insert into Bandwidth_Allocation values('BW003','C003','P003','20Mbps','2023-03-01','2023-07-28');
insert into Bandwidth_Allocation values('BW004','C004','P004','20Mbps','2023-01-01','2024-01-28');
insert into Bandwidth_Allocation values('BW005','C005','P005','100Mbps','2023-04-01','2023-05-28');
insert into Bandwidth_Allocation values('BW006','C006','P006','100Mbps','2023-05-01','2024-04-28');
insert into Bandwidth_Allocation values('BW007','C007','P007','300Mbps','2023-06-01','2023-09-28');
insert into Bandwidth_Allocation values('BW008','C008','P008','700Mbps','2023-06-01','2023-11-28');
insert into Bandwidth_Allocation values('BW009','C009','P009','500Mbps','2023-07-01','2024-06-28');
insert into Bandwidth_Allocation values('BW010','C010','P010','70Mbps','2023-01-01','2023-02-28');
insert into Bandwidth_Allocation values('BW011','C001','P011','170Mbps','2023-02-01','2023-04-28');
insert into Bandwidth_Allocation values('BW012','C002','P012','700Mbps','2023-03-01','2023-05-28');
insert into Bandwidth_Allocation values('BW013','C003','P013','800Mbps','2023-05-01','2023-07-28');
insert into Bandwidth_Allocation values('BW014','C004','P014','20Mbps','2023-06-01','2023-08-28');
insert into Bandwidth_Allocation values('BW015','C005','P001','45Mbps','2023-01-01','2023-01-28');

select * from Bandwidth_Allocation


drop table Bandwidth_Allocation

create table Network_Infrastructure
(
	Infrastructure_ID		varchar(10)			primary key,
	ISP_ID					varchar(10)			foreign key references ISP(ISP_ID),
	Equipment_ID			varchar(10) 	    foreign key references Equipment_Inventory(Equipment_ID),
	Capacity				integer			not null,
	Installation_Date		date			not null,
	Infrastructure_type		varchar(30)		null,
)

insert into Network_Infrastructure values('I001','SP001','E001',100,'2022-05-05','Hardware');
insert into Network_Infrastructure values('I002','SP002','E002',67,'2022-02-25','Hardware');
insert into Network_Infrastructure values('I003','SP003','E003',60,'2022-07-22','Hardware');
insert into Network_Infrastructure values('I004','SP004','E004',500,'2022-06-30','Hardware');
insert into Network_Infrastructure values('I005','SP005','E005',80,'2022-05-05','Hardware');
insert into Network_Infrastructure values('I006','SP006','E006',60,'2022-01-01','Hardware');
insert into Network_Infrastructure values('I007','SP007','E007',500,'2022-02-15','Hardware');
insert into Network_Infrastructure values('I008','SP008','E008',80,'2022-10-10','Hardware');
insert into Network_Infrastructure values('I009','SP009','E009',200,'2022-11-25','Hardware');
insert into Network_Infrastructure values('I010','SP010','E010',80,'2022-12-05','Hardware');

drop table Network_Infrastructure




--SQL QUERIES--
--Query 1

--Display the customers who are subscribed for more than 5000.00RS plan

select * from Customers
where Customer_ID in (
						select Customer_ID
						from Subscriptions 
						where Plan_id in (
											select Plan_ID from Service_plans
											where Plan_Price > 5000
										 )
					)

--Query2
 --Arrange the plans on their subscription count. 
 
SELECT sp.Plan_Name, COUNT(s.Subscription_ID) AS subscription_count 
FROM Service_Plans sp 
JOIN Subscriptions s ON sp.Plan_ID = s.Plan_ID 
GROUP BY sp.Plan_Name ORDER BY subscription_count DESC 


--Query3
-- Arrange the plans on their subscription count. 
 
SELECT sp.Plan_Name, COUNT(s.Subscription_ID) AS subscription_count 
FROM Service_Plans sp 
JOIN Subscriptions s ON sp.Plan_ID = s.Plan_ID 
GROUP BY sp.Plan_Name ORDER BY subscription_count DESC 

--Query4: 
--Service providers which are located in mumbai. 
select * from ISP  
where ISP_Address='Mumbai' 

 -- Query5
 --Which customer has longest subscription. 
select * from Customers  
where Customer_ID in (    select Customer_ID 
						from Subscriptions    
						where datediff(MONTH,Start_Date,End_Date) > 11 
					); 

--Query6: 
--Find the customer id , customer name who are getting maximum bandwith amount. 
SELECT c.Customer_ID, c.Customer_Name, b.max_bandwidth 
FROM Customers c JOIN ( 
						SELECT Customer_ID, MAX(Bandwidth_Amount) AS max_bandwidth 
						FROM Bandwidth_Allocation 
						GROUP BY Customer_ID 
					) b ON c.Customer_ID = b.Customer_ID 
						WHERE 	b.max_bandwidth 	= 	(SELECT 	MAX(Bandwidth_Amount) 	FROM 
						Bandwidth_Allocation) 


--Query7:
--What is network infrastructure of service provider located in panvel. 
select *  from Network_Infrastructure 
where ISP_ID in ( 
 	 				 select ISP_ID 
					 from Location  	 	      
					 where Location_Name='Panvel' 
 	 	        );
				
--Query8:
--What are the service outages of the service providers which are located in vijayawada city. 
select *  from Service_Outage 
where ISP_ID in ( 
					 select ISP_ID 
					 from Location  	 	     
					 where City='Vijayawada' 
 	 			 ); 

--Query9: 
--Which plans are giving execellent speed. 
select * from Service_plans  
where Plan_ID in (  
					select Plan_ID 
					from Subscriptions  
					where Subscription_ID in (  
												select Subscription_ID 
												from Technical_Support  
												where Support_Description ='Excellent Speed'
												)
				); 

--Query10: 
--Number of Active Customers For 6 months. 
 
 select Count(*) as Active_Customers from Customers   
 where Status = 'A' and Customer_ID in  
									 ( 
									 select Customer_ID 
									 from Subscriptions 
									 where datediff(month,Start_Date,End_Date) >=6 
									 ); 

--Query11:
--Find the Employees Responsible for 'Reliance jio infocamm limted' service provider. 
SELECT e.Employees_ID, e.Employee_name, i.ISP_name 
FROM Employees e 
JOIN ISP i ON e.ISP_ID = i.ISP_ID 
WHERE i.ISP_name = 'Reliance jio infocamm limted';

--Query12: 
--Retrive the customers who have the bandwidth_amount of '20Mbps'. 
SELECT c.Customer_ID, c.Customer_Name, ba.Bandwidth_Amount 
FROM Customers c 
JOIN Bandwidth_Allocation ba ON c.Customer_ID = ba.Customer_ID 
WHERE ba.Bandwidth_Amount='20Mbps'

--Query13: List all customers and their corresponding technical support tickets. 
SELECT c.Customer_ID, c.Customer_Name, ts.Support_ID, ts.Support_description 
FROM Customers c 
JOIN Technical_Support ts ON c.Customer_ID = ts.Customer_ID; 

--Query14:
--Find the Equipment details and the service provider name for the 'Panvel' location. 
 
SELECTei.Equipment_ID, 
ei.Equipment_Name,i.ISP_Name,ei.Equipment_Type,l.Location_ID 
FROM Equipment_Inventory ei 
JOIN Location l ON ei.ISP_ID = l.ISP_ID 
JOIN ISP i ON l.ISP_ID = i.ISP_ID WHERE l.Location_Name = 'Panvel'; 

--Query15:
--Find the total revenue generated from Billing. 
SELECT SUM(Amount) AS Total_Revenue 
FROM Billing; 

--Query16:
--Find all customers who have subscribed to 'Annual plan'. 
SELECT c.Customer_ID,c.Customer_Name,Address 
FROM Customers c 
JOIN Subscriptions s ON c.Customer_ID = s.Customer_ID 
JOIN Service_Plans sp ON s.Plan_ID = sp.Plan_ID 
WHERE sp.Plan_Name = 'Annual plan';

--Query17:
--Retrieve the total number of subscriptions for each service plan. 
SELECT sp.Plan_Name, COUNT(*) AS total_subscriptions 
FROM Service_Plans sp 
JOIN Subscriptions s ON sp.Plan_ID = s.Plan_ID 
GROUP BY sp.Plan_Name; 

--Query18:
--Find the bandwidth allocation for customer called 'Annapurna'. 
 
SELECT b.Customer_ID,c.Customer_Name, b.Bandwidth_Amount 
FROM Bandwidth_Allocation b 
JOIN Customers c ON b.Customer_ID = c.Customer_ID 
WHERE c.Customer_Name = 'Annapurna';

--Query19: 
--Find the average monthly billing amount for each customer. 
SELECT c.Customer_ID, c.Customer_Name, AVG(b.Amount) AS average_billing 
FROM Customers c 
JOIN Subscriptions s ON c.Customer_ID = s.Customer_ID 
JOIN Billing b ON s.Subscription_ID = b.Subscription_ID 
GROUP BY c.Customer_ID, c.Customer_Name;

--Query20: 
--Find the total number of service outages for each location. 
SELECT l.Location_ID, l.Location_Name, COUNT(so.Outage_ID) AS Total_outages 
FROM location l 
JOIN ISP i ON l.ISP_ID = i.ISP_ID 
JOIN Service_Outage so ON i.ISP_ID = so.ISP_ID 
GROUP BY l.Location_ID, l.Location_Name;

--Query21:
--Retrieve the customers and their corresponding subscriptions with their service plan details. 
SELECT c.Customer_Name, s.Subscription_ID, sp.Plan_Name 
FROM Customers c 
JOIN Subscriptions s ON c.Customer_ID = s.Customer_ID 
JOIN Service_Plans sp ON s.Plan_ID = sp.Plan_ID; 

--Query22: 
--Find the customers who have contacted technical support multiple times. 
SELECT c.Customer_Name 
FROM Customers c 
JOIN Technical_Support t ON c.Customer_ID = t.Customer_ID 
GROUP BY c.Customer_Name 
HAVING COUNT(t.Support_ID) > 1; 

--Query23: 
--Find the details of infrastructure located in ‘Gandhinagar’. 
SELECT ni.Infrastructure_ID,i.ISP_Name,ni.Capacity,ni.Infrastructure_type 
FROM Network_Infrastructure ni 
JOIN Location l ON ni.ISP_ID = l.ISP_ID 
JOIN ISP i ON l.ISP_ID = i.ISP_ID WHERE l.Location_Name = 'Gandhinagar'; 

--Query24:
--Find the customers and their corresponding subscriptions with their service plan details. 
SELECT c.Customer_Name, s.Subscription_ID,sp.Plan_ID, sp.Plan_Name 
FROM Customers c 
JOIN Subscriptions s ON c.Customer_ID = s.Customer_ID 
JOIN Service_Plans sp ON s.Plan_ID = sp.Plan_ID;top(5) CID from customer

--Query25:
--Find the total number of customers for each service plan. 
SELECT sp.Plan_ID, sp.Plan_Name, COUNT(c.Customer_ID) AS Customer_count 
FROM Service_Plans sp 
JOIN Subscriptions s ON sp.Plan_ID = s.Plan_ID 
JOIN Customers c ON s.Customer_ID = c.Customer_ID 
GROUP BY sp.Plan_ID, sp.Plan_Name; 

--Query 26: 
--Find the customers with their Subscription count. 
SELECT 	c.Customer_ID, 	c.Customer_Name, 	COUNT(s.Subscription_ID) 	AS subscription_count 
FROM Customers c 
JOIN Subscriptions s ON c.Customer_ID = s.Customer_ID 
GROUP BY c.Customer_ID, c.Customer_Name 
ORDER BY subscription_count DESC;

--Query 27:
--Find the total number of employees for each ISP. 
SELECT i.ISP_ID, i.ISP_Name, COUNT(e.Employees_ID) AS employee_count 
FROM ISP i 
JOIN Employees e ON i.ISP_ID = e.ISP_ID 
GROUP BY i.ISP_ID, i.ISP_Name; 

--Query 28:
--Find the Total Billing for all the customers. 
SELECT c.Customer_ID, c.Customer_Name, SUM(b.Amount) AS total_billing FROM Customers c 
join Subscriptions s on c.Customer_ID=s.Customer_ID JOIN Billing b ON s.Subscription_ID = b.Subscription_ID 
GROUP BY c.Customer_ID, c.Customer_Name 
ORDER BY total_billing DESC; 

--Query 29: 
--Find the average monthly billing amount for each Service plan. 
SELECT sp.Plan_ID,sp.Plan_Name, AVG(b.Amount) AS average_billing 
FROM Service_Plans sp 
JOIN Subscriptions s ON sp.Plan_ID = s.Plan_ID 
JOIN Billing b ON s.Subscription_ID = b.Subscription_ID 
GROUP BY sp.Plan_ID,sp.Plan_Name; 

--Query 30: 
--Find the minimum and maximum monthly billing amounts. 
SELECT MIN(Amount) AS min_billing, MAX(Amount) AS max_billing 
FROM billing; 

--Query31: 
--Find the Bandwidth amount allocated for the customer C010 
SELECT ba.* 
FROM Bandwidth_Allocation ba 
JOIN Customers c ON ba.Customer_ID = c.Customer_ID 
WHERE c.Customer_ID = 'C010'; 

--Query 32: 
--Find the employees along with their corresponding ISP 
SELECT e.Employees_ID, e.Employee_Name, i.ISP_Name 
FROM Employees e 
JOIN ISP i ON e.ISP_ID = i.ISP_ID;

--Query 33: 
--Display the  subscription count for the individual customer 
SELECT 	c.Customer_ID, 	c.Customer_Name, 	COUNT(s.Subscription_ID) 	AS subscription_count 
FROM Customers c 
JOIN Subscriptions s ON c.Customer_ID = s.Customer_ID 
GROUP BY c.Customer_ID, c.Customer_Name 
ORDER BY subscription_count DESC; 

-- Query 34:
--Find the customers who have contacted technical support multiple times 
SELECT * 
FROM Customers 
WHERE Customer_ID IN ( 
						SELECT Customer_ID 
						FROM Technical_Support 
						GROUP BY Customer_ID 
						HAVING COUNT(Support_ID) > 1 
					); 

--Query 35: 
--Retrieve all customers who have subscribed to multiple service plans 
SELECT * 
FROM Customers 
WHERE Customer_ID IN ( 
						SELECT Customer_ID 
						FROM Subscriptions 
						GROUP BY Customer_ID 
						HAVING COUNT(DISTINCT Plan_ID) > 1 
					); 

--Query 36: Retrive all customers who are subscribed for plan P001 
SELECT * 
FROM Customers 
WHERE Customer_ID IN ( 
						SELECT Customer_ID 
						FROM Subscriptions 
						WHERE Plan_ID = 'P001' 
					) AND Customer_ID IN (     
											SELECT Customer_ID 
												FROM Billing 
										); 


--Query 37: Find service plans that have a higher number of subscriptions than the average 
SELECT Plan_ID, Plan_Name 
FROM Service_Plans 
WHERE ( 
    SELECT COUNT(*) 
    FROM Subscriptions 
    WHERE Plan_ID = Service_Plans.Plan_ID 
) > ( 
    SELECT AVG(count_subs) 
    FROM ( 
        SELECT COUNT(*) AS count_subs 
        FROM Subscriptions 
        GROUP BY Plan_ID 
    ) AS counts 
); 


--Query 38: 
--Find the customers who didn't not paid the bill 
SELECT Customer_ID, customer_name 
FROM customers 
WHERE Customer_ID  IN ( select Customer_ID 
from Subscriptions Where Subscription_ID not in 
( 
    SELECT Subscription_ID 
    FROM Billing 
 	Where Payment_Status='Not paid' 
)); 


--Query 39:
--Get service plans with more than the average number of subscriptions 
SELECT Plan_ID, Plan_Name 
FROM Service_Plans 
WHERE Plan_ID IN ( 
    SELECT Plan_ID 
    FROM Subscriptions 
    GROUP BY Plan_ID 
    HAVING COUNT(*) > ( 
        SELECT AVG(count_subs) 
        FROM ( 
            SELECT Plan_ID, COUNT(*) AS count_subs 
            FROM Subscriptions 
            GROUP BY Plan_ID 
        ) AS counts 
    ) 
) 


--Query 40: 
--Find customers who have not been involved in any technical support cases 
SELECT Customer_ID, Customer_Name 
FROM Customers 
WHERE Customer_ID NOT IN ( 
							SELECT Customer_ID 
							FROM Technical_Support 
						); 


--Query 41: 
--Get service plans subscribed by customers who have contacted technical support 
SELECT Plan_ID, Plan_Name 
FROM Service_Plans 
WHERE Plan_ID  IN ( 
    SELECT Plan_ID 
    FROM Subscriptions 
    WHERE Customer_ID IN ( 
        SELECT Customer_ID 
        FROM Technical_Support 
    ) 
); 


--Query 42: Find customers who have subscribed to service plans with a higher monthly amount than the average monthly amount across all service plans: 
SELECT * 
FROM Customers 
WHERE Customer_ID IN ( 
    SELECT Customer_ID 
    FROM Subscriptions 
    WHERE Plan_ID IN ( 
        SELECT Plan_ID 
        FROM Service_Plans 
        WHERE Plan_Price > ( 
            SELECT AVG(Plan_Price) 
            FROM Service_Plans 
        ) 
    ) 
); 

--Query 43: Find the plans which have greater than the average monthly amount. 
SELECT * 
FROM Service_Plans 
WHERE monthly_amount > ( 
    SELECT AVG(sp.Plan_Price) 
    FROM Service_Plans sp 
    JOIN ISP i ON sp.ISP_ID = i.ISP_ID 
    WHERE sp.Plan_ID = Service_Plans.Plan_ID 
); 


--Query 44: Find service providers who have not experienced any service outages: 
SELECT ISP_ID,ISP_Name 
FROM ISP 
WHERE ISP_ID NOT IN ( 
    SELECT ISP_ID 
    FROM Service_Outage 
); 


-- Query 45: 
--Find customers who have subscribed to the most expensive service plan 
SELECT * 
FROM Customers 
WHERE Customer_ID IN ( 
    SELECT Customer_ID 
    FROM Subscriptions 
    JOIN Service_Plans ON Subscriptions.Plan_ID = Service_Plans.Plan_ID 
    WHERE Plan_Price = ( 
        SELECT MAX(Plan_Price) 
        FROM Service_Plans 
    ) 
); 


--Query 46: 
--Find customers who have contacted technical support more than once: 
SELECT * 
FROM Customers 
WHERE Customer_ID IN ( 
    SELECT Customer_ID 
    FROM Technical_Support 
    GROUP BY Customer_ID 
    HAVING COUNT(*) > 1 
); 


--Query 47:
--Get the total number of employees working for each ISP: 
SELECT ISP_ID, ISP_Name, ( 
    SELECT COUNT(*) 
    FROM Employees 
    WHERE ISP_ID = i.ISP_ID 
) AS total_employees 
FROM ISP i; 



--Query 48:
--Find the average number of technical support tickets per customer 
SELECT AVG(ticket_count) AS average_ticket_count 
FROM ( 
  SELECT Customer_ID, COUNT(*) AS ticket_count 
  FROM Technical_Support 
  GROUP BY Customer_ID 
) AS ticket_counts;


--Query 49: Find the Subscriptions of Active customers 
select * from Subscriptions  
where Customer_ID in ( 
						select Customer_ID 
						from Customers
						where Status ='A'
						); 


--Query 50: 
--Find the total number of subscribers for each ISP: 
SELECT sp.Plan_Name, COUNT(*) AS subscriber_count 
FROM Service_Plans sp 
JOIN Subscriptions ON sp.Plan_ID = Subscriptions.Plan_ID 
GROUP BY sp.Plan_Name;









