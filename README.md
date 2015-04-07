# SQL-Gateway

Is an app that allows to use web-based interface to execute any type of SQL statement. This makes easy to **access** or **modify** data in a database.

Additionally, if the SQL statement has incorrent syntax, this app displays an error message. So we can edit and attempt to execute again.

Make sure this app is only available to its intended users. Otherwise, deploying this app in an unprotected way opens a potentially disastrous security hole.

###Screenshots
* Example when page is loaded
![Alt text](http://i.imgur.com/IGFt0VS.png)


-----------------------------------
---------
* Example the following MySQL statement:

      UPDATE user 
      SET Email="cooervo@newEmail.com" 
      WHERE FirstName="Mateo";

![Alt text](http://i.imgur.com/pnYnD0N.png)

###Technology used
* Java EE: JDBC, JSP, Servlet
* MySQL
* XML
* Apache Tomcat
* CSS and HTML

####The J Connector was downloaded from
**mysql-connector-java-5.0.8-bin.jar** from the MySQL website: http://dev.mysql.com/downloads/connector/j/3.1.html
