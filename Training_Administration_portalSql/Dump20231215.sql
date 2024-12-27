-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: tap
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `assign`
--

DROP TABLE IF EXISTS `assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assign` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trainerName` varchar(45) NOT NULL,
  `trainerEmailId` varchar(200) NOT NULL,
  `traineeName` varchar(100) NOT NULL,
  `traineeEmailId` varchar(500) NOT NULL,
  `batchName` varchar(45) NOT NULL,
  `testScore` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`trainerEmailId`,`traineeEmailId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assign`
--

LOCK TABLES `assign` WRITE;
/*!40000 ALTER TABLE `assign` DISABLE KEYS */;
INSERT INTO `assign` VALUES (1,'rajesh','rajesh@gmail.com','Hari','hari@gmail.com','B0_Xyz_Cpp','20'),(2,'rajesh','rajesh@gmail.com','Praveen','praveen@gmail.com','B0_Xyz_Cpp','12'),(3,'rajesh','rajesh@gmail.com','Gowtham','gowtham@gmmail.com','B0_Xyz_Cpp','17'),(4,'sakthivel','sakthi@gmail.com','murugan','sai@gmail.com','B3_Genpact_java',NULL),(5,'Nikhil','nikhil@gmail.com','sai','sai@gmail.com','B4_Genpact_java',NULL),(6,'Nikhil','nikhil@gmail.com','raman','raman@gmail.com','B4_Genpact_java',NULL),(7,'Rakesh','rakesh@gmail.com','shivan','shivan@gmail.com','B5_Genpact_java',NULL),(8,'Rakesh','rakesh@gmail.com','Ganesh','ganesh@gmail.com','B5_Genpact_java',NULL);
/*!40000 ALTER TABLE `assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `c`
--

DROP TABLE IF EXISTS `c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `c` (
  `DayDates` text,
  `Monday` text,
  `Tuesday` text,
  `Wednesday` text,
  `Thursday` text,
  `Friday` text,
  `Saturday` text,
  `Sunday` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `c`
--

LOCK TABLES `c` WRITE;
/*!40000 ALTER TABLE `c` DISABLE KEYS */;
INSERT INTO `c` VALUES ('Day:1 - Day:7','C Introduction','Variables','DataTypes','Format specifiers','Constants','Holiday','Holiday'),('Day:8 - Day:14','Arithmetic Operations','Augmented Assingment Operators','Math Functions','If Statements','Switch Statements','Holiday','Holiday'),('Day:15 - Day:21','AND/OR/NOT Operator','Functions','Arguments','return Statement','ternary operator','Holiday','Holiday'),('Day:22 - Day:28','String Functions','for/while loops','do while/nested loops','break vs continue','Arrays','Holiday','Holiday'),('Day:29 - Day:31','array of strings','enums','Pointers','-','-','-','-');
/*!40000 ALTER TABLE `c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coursedetails`
--

DROP TABLE IF EXISTS `coursedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coursedetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(25) NOT NULL,
  `trainerName` varchar(45) NOT NULL,
  `startingDate` date NOT NULL,
  `endingDate` date NOT NULL,
  `location` varchar(45) NOT NULL,
  `batchSize` int NOT NULL,
  `company` varchar(45) NOT NULL,
  `batchName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=cp1250;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coursedetails`
--

