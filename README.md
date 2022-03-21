# Pewlett-Hackard-Analysis  "Silver Tsunami"
## Overview of the analysis
Pwellet Hackard is a large corporation with several thousand of employees that is facing generational changes, and they need to do a deep analysis and organize the human resorces information to plan ahead and make a good decisions, currently they have all the information in no related csv files, not allowing generate reports to improve their visibility, to support Pwellet Hackard, it was created a set of data based on a logical Entity Relational Diagram, allowing to connect the files and proceed with the analysis that will allow the top management to make decisions offering retirement plans and be in able to clearly  identify the positions that will require a succesor, using the mentioned CSV files, it was designed a ERD, as shown in the figure below: 

![this is an image](https://github.com/JJF1962/Pewlett-Hackard-Analysis/blob/main/EmployeeDB.png)

##  Results
Using PgAdmin we were able to combine several tables and determine the staff who were born between January 1,1952 and December 31,1955, in the age of retirement, remove duplicate rows using SELECT DISTINCT ON , into from and order by,  in the following code it was used SELECT COUNT associated to ut.title to sumarize and be able to determine the quatity of retiring employee by titles, as you can see in the image below:

![This is an image](https://github.com/JJF1962/Pewlett-Hackard-Analysis/blob/main/Capture%20title%20retirement%20count.PNG)

The total employees to be retire are 90,398 and important number and strategy mus be in place all this employess must be needed in the future with the actual technologt and which ones must be replaced in the near future.
As an aditional program, the mentioned company Pewlett Hackard  decided to promote  a mentoring program for those employees born in 1965 to support the people retiring. 
and they are working on different functions as shown below:

![This is an image](https://github.com/JJF1962/Pewlett-Hackard-Analysis/blob/main/Capture%20Mentoring%20program%20employees.PNG)

##  Summary
* It is very important to make a further analysis related job markets, operational and finatial impact, 98,398 will take time to replace.
* It will be recommendable, consider the implementation of new technologies and/or outsorcing to keep the operation running.
* It will be recommendable to talk with Universities to start to prepare resources to cover some of the positions available.
*  Pewlett Hackard is facing a very challenging situation. The roles that have to be replaced account for 90.308 positions in the next 5 years, which shows a pretty 