LOCK TABLES `coursedetails` WRITE;
/*!40000 ALTER TABLE `coursedetails` DISABLE KEYS */;
INSERT INTO `coursedetails` VALUES (1,'Cpp','Not Yet Assigned','2023-12-01','2023-12-14','Chennai',10,'Xyz','B0_Xyz_Cpp'),(2,'sql','Not Yet Assigned','2023-12-01','2023-12-31','Chennai',10,'Genpact','B1_Genpact_sql'),(3,'c','Not Yet Assigned','2023-12-01','2023-12-15','Noida',10,'Abc','B2_Abc_c'),(4,'java','Not Yet Assigned','2023-01-01','2023-01-31','Bangalore',10,'Genpact','B3_Genpact_java'),(5,'java','Not Yet Assigned','2023-12-15','2024-01-15','Chennai',10,'Genpact','B4_Genpact_java'),(6,'java','Not Yet Assigned','2023-12-15','2024-01-15','Chennai',10,'Genpact','B5_Genpact_java');
/*!40000 ALTER TABLE `coursedetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpp`
--

DROP TABLE IF EXISTS `cpp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cpp` (
  `DayDates` text,
  `Monday` text,
  `Tuesday` text,
  `Wednesday` text,
  `Thursday` text,
  `Friday` text,
  `Saturday` text,
  `Sunday` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpp`
--

LOCK TABLES `cpp` WRITE;
/*!40000 ALTER TABLE `cpp` DISABLE KEYS */;
INSERT INTO `cpp` VALUES ('Day:1 - Day:7','cpp Introduction','Variables and Datatypes','const','Arithmetic Operators','Type Conversion','Holiday','Holiday'),('Day:15 - Day:21','User defined functions','Return keyword','Arrays','Sort of an array','Fill function','Holiday','Holiday'),('Day:22 - Day:28','Multidimensional arrays','Pass by VALUE vs pass by REFERENCE','Pointers','Null pointers','Recursion','Holiday','Holiday'),('Day:29 - Day:31','Constructors','Getters & Setters','Inheritance','-','-','-','-'),('Day:8 - Day:14','If statements','Switches','Ternary operator','String methods','Types of loops','Holiday','Holiday');
/*!40000 ALTER TABLE `cpp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `id` int NOT NULL DEFAULT '1',
  `traineeEmail` varchar(255) NOT NULL,
  `trainerName` varchar(45) NOT NULL,
  `feedbackText` text NOT NULL,
  `rating` int NOT NULL,
  `feedbackDate` date NOT NULL,
  `trainerEmailId` varchar(45) NOT NULL,
  PRIMARY KEY (`traineeEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'ahilan@gmail.com','Nikhil','Nice',4,'2023-12-14','nikhil@gmail.com'),(1,'hari@gmail.com','rajesh','Nice',4,'2023-12-14','rajesh@gmail.com'),(1,'praveen@gmail.com','rajesh','Nooo',1,'2023-12-14','rajesh@gmail.com');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frontend`
--

DROP TABLE IF EXISTS `frontend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frontend` (
  `DayDates` varchar(45) DEFAULT NULL,
  `Monday` varchar(45) DEFAULT NULL,
  `Tuesday` varchar(45) DEFAULT NULL,
  `Wednesday` varchar(45) DEFAULT NULL,
  `Thursday` varchar(45) DEFAULT NULL,
  `Friday` varchar(45) DEFAULT NULL,
  `Saturday` varchar(45) DEFAULT NULL,
  `Sunday` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frontend`
--

LOCK TABLES `frontend` WRITE;
/*!40000 ALTER TABLE `frontend` DISABLE KEYS */;
INSERT INTO `frontend` VALUES ('Day:1 - Day:7','HTML Introduction','HyperLinks','Images','Text formatting','Lists','Holiday','Holiday'),('Day:8 - Day:14','Tables','Buttons','Forms','CSS Introduction','Fonts','Holiday','Holiday'),('Day:15 - Day:21','Borders','Background','Margins','Position','Icons','Holiday','Holiday'),('Day:22 - Day:28','Animations','JavaScript Introduction','Varaibles','Statements','Functions','Holiday','Holiday'),('Day:29 - Day:30','Arrays','Handling','-','-','-','-','-');
/*!40000 ALTER TABLE `frontend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `java`
--

DROP TABLE IF EXISTS `java`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `java` (
  `DayDates` varchar(45) DEFAULT NULL,
  `Monday` varchar(45) DEFAULT NULL,
  `Tuesday` varchar(45) DEFAULT NULL,
  `Wednesday` varchar(45) DEFAULT NULL,
  `Thursday` varchar(45) DEFAULT NULL,
  `Friday` varchar(45) DEFAULT NULL,
  `Saturday` varchar(45) DEFAULT NULL,
  `Sunday` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `java`
--

LOCK TABLES `java` WRITE;
/*!40000 ALTER TABLE `java` DISABLE KEYS */;
INSERT INTO `java` VALUES ('Day:1 - Day:7','Introduction to Java','JVM Basics','Variables','Data Types','Operators','Holiday','Holiday'),('Day:8 - Day:14','Statements','Java OOPs','Types of OOPs','Constructors','Methods','Holiday','Holiday'),('Day:15 - Day:21','Abstract Class','Interface','Java Exception Handling','Try-Catch-Final','Exception Examples','Holiday','Holiday'),('Day:22 - Day:28','Java Collections','ArrayList','LinkedList','Mapping','Queue','Holiday','Holiday'),('Day:29 - Day:36','MultiThreading','Lambda Expressions','Java Stream','-','-','-','-');
/*!40000 ALTER TABLE `java` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mcq`
--

DROP TABLE IF EXISTS `mcq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mcq` (
  `course_name` text,
  `week` int DEFAULT NULL,
  `questionNo` int DEFAULT NULL,
  `question` text,
  `option1` text,
  `option2` text,
  `option3` text,
  `option4` text,
  `correct_answer` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mcq`
--

LOCK TABLES `mcq` WRITE;
/*!40000 ALTER TABLE `mcq` DISABLE KEYS */;
INSERT INTO `mcq` VALUES ('Java',1,1,'What is Java?','A programming language','A markup language','A scripting language','A database language','A programming language'),('Java',1,2,'What does JVM stand for?','Java Visualization Machine','JavaScript Virtual Machine','Java Validation Machine','Java Virtual Machine','Java Virtual Machine'),('Java',1,3,'Which of the following is a valid variable name in Java?','123variable','_myVariable','$variable','all of the above','_myVariable'),('Java',1,4,'What is the default value of a boolean variable in Java?','true','false','0','1','false'),('Java',1,5,'Which data type is used to store whole numbers in Java?','float','double','int','char','int'),('Java',1,6,'What is the result of the expression 10 % 3?','3','1','0','2','1'),('Java',1,7,'What is the purpose of the public static void main(String[] args) method in Java?','It is the entry point of the program.','It defines a new class.','It is used to declare variables.','It is a reserved method for mathematical operations.','It is the entry point of the program.'),('Java',1,8,'Which of the following is a unary operator in Java?','+','*','/','%','+'),('Java',1,9,'How is the equals method used in Java?','To compare two numbers','To compare two strings','To perform mathematical operations','To declare variables','To compare two strings'),('Java',1,10,'What is the purpose of the new keyword in Java?','To create a new class','To allocate memory for an object','To define a new method','To declare a new variable','To allocate memory for an object'),('Java',1,11,'What is a statement in Java?','A line of code that performs a task','A type of variable','A comment in the code','A class in Java','A line of code that performs a task'),('Java',1,12,'Which of the following is not a type of OOP?','Inheritance','Encapsulation','Polymorphism','Normalization','Normalization'),('Java',1,13,'What is the purpose of a constructor in Java?','To initialize class variables','To create objects','To perform mathematical operations','To declare variables','To initialize class variables'),('Java',1,14,'Which keyword is used to define a method in Java?','def','method','func','void','void'),('Java',1,15,'What is encapsulation in Java OOP?','Hiding the implementation details of an object','Combining multiple classes into one','Inheriting from multiple classes','Creating a copy of an object','Hiding the implementation details of an object'),('Java',1,16,'What is the default return type of a method in Java if not specified?','int','void','String','double','void'),('Java',1,17,'Which OOP concept allows a class to have multiple methods with the same name but different parameters?','Polymorphism','Inheritance','Encapsulation','Abstraction','Polymorphism'),('Java',1,18,'In Java, what is the purpose of the \"this\"\"\"\"\"\"\"\" keyword?\"\"\"\"\"\"\"','To refer to the current instance of the class','To create a new object','To call a static method','To represent null','To refer to the current instance of the class'),('Java',1,19,'What is the role of the \"super\"\"\"\"\"\"\"\" keyword in Java?\"\"\"\"\"\"\"','To refer to the superclass of the current class','To create an object','To override a method','To initialize a variable','To refer to the superclass of the current class'),('Java',1,20,'What is a static method in Java?','A method that can be called on a class without creating an instance','A method that cannot be called','A method that is not allowed in Java','A method that is synchronized','A method that can be called on a class without creating an instance'),('Java',1,21,'What is an abstract class in Java?','A class that cannot be instantiated','A class that can be instantiated','A class with only static methods','A class with only public methods','A class that cannot be instantiated'),('Java',1,22,'Which keyword is used to declare an interface in Java?','interface','class','implements','extend','interface'),('Java',1,23,'What is the purpose of the \"throws\"\"\"\"\"\"\"\" clause in Java?\"\"\"\"\"\"\"','To declare checked exceptions that a method might throw','To catch exceptions in the code','To terminate the program','To declare variables','To declare checked exceptions that a method might throw'),('Java',1,24,'What does the \"finally\"\"\"\"\"\"\"\" block in a try-catch statement do?\"\"\"\"\"\"\"','It always executes, regardless of whether an exception occurred or not','It catches exceptions','It throws exceptions','It skips the execution','It always executes, regardless of whether an exception occurred or not'),('Java',1,25,'Which keyword is used to explicitly throw an exception in Java?','throw','throws','exception','try','throw'),('SQL',2,1,'What is SQL?','Structured Query Language','Scripted Question Language','Simple Query Language','Structured Question Language','Structured Query Language'),('SQL',2,2,'What does DDL stand for in SQL?','Data Definition Language','Data Design Language','Database Description Language','Data Description Language','Data Definition Language'),('SQL',2,3,'What does DML stand for in SQL?','Data Manipulation Language','Data Modeling Language','Database Management Language','Data Modification Language','Data Manipulation Language'),('SQL',2,4,'What is the purpose of MySQL?','A relational database management system','A programming language','A markup language','A scripting language','A relational database management system'),('SQL',2,5,'What is the primary key in a relational database?','A unique identifier for a record in a table','A foreign key in another table','The first column in a table','An indexed column','A unique identifier for a record in a table'),('SQL',2,21,'What is an INNER JOIN in SQL?','Retrieves records that have matching values in both tables','Retrieves all records from both tables','Retrieves records from the first table that have no matching values in the second table','Retrieves records from the second table that have no matching values in the first table','Retrieves records that have matching values in both tables'),('SQL',2,22,'What is an OUTER JOIN in SQL?','Retrieves all records from both tables','Retrieves records that have matching values in both tables','Retrieves records from the first table that have no matching values in the second table','Retrieves records from the second table that have no matching values in the first table','Retrieves all records from both tables'),('SQL',2,23,'What is a stored procedure in SQL?','A set of SQL statements that can be executed as a single unit','A temporary table','A unique constraint','A type of index','A set of SQL statements that can be executed as a single unit'),('SQL',2,24,'What is the purpose of the GROUP BY clause?','Groups rows that have the same values in specified columns into summary rows','Sorts the result set by specified columns','Filters rows based on a condition','Combines rows from different tables','Groups rows that have the same values in specified columns into summary rows'),('SQL',2,25,'How do you add a new record to a table in SQL?','Using the INSERT INTO statement','Using the UPDATE statement','Using the DELETE statement','Using the SELECT statement','Using the INSERT INTO statement'),('Python',3,1,'What is Python?','A high-level programming language','A markup language','A scripting language','An assembly language','A high-level programming language'),('Python',3,2,'What is the purpose of variables in Python?','To store and manage data','To define classes','To create loops','To perform mathematical operations','To store and manage data'),('Python',3,3,'What is the syntax for an if statement in Python?','if condition:','condition if:','if:','if condition then:','if condition:'),('Python',3,4,'What is the purpose of logical operators in Python?','To perform logical operations on Boolean values','To define classes','To create loops','To perform mathematical operations','To perform logical operations on Boolean values'),('Python',3,5,'What is a list in Python?','A collection of ordered elements','A single variable','A data type for decimal numbers','A loop statement','A collection of ordered elements'),('Python',3,6,'What is a tuple in Python?','An immutable collection of ordered elements','A single variable','A data type for decimal numbers','A loop statement','An immutable collection of ordered elements'),('Python',3,7,'What is the purpose of functions in Python?','To group code into reusable blocks','To define classes','To create loops','To perform mathematical operations','To group code into reusable blocks'),('Python',3,8,'What is exception handling in Python?','Handling errors during program execution','Defining custom data types','Creating loops','Performing mathematical operations','Handling errors during program execution'),('Python',3,9,'What is a module in Python?','A file containing Python code','A loop statement','A collection of variables','A data type for decimal numbers','A file containing Python code'),('Python',3,10,'What does OOP stand for in Python?','Object-Oriented Programming','Ordered Output Processing','Overarching Object Protocol','Operational Output Procedure','Object-Oriented Programming'),('Python',3,11,'What are class variables in Python?','Variables shared by all instances of a class','Local variables within a class method','Variables defined in the constructor','Global variables in a module','Variables shared by all instances of a class'),('Python',3,12,'What is inheritance in Python?','The ability of a class to inherit properties and methods from another class','Defining multiple variables in a class','The process of creating objects','Using variables without declaring them','The ability of a class to inherit properties and methods from another class'),('Python',3,13,'What is multilevel inheritance in Python?','Inheriting from a class that already inherits from another class','Defining multiple variables in a class','The process of creating objects','Using variables without declaring them','Inheriting from a class that already inherits from another class'),('Python',3,14,'What is method overriding in Python?','Providing a specific implementation for a method in a subclass','Defining multiple variables in a class','The process of creating objects','Using variables without declaring them','Providing a specific implementation for a method in a subclass'),('Python',3,15,'What is the super() function in Python?','A function used to call a method from a parent class','A built-in mathematical function','A method for sorting lists','A function for handling exceptions','A function used to call a method from a parent class'),('Python',3,16,'What is an abstract class in Python?','A class that cannot be instantiated and is meant to be subclassed','A class with abstract methods','A class with no methods','A class with only static methods','A class that cannot be instantiated and is meant to be subclassed'),('Python',3,17,'Can an object be passed as an argument to a function in Python?','Yes, an object can be passed as an argument','No, only variables can be passed','Yes, but only if the object is a string','No, objects cannot be used as arguments','Yes, an object can be passed as an argument'),('Python',3,18,'What happens when a function is assigned to a variable in Python?','The variable becomes a reference to the function','An error occurs','The function is executed immediately','The variable is assigned the return value of the function','The variable becomes a reference to the function'),('Python',3,19,'What is a lambda function in Python?','An anonymous function','A function with no parameters','A built-in function','A function with a single parameter','An anonymous function'),('Python',3,20,'How is the sort() function used in Python?','To sort elements in a list','To reverse the order of elements in a list','To filter elements in a list','To add elements to a list','To sort elements in a list'),('Python',3,21,'What is the purpose of the map() function in Python?','Applies a function to all items in an input list','Creates a dictionary','Filters elements in a list','Sorts elements in a list','Applies a function to all items in an input list'),('Python',3,22,'What is threading in Python?','Executing multiple threads simultaneously','Executing multiple programs simultaneously','Executing multiple processes simultaneously','Executing multiple instructions simultaneously','Executing multiple threads simultaneously'),('Python',3,23,'What is the main advantage of lambda expressions in Python?','To define anonymous functions','To create new variables','To declare classes','To handle exceptions','To define anonymous functions'),('Python',3,24,'Which of the following is a functional interface in Python?','Map','Filter','Reduce','Collect','Filter'),('Python',3,25,'How do you create a parallel thread in Python?','Using the threading module','Using the multiprocessing module','Using the parallel module','Using the concurrent module','Using the threading module'),('Frontend',4,1,'What does HTML stand for?','Hyper Text Markup Language','Hyper Transfer Markup Language','High-level Text Markup Language','Hyper Text Model Language','Hyper Text Markup Language'),('Frontend',4,2,'What is the HTML tag for creating hyperlinks?','<a>','<h>','<link>','<url>','<a>'),('Frontend',4,3,'Which HTML tag is used to display images?','<img>','<image>','<picture>','<display>','<img>'),('Frontend',4,4,'How can you make text bold in HTML?','<strong>','<b>','<bold>','<em>','<b>'),('Frontend',4,5,'What HTML tag is used to create an ordered list?','<ol>','<ul>','<li>','<list>','<ol>'),('Frontend',4,6,'In HTML, what does the <table> element represent?','A table','A row in a table','A cell in a table','A column in a table','A table'),('Frontend',4,7,'What HTML tag is used to create a clickable button?','<button>','<click>','<btn>','<submit>','<button>'),('Frontend',4,8,'Which HTML element is used to create a form?','<form>','<input>','<field>','<box>','<form>'),('Frontend',4,9,'What does CSS stand for?','Cascading Style Sheets','Creative Style Sheets','Computer Style Sheets','Colorful Style Sheets','Cascading Style Sheets'),('Frontend',4,10,'In CSS, what property is used to change the font of an element?','font-family','text-font','font-style','font-change','font-family'),('Frontend',4,11,'What CSS property is used to create borders?','border','outline','frame','edge','border'),('Frontend',4,12,'In CSS, what property is used to change the background color?','background-color','color','bg-color','background','background-color'),('Frontend',4,13,'What CSS property is used to create space around elements?','margin','padding','space','border-spacing','margin'),('Frontend',4,14,'In CSS, what property is used to control the position of an element?','position','location','move','place','position'),('Frontend',4,15,'What HTML tag is used to insert an icon?','<i>','<icon>','<img>','<iconic>','<i>'),('Frontend',4,16,'What CSS property is used to create animations?','animation','transition','animate','transform','animation'),('Frontend',4,17,'What does JS stand for?','JavaScript','JavaSource','JustScript','JavaServer','JavaScript'),('Frontend',4,18,'How do you declare a variable in JavaScript?','var','variable','declare','v','var'),('Frontend',4,19,'What is the syntax for an if statement in JavaScript?','if (condition) { // code }','condition { // code } if','if { // code } condition','if (condition) // code','if (condition) { // code }'),('Frontend',4,20,'What is the purpose of functions in JavaScript?','To group code into reusable blocks','To create loops','To define styles','To handle exceptions','To group code into reusable blocks'),('Frontend',4,21,'What is an array in JavaScript?','A collection of elements','A single variable','A loop statement','A conditional statement','A collection of elements'),('Frontend',4,22,'How do you handle exceptions in JavaScript?','Using try...catch','Using if...else','Using switch','Using for loop','Using try...catch'),('Frontend',4,23,'What HTML tag is used to include JavaScript code?','<script>','<js>','<code>','<javascript>','<script>'),('Cpp',5,1,'What is C++?','A programming language','A markup language','A scripting language','A database language','A programming language'),('Cpp',5,2,'Which of the following is a correct comment in C++?','// This is a comment','# This is a comment','-- This is a comment','/* This is a comment */','// This is a comment'),('Cpp',5,3,'What is the output of cout << \"Hello, World!\"\"\"\"\"\"\"\" << endl\"\"\"','?\"\"\"\"','Hello, World!','Hello, World!endl','Hello, World!\n','Hello, World!\nendl'),('Cpp',5,4,'What is the function of the main() function in C++?','It is the entry point of the program.','It defines a new class.','It is used to declare variables.','It is a reserved method for mathematical operations.','It is the entry point of the program.'),('Cpp',5,5,'Which header file is required for input and output functions in C++?','#include <iostream>','#include <inputoutput>','#include <stdio.h>','#include <conio.h>','#include <iostream>'),('Cpp',5,6,'What is the correct way to declare an integer variable in C++?','integer num;','var num = int;','int num;','num integer;','int num;'),('Cpp',5,7,'What is the result of 5 + 3 * 2?','16','11','26','10','11'),('Cpp',5,8,'What is the purpose of the \"cin\"\"\"\"\"\"\"\" object in C++?\"\"\"\"\"\"\"','To output data to the console','To input data from the console','To perform mathematical operations','To declare variables','To input data from the console'),('Cpp',5,9,'Which operator is used for dynamic memory allocation in C++?','alloc','malloc','new','alloc','new'),('Cpp',5,10,'What is the purpose of the \"this\"\"\"\"\"\"\"\" pointer in C++?\"\"\"\"\"\"\"','To refer to the current instance of the class','To create a new object','To call a static method','To represent null','To refer to the current instance of the class'),('Cpp',5,11,'What is a constructor in C++?','A method that constructs an object','A method that destructs an object','A method that allocates memory','A method that initializes an object','A method that initializes an object'),('Cpp',5,12,'What is the correct way to define a member function outside the class in C++?','return_type class_name::function_name() { // code }','function_name() { // code }','class_name::function_name() { // code }','class_name.function_name() { // code }','return_type class_name::function_name() { // code }'),('Cpp',5,13,'Which of the following is an access specifier in C++?','public','private','protected','All of the above','All of the above'),('Cpp',5,14,'What is the purpose of the \"friend\"\"\"\"\"\"\"\" keyword in C++?\"\"\"\"\"\"\"','To declare a function as a friend of a class','To create a new class','To define a new method','To declare a variable','To declare a function as a friend of a class'),('Cpp',5,15,'What is the purpose of the \"static\"\"\"\"\"\"\"\" keyword in C++?\"\"\"\"\"\"\"','To declare a static method','To declare a constant variable','To declare a variable with static memory allocation','To create a static class','To declare a variable with static memory allocation'),('Cpp',5,16,'What is the role of the \"virtual\"\"\"\"\"\"\"\" keyword in C++?\"\"\"\"\"\"\"','To define a virtual function','To declare a variable as virtual','To create a virtual class','To allocate virtual memory','To define a virtual function'),('Cpp',5,17,'What is the purpose of the \"const\"\"\"\"\"\"\"\" keyword in C++?\"\"\"\"\"\"\"','To declare a constant variable','To create a constant class','To define a constant function','To allocate constant memory','To declare a constant variable'),('Cpp',5,18,'Which of the following is a correct way to declare a pointer in C++?','int *ptr;','pointer ptr;','ptr int;','int ptr;','int *ptr;'),('Cpp',5,19,'What is the difference between \"++i\"\"\"\"\"\"\"\" and \"\"\"\"\"\"\"\"i++\"\"\"\"\"\"\"\" in C++?\"\"\"\"\"\"\"','\"++i\"\"\"\"\"\"\"\" increments i before its value is used\"\"\"\"\"\"\"','\"i++\"\"\"\"\"\"\"\" increments i after its value is used\"\"\"\"\"\"\"','There is no difference','Both increment i before its value is used','\"++i\"\"\"\"\"\"\"\" increments i before its value is used\"\"\"\"\"\"\"'),('Cpp',5,20,'What is the purpose of the \"typeid\"\"\"\"\"\"\"\" operator in C++?\"\"\"\"\"\"\"','To get the type of an object','To perform type conversion','To check if two types are equal','To declare a variable','To get the type of an object'),('Cpp',5,21,'What is the purpose of the \"namespace\"\"\"\"\"\"\"\" feature in C++?\"\"\"\"\"\"\"','To avoid naming conflicts','To create a new class','To declare variables','To define a new method','To avoid naming conflicts'),('Cpp',5,22,'What is the role of the \"try\"\"\"\"\"\"\"\", \"\"\"\"\"\"\"\"catch\"\"\"\"\"\"\"\", and \"\"\"\"\"\"\"\"throw\"\"\"\"\"\"\"\" statements in C++?\"\"\"\"\"\"\"','To handle exceptions','To define new classes','To perform mathematical operations','To declare variables','To handle exceptions'),('Cpp',5,23,'What is the purpose of the \"typeid\"\"\"\"\"\"\"\" operator in C++?\"\"\"\"\"\"\"','To get the type of an object','To perform type conversion','To check if two types are equal','To declare a variable','To get the type of an object'),('Cpp',5,24,'What is the purpose of the \"goto\"\"\"\"\"\"\"\" statement in C++?\"\"\"\"\"\"\"','To transfer control to a labeled statement','To exit a loop','To define a label','To declare variables','To transfer control to a labeled statement'),('Cpp',5,25,'What is the purpose of the \"sizeof\"\"\"\"\"\"\"\" operator in C++?\"\"\"\"\"\"\"','To get the size of an object or data type','To perform type conversion','To check if two types are equal','To declare a variable','To get the size of an object or data type'),('C',6,1,'What is C?','A programming language','A markup language','A scripting language','A database language','A programming language'),('C',6,2,'Which of the following is a correct comment in C?','// This is a comment','# This is a comment','-- This is a comment','/* This is a comment */','// This is a comment'),('C',6,3,'What is the output of printf(\"Hello, World!\"\"\"\"\"\"\"\")\"\"\"','?\"\"\"\"','Hello, World!','Hello, World!printf','Hello, World!\n','Hello, World!\nprintf'),('C',6,4,'What is the function of the main() function in C?','It is the entry point of the program.','It defines a new class.','It is used to declare variables.','It is a reserved method for mathematical operations.','It is the entry point of the program.'),('C',6,5,'Which header file is required for input and output functions in C?','#include <stdio.h>','#include <inputoutput>','#include <iostream>','#include <conio.h>','#include <stdio.h>'),('C',6,6,'What is the correct way to declare an integer variable in C?','integer num;','var num = int;','int num;','num integer;','int num;'),('C',6,7,'What is the result of 5 + 3 * 2?','16','11','26','10','11'),('C',6,8,'What is the purpose of the \"scanf\"\"\"\"\"\"\"\" function in C?\"\"\"\"\"\"\"','To output data to the console','To input data from the console','To perform mathematical operations','To declare variables','To input data from the console'),('C',6,9,'Which operator is used for dynamic memory allocation in C?','alloc','malloc','new','alloc','malloc'),('C',6,10,'What is the purpose of the \"this\"\"\"\"\"\"\"\" pointer in C?\"\"\"\"\"\"\"','To refer to the current instance of the class','To create a new object','To call a static method','To represent null','To refer to the current instance of the class'),('C',6,11,'What is a function prototype in C?','A declaration of a function before its implementation','A definition of a function before its implementation','A call to a function','A pointer to a function','A declaration of a function before its implementation'),('C',6,12,'Which of the following is an access specifier in C?','public','private','protected','All of the above','All of the above'),('C',6,13,'What is the purpose of the \"goto\"\"\"\"\"\"\"\" statement in C?\"\"\"\"\"\"\"','To transfer control to a labeled statement','To exit a loop','To define a label','To declare variables','To transfer control to a labeled statement'),('C',6,14,'What is the purpose of the \"static\"\"\"\"\"\"\"\" keyword in C?\"\"\"\"\"\"\"','To declare a static variable','To declare a constant variable','To create a static class','To define a static function','To declare a static variable'),('C',6,15,'What is the purpose of the \"const\"\"\"\"\"\"\"\" keyword in C?\"\"\"\"\"\"\"','To declare a constant variable','To create a constant class','To define a constant function','To allocate constant memory','To declare a constant variable'),('C',6,16,'What is the purpose of the \"volatile\"\"\"\"\"\"\"\" keyword in C?\"\"\"\"\"\"\"','To declare a volatile variable','To create a volatile class','To define a volatile function','To allocate volatile memory','To declare a volatile variable'),('C',6,17,'What is the purpose of the \"typedef\"\"\"\"\"\"\"\" keyword in C?\"\"\"\"\"\"\"','To create a new type name for an existing type','To declare a typedef variable','To define a new type of variable','To create a typecast','To create a new type name for an existing type'),('C',6,18,'What is the difference between \"++i\"\"\"\"\"\"\"\" and \"\"\"\"\"\"\"\"i++\"\"\"\"\"\"\"\" in C?\"\"\"\"\"\"\"','\"++i\"\"\"\"\"\"\"\" increments i before its value is used\"\"\"\"\"\"\"','\"i++\"\"\"\"\"\"\"\" increments i after its value is used\"\"\"\"\"\"\"','There is no difference','Both increment i before its value is used','\"++i\"\"\"\"\"\"\"\" increments i before its value is used\"\"\"\"\"\"\"'),('C',6,19,'What is the purpose of the \"sizeof\"\"\"\"\"\"\"\" operator in C?\"\"\"\"\"\"\"','To get the size of an object or data type','To perform type conversion','To check if two types are equal','To declare a variable','To get the size of an object or data type'),('C',6,20,'What is the purpose of the \"union\"\"\"\"\"\"\"\" keyword in C?\"\"\"\"\"\"\"','To create a union of multiple variables','To combine multiple classes into one','To declare a union variable','To define a union function','To create a union of multiple variables'),('C',6,21,'What is the purpose of the \"enum\"\"\"\"\"\"\"\" keyword in C?\"\"\"\"\"\"\"','To declare an enumeration','To create an empty variable','To define an empty function','To create an enumerated class','To declare an enumeration'),('C',6,22,'What is the purpose of the \"break\"\"\"\"\"\"\"\" statement in C?\"\"\"\"\"\"\"','To exit a loop or switch statement','To start a new loop','To skip the next iteration of a loop','To terminate the program','To exit a loop or switch statement'),('C',6,23,'What is the purpose of the \"continue\"\"\"\"\"\"\"\" statement in C?\"\"\"\"\"\"\"','To skip the rest of the loop and start the next iteration','To exit the loop','To terminate the program','To start a new loop','To skip the rest of the loop and start the next iteration'),('C',6,24,'What is the purpose of the \"do-while\"\"\"\"\"\"\"\" loop in C?\"\"\"\"\"\"\"','To execute a block of code while a condition is true','To execute a block of code at least once','To execute a block of code for a specific number of times','To define a new loop','To execute a block of code at least once'),('C',6,25,'What is the purpose of the \"return\"\"\"\"\"\"\"\" statement in C?\"\"\"\"\"\"\"','To exit a function and return a value','To terminate the program','To declare a variable','To define a new function','To exit a function and return a value');
/*!40000 ALTER TABLE `mcq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msql`
--

DROP TABLE IF EXISTS `msql`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `msql` (
  `DayDates` text,
  `Monday` text,
  `Tuesday` text,
  `Wednesday` text,
  `Thursday` text,
  `Friday` text,
  `Saturday` text,
  `Sunday` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msql`
--

LOCK TABLES `msql` WRITE;
/*!40000 ALTER TABLE `msql` DISABLE KEYS */;
INSERT INTO `msql` VALUES ('Day:1 - Day:7','Basics of Relational Database','Entities and Relation','My SQL','SQL DDL AND DML','MySQL client/server','Holiday','Holiday'),('Day:8 - Day:14','MySQL Connectors','Keys and Normalization','Database Design','Creating a Database','Creating a Table','Holiday','Holiday'),('Day:15 - Day:21','Indexes/keys and Constraints','Deleting database/Tables','Adding/removing and modify','SELECT Statement','Creating Views','Holiday','Holiday'),('Day:22 - Day:28','\nanipulation Data','Replacing and Updating','Deleting records','Inner joins','Outer joins','Holiday','Holiday'),('Day:29 - Day:30','Functions in MySQL','MySQL Backup Tools','-','-','-','-','-');
/*!40000 ALTER TABLE `msql` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mysql`
--

DROP TABLE IF EXISTS `mysql`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mysql` (
  `DayDates` varchar(45) DEFAULT NULL,
  `Monday` varchar(45) DEFAULT NULL,
  `Tuesday` varchar(45) DEFAULT NULL,
  `Wednesday` varchar(45) DEFAULT NULL,
  `Thursday` varchar(45) DEFAULT NULL,
  `Friday` varchar(45) DEFAULT NULL,
  `Saturday` varchar(45) DEFAULT NULL,
  `Sunday` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mysql`
--

LOCK TABLES `mysql` WRITE;
/*!40000 ALTER TABLE `mysql` DISABLE KEYS */;
INSERT INTO `mysql` VALUES ('Day:1 - Day:7','Basics of Relational Database','Entities and Relation','My SQL','SQL DDL AND DML','MySQL client/server','Holiday','Holiday'),('Day:8 - Day:14','MySQL Connectors','Keys and Normalization','Database Design','Creating a Database','Creating a Table','Holiday','Holiday'),('Day:15 - Day:21','Indexes/keys and Constraints','Deleting database/Tables','Adding/removing and modify','SELECT Statement','Creating Views','Holiday','Holiday'),('Day:22 - Day:28','\nanipulation Data','Replacing and Updating','Deleting records','Inner joins','Outer joins','Holiday','Holiday'),('Day:29 - Day:30','Functions in MySQL','MySQL Backup Tools','-','-','-','-','-');
/*!40000 ALTER TABLE `mysql` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `python`
--

DROP TABLE IF EXISTS `python`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `python` (
  `DayDates` varchar(45) DEFAULT NULL,
  `Monday` varchar(45) DEFAULT NULL,
  `Tuesday` varchar(45) DEFAULT NULL,
  `Wednesday` varchar(45) DEFAULT NULL,
  `Thursday` varchar(45) DEFAULT NULL,
  `Friday` varchar(45) DEFAULT NULL,
  `Saturday` varchar(45) DEFAULT NULL,
  `Sunday` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `python`
--

LOCK TABLES `python` WRITE;
/*!40000 ALTER TABLE `python` DISABLE KEYS */;
INSERT INTO `python` VALUES ('Day:1 - Day:7','Python Introduction','Variables','Statements','Logical Operators','Lists','Holiday','Holiday'),('Day:8 - Day:14','Tuples','Functions','Exception Handling','Modules','OOP','Holiday','Holiday'),('Day:15 - Day:21','Class Variables','Inheritance','Multilevel Inheritance','Method Overriding','Super function','Holiday','Holiday'),('Day:22 - Day:28','Abstarct Class','Object as arguments','Functions to Variables','Lambda','Sort','Holiday','Holiday'),('Day:29 - Day:30','Map','Threading','-','-','-','-','-');
/*!40000 ALTER TABLE `python` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainee`
--

DROP TABLE IF EXISTS `trainee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `userName` varchar(45) NOT NULL,
  `emailId` varchar(45) NOT NULL,
  `company_name` varchar(45) NOT NULL,
  `course_name` varchar(45) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `gender` varchar(20) NOT NULL,
  `mobile` char(10) NOT NULL,
  `country` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `rfs` varchar(45) NOT NULL,
  `pwd_salt` varchar(45) NOT NULL,
  `pwd_hash` varchar(45) NOT NULL,
  `status` char(1) NOT NULL,
  `assigned` bit(1) NOT NULL,
  `batchName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`emailId`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `email_UNIQUE` (`emailId`),
  UNIQUE KEY `mobile_UNIQUE` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainee`
--

LOCK TABLES `trainee` WRITE;
/*!40000 ALTER TABLE `trainee` DISABLE KEYS */;
INSERT INTO `trainee` VALUES (1,'sai','S','Sai','sai@gmail.com','Genpact','Java','2002-02-22','male','1234567890','India','Tamilnadu','Chennai','For Training','7ZhPCVZ3wM','bc53f08fe5fd680e0dae','A',_binary '\0','B4_Genpact_java'),(2,'raman','r','raman','raman@gmail.com','Genpact','Java','2003-02-22','male','5432167890','India','Tamilnadu','Chennai','For Training Purpose','xibVQVYjsa','e979151511c9f679f6b4','A',_binary '\0','B4_Genpact_java'),(3,'shivan','S','Shivan','shivan@gmail.com','Genpact','Java','2001-02-22','male','5432167898','England','Londan','Paries','For Learning','CSNOGgRTBk','81a054908f8d439a7b4e','A',_binary '\0','B5_Genpact_java'),(4,'Ganesh','S','Ganesh','ganesh@gmail.com','Genpact','Java','2003-03-22','male','6789054322','India','Karnataka','Bangalore','Studying Purpose','NWR1b6RylC','6c9777de12b9d7236695','A',_binary '\0','B5_Genpact_java'),(5,'parvathi','S','Parvathi','parvathi@gmail.com','Genpact','Java','2001-01-22','female','6789034512','India','AndhraPradesh','Vijayawada','For Gain Knowledge','TX3en0qtFB','34a9db042367ebbca8d6','A',_binary '',''),(6,'Vijay','Kumar','VijayKumar','vijay@gmail.com','Genpact','C','2003-02-22','male','6789054329','India','Tamilnadu','Perambalur','For Gain Knowledege','2EV0DkwGCX','8cc08a19cf50d346ee99','A',_binary '',''),(7,'Ajith','Kumar','Ajith Kumar','ajith@gmail.com','Genpact','C','2001-02-20','male','5431209682','Japan','Tokiyo','TokiyoMain','For Earn Money','p8fU2sfhHa','de5d6dba7cd13474efef','A',_binary '',''),(8,'vimal','kumar','Vimal Kumar','vimalkumar@gmail.com','Genpact','C','2001-02-22','male','6789054331','India','Delhi','Delhi','For Learning and develop Skills','F4pFJBzL64','2365b9559f8673991ccc','A',_binary '',''),(9,'suriya','S','Suriya','suriya@gmail.com','abc','C','2001-01-22','male','4567890234','India','UttraPradhesh','Noida','For Upskill','roeHG2a9wc','3f1e8fc9edbd456e14b9','A',_binary '',''),(10,'Malini','S','Malini','malini@gmail.com','abc','C','2003-02-22','female','4567890123','India','Mumbai','Mumbai City','For Develop my Skills','Yn06udYOC3','f78ffa2afdd1f6323546','A',_binary '',''),(11,'Swetha','K','Swetha','swetha@gmail.com','Genpact','Frontend','2002-02-22','female','8877665544','India','Tamilnadu','Chennai','For Upskill myself','bPJHJ6gV1N','54391c67d4a589aa612c','A',_binary '',''),(12,'Nayanthara','V','Nayan','nayathara@gmail.com','abc','Frontend','2001-03-29','male','6789034521','England','Londan','Paries','For Money','RP3L2ukc0N','337785d26399e4861f78','A',_binary '',''),(13,'Sankar','s','sankar','sankar@gmail.com','Genpact','Frontend','2004-02-01','male','9080123456','India','Andhra','hyderabad','for intern','JYVf2maEKQ','6e9701ac346a2d46aeb9','A',_binary '',''),(14,'Aswin','v','Aswin','aswin@gmail.com','Genpact','Frontend','2004-10-01','male','9080123000','India','Tamilnadu','Chennai','for intern','88ejLDtLUT','8b974c192fade8b16147','A',_binary '',''),(15,'Santheega','S','Santheega','santheega@gmail.com','Genpact','Python','2005-02-10','female','9065420172','india','Tamilnadu','bangalore','for intern','Hx2NNhkIuO','74835e2eea2ff1251ac7','A',_binary '',''),(16,'Sweetha','K','Sweetha','sweetha@gmail.com','Genpact','Python','2005-02-02','female','9065420100','india','Tamilnadu','bangalore','for intern','YlXYdhgCRY','5d382e97be5791b45b81','A',_binary '',''),(17,'Sanjai','K','Sanjai','sanjai@gmail.com','Genpact','Python','2005-07-02','male','9065420199','india','Tamilnadu','Chennai','for intern','xWoJzImgmv','f036157f6d0822c0449b','0',_binary '',''),(18,'kumar','s','kumar','kumar@gmail.com','Genpact','Python','2005-06-02','male','9065420999','india','Tamilnadu','Chennai','for intern','1F95wtdWvi','35bc7c448bf8bb9d5ac4','A',_binary '',''),(19,'Prakash','M','prakash','prakash@gmail.com','Genpact','Python','2005-06-11','male','9065420798','india','karnataka','bangalore','for learn','TjEXc2ETxO','4689ea43fa7b304b2c5b','A',_binary '',''),(20,'Rohit','s','Rohit','rohit@gmail.com','Genpact','Sql','2005-04-11','male','9065420755','india','karnataka','bangalore','for learn','BsFOBw50dH','557bc17b0b46e1ecc80d','A',_binary '',''),(21,'Yuvraj','s','Yuvraj','yuvraj@gmail.com','Genpact','Sql','2003-08-11','male','9065421000','india','Andhra','hyderabad','for learn','NfTLgbqYe3','0ac6c7ccd729854866b2','A',_binary '',''),(22,'Hari','s','Hari','hari@gmail.com','Xyz','cpp','2003-05-12','male','9065421234','india','Andhra','hyderabad','for learn','e2v4jXDysQ','30234047e78f3d3b887c','A',_binary '\0','B0_Xyz_Cpp'),(23,'Praveen','s','Praveen','praveen@gmail.com','Xyz','cpp','2003-09-11','male','9065421890','india','Tamilnadu','Chennai','for learn','aykLXidaSH','889660b77c319d76e494','A',_binary '\0','B0_Xyz_Cpp'),(24,'Gowtham','G','Gowtham','gowtham@gmail.com','Xyz','cpp','0003-12-10','male','6512347890','india','karnataka','bangalore','for intern','BVMKXnSUEC','f25369b10a67386d641f','A',_binary '\0','B0_Xyz_Cpp'),(25,'Vinay','V','Vinay','vinay@gmail.com','Genpact','Sql','2003-12-01','male','6512347811','india','karnataka','bangalore','for intern','pYCPkmixUj','702c45b1acc02117e4e4','A',_binary '',''),(26,'murugan','S','Murugan','murugan@gmail.com','Genpact','Java','2023-12-05','male','8877664455','India','Tamilnadu','Chennai','For Upskill my skills','oUZEN4O1lL','66c770cfbfe3cdc0f15c','0',_binary '',NULL);
/*!40000 ALTER TABLE `trainee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `traineeattendance`
--

DROP TABLE IF EXISTS `traineeattendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `traineeattendance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) DEFAULT NULL,
  `emailId` varchar(45) NOT NULL,
  `attendance` varchar(10) DEFAULT 'absent',
  `attendanceDate` date DEFAULT NULL,
  PRIMARY KEY (`id`,`emailId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traineeattendance`
--

LOCK TABLES `traineeattendance` WRITE;
/*!40000 ALTER TABLE `traineeattendance` DISABLE KEYS */;
INSERT INTO `traineeattendance` VALUES (1,'hari@gmail.com','hari@gmail.com','present','2023-12-14');
/*!40000 ALTER TABLE `traineeattendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainer`
--

DROP TABLE IF EXISTS `trainer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `emailId` varchar(45) NOT NULL,
  `mobileNo` char(10) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `course_name` varchar(45) NOT NULL,
  `pwd_salt` varchar(45) NOT NULL,
  `pwd_hash` varchar(45) NOT NULL,
  `status` char(1) NOT NULL,
  `availability` bit(1) NOT NULL,
  `batchName` varchar(45) DEFAULT NULL,
  `traineeCount` int NOT NULL,
  `avgRating` double(2,1) NOT NULL,
  PRIMARY KEY (`id`,`emailId`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `emailId_UNIQUE` (`emailId`),
  UNIQUE KEY `mobileNo_UNIQUE` (`mobileNo`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainer`
--

LOCK TABLES `trainer` WRITE;
/*!40000 ALTER TABLE `trainer` DISABLE KEYS */;
INSERT INTO `trainer` VALUES (1,'Nikhil','G','nikhil@gmail.com','1234567890','1995-02-22','Java','s1pWK4LPzA','fd98331971cd574fbc27','A',_binary '\0','B4_Genpact_java',2,4.0),(2,'Rakesh','B','rakesh@gmail.com','0987654321','1995-02-22','Java','LiTONHAZ73','ff4d8b7fa7d29586552d','A',_binary '\0','B5_Genpact_java',2,0.0),(3,'Amuthan','M','amuthan@genpact.com','5432167890','1995-02-22','Java','wdqazAGBRv','bb63124998d58fd8ae65','A',_binary '',NULL,0,0.0),(4,'Rudhrahari','A','rudhra@gmail.com','6789054321','1995-02-22','C','FeXaPxAROO','1dd18f53c817df4a495b','A',_binary '',NULL,0,0.0),(5,'Sai','Teja','saiteja@gmail.com','5432167809','1996-02-22','C','k5kxx4p2SA','cb7ba676f9bcfa837044','A',_binary '',NULL,0,0.0),(6,'Vithun','V','vithun@gmail.com','5431267890','1994-02-22','Python','G3z09slSmt','541a26982eebe3e0d633','A',_binary '',NULL,0,0.0),(7,'parthiban','leo','parthiban@gmail.com','6780954312','1996-02-22','Python','gJa5Adv1My','a46ed803c800136715ca','A',_binary '',NULL,0,0.0),(8,'saravana','Kumar','saravana@gmail.com','6783451290','1994-02-22','Sql','bXGa9SunVJ','0a1c3ce78091a1de540a','A',_binary '',NULL,0,0.0),(9,'rajesh','C','rajesh@gmail.com','6543217890','1993-02-22','Cpp','LOZEZzOtZp','45fd2962c0d424fa8790','A',_binary '\0','B0_Xyz_Cpp',3,2.5),(10,'sabari','G','sabari@gmail.com','8645763214','1995-02-22','Frontend','IWlmkLoXXt','d2da83e785d3d78546bd','A',_binary '',NULL,0,0.0),(11,'Ahilan','A','ahilan@gmail.com','6789054356','1997-02-22','Frontend','pVpJrL2QBz','41ae4a769ad5141a045a','A',_binary '',NULL,0,0.0),(12,'sakthivel','S','sakthi@gmail.com','1133442255','2023-12-05','Java','x1UCG6LO8k','befe91437b63f3374346','0',_binary '','B3_Genpact_java',0,0.0);
/*!40000 ALTER TABLE `trainer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainerattendance`
--

DROP TABLE IF EXISTS `trainerattendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainerattendance` (
  `firstName` varchar(45) NOT NULL,
  `emailId` varchar(45) NOT NULL,
  `attendance` varchar(45) NOT NULL,
  `attendanceDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainerattendance`
--

LOCK TABLES `trainerattendance` WRITE;
/*!40000 ALTER TABLE `trainerattendance` DISABLE KEYS */;
INSERT INTO `trainerattendance` VALUES ('rajesh@gmail.com','rajesh@gmail.com','present','2023-12-14'),('nikhil@gmail.com','nikhil@gmail.com','present','2023-12-14');
/*!40000 ALTER TABLE `trainerattendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training`
--

DROP TABLE IF EXISTS `training`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `training` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullName` varchar(45) NOT NULL,
  `emailId` varchar(45) NOT NULL,
  `mobileNo` char(10) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `gender` char(1) NOT NULL,
  `pwd_salt` varchar(45) NOT NULL,
  `pwd_hash` varchar(45) NOT NULL,
  `root_admin` bit(1) NOT NULL,
  `status` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `emailId_UNIQUE` (`emailId`),
  UNIQUE KEY `mobileNo_UNIQUE` (`mobileNo`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training`
--

LOCK TABLES `training` WRITE;
/*!40000 ALTER TABLE `training` DISABLE KEYS */;
INSERT INTO `training` VALUES (1,'Karthi','karthi@gmail.com','1122334455','2001-06-03','m','','',_binary '',_binary ''),(2,'Nikil','nikil@gmail.com','1122445577','2001-04-03','m','','',_binary '\0',_binary ''),(3,'Amuthan','am@gmail.com','3344556677','2001-04-03','m','','',_binary '\0',_binary ''),(4,'Saravanna','sarv@gmail.com','3345678910','2002-01-21','m','vPzwWRtISN','b1b451a7cd81d6a0867f',_binary '\0',_binary ''),(5,'Vithun','v@gmail.com','1234567890','2001-12-12','m','OONZkfPTpb','441f8595ecf5ea6c693f',_binary '\0',_binary ''),(6,'Rudra','rudra@gmail.com','7656443322','2001-01-01','m','CdIZuPMWcG','28661360bdfde0f6511b',_binary '\0',_binary '\0'),(7,'Daya','d@gmail.com','9876543210','2001-10-10','m','fWjc9f7PUd','455fab767bf274c2a86b',_binary '\0',_binary ''),(8,'rootAdmin','rootadmin@gmail.com','9988776655','2023-11-28','m','JZ4tbvlo8Z','8f176da8bba2df3c5c9b',_binary '',_binary ''),(9,'admin','admin@gmail.com','5544667799','2002-02-22','m','YueOB9TohK','454348f41e62194315ad',_binary '',_binary ''),(10,'subadmin','subadmin@gmail.com','123476590','2002-02-22','f','XlAqBweJPZ','85663843fa9d2aa117e4',_binary '\0',_binary ''),(12,'Sathish','sathish@gmail.com','3214569870','2002-02-22','m','G4B23tESuC','e7047a1dd5e144bb1b98',_binary '\0',_binary '\0'),(14,'rootadmin','rootadmin2@gmail.com','6677889952','2023-12-21','m','5c7cGKrxxB','04249343610ab7dbc952',_binary '\0',_binary '\0'),(15,'Rakoy','rock@gmail.com','5678904321','2023-12-13','m','w0Tj1Z0fkO','f96629c7a4b257673a4e',_binary '\0',_binary '\0'),(17,'rock','roc2k@gmail.com','8899776655','2023-12-04','m','Wfj2Bna8V2','cb70e5db4953f5c7ace6',_binary '\0',_binary ''),(18,'Karthikeyanr','karthikeyanr@gmail.com','8610504735','2003-02-21','m','rmqPDjWefk','489a38828f32b6886d99',_binary '\0',_binary '');
/*!40000 ALTER TABLE `training` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-15  0:10:48
