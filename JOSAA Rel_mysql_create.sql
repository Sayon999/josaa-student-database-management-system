CREATE TABLE `College_Profile` (
	`College_ID` INT NOT NULL AUTO_INCREMENT,
	`Area` FLOAT,
	`Director_Name` varchar(20),
	`College_Name` varchar NOT NULL,
	`Year_Estd` INT AUTO_INCREMENT,
	`FAX` VARCHAR(255) NOT NULL,
	`Website` VARCHAR(255) NOT NULL,
	`Address` VARCHAR(255) NOT NULL,
	`JOSAA Representative` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`College_ID`)
);

CREATE TABLE `College_Phone` (
	`College_ID` INT NOT NULL AUTO_INCREMENT,
	`Phone_Number` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`College_ID`,`Phone_Number`)
);

CREATE TABLE `College_Email` (
	`College_ID` INT NOT NULL,
	`Email_ID` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`College_ID`,`Email_ID`)
);

CREATE TABLE `College_Ranking` (
	`College_ID` INT NOT NULL AUTO_INCREMENT,
	`Institution` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`Rank` INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`College_ID`,`Institution`)
);

CREATE TABLE `Branch_Details` (
	`Branch_Code` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`College_ID` INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`Branch_Code`,`College_ID`)
);

CREATE TABLE `Seat_Matrix` (
	`Branch_Code` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`College_ID` INT NOT NULL AUTO_INCREMENT,
	`Category` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`Total_Seats` INT NOT NULL AUTO_INCREMENT,
	`Seats_Filled` INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`Branch_Code`,`College_ID`,`Category`)
);

CREATE TABLE `Student_Profile` (
	`Student_ID` INT NOT NULL AUTO_INCREMENT,
	`Student_Name` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`Gender` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`Category` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`Date_Of_Birth` DATE NOT NULL AUTO_INCREMENT,
	`Region_Code` INT NOT NULL AUTO_INCREMENT,
	`Address` varchar NOT NULL AUTO_INCREMENT,
	`JEE_RollNo` INT NOT NULL AUTO_INCREMENT,
	`Username` VARCHAR(255) NOT NULL,
	`Password` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`Student_ID`)
);

CREATE TABLE `Student_Email` (
	`Student_ID` INT NOT NULL AUTO_INCREMENT,
	`Email` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`Student_ID`,`Email`)
);

CREATE TABLE `Student_Phone` (
	`Student_ID` INT NOT NULL AUTO_INCREMENT,
	`Phone_Number` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`Student_ID`,`Phone_Number`)
);

CREATE TABLE `Branch_Index` (
	`Branch_Code` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`Branch_Name` INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`Branch_Code`)
);

CREATE TABLE `Preferences` (
	`Student_ID` INT NOT NULL AUTO_INCREMENT,
	`Preference_No` INT NOT NULL AUTO_INCREMENT,
	`College_ID` INT NOT NULL AUTO_INCREMENT,
	`Branch_Code` INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`Student_ID`,`Preference_No`)
);

CREATE TABLE `Result` (
	`JEE_Rollno` INT NOT NULL AUTO_INCREMENT,
	`PhysicsMarks` INT NOT NULL AUTO_INCREMENT,
	`MathMarks` INT NOT NULL AUTO_INCREMENT,
	`ChemistryMarks` INT NOT NULL AUTO_INCREMENT,
	`AllIndiaRank` INT NOT NULL AUTO_INCREMENT,
	`CategoryRank` INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`JEE_Rollno`)
);

CREATE TABLE `Admn_Profile` (
	`Admin_ID` INT NOT NULL AUTO_INCREMENT,
	`Admin_Name` VARCHAR(255) NOT NULL,
	`Username` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`Password` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`Region_Code` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`Email_ID` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`Admin_ID`)
);

CREATE TABLE `Admin_Phone` (
	`Admin_ID` INT NOT NULL AUTO_INCREMENT,
	`Phone_Number` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`Admin_ID`,`Phone_Number`)
);

CREATE TABLE `Region` (
	`Region_ID` INT NOT NULL AUTO_INCREMENT,
	`Region_Name` INT NOT NULL AUTO_INCREMENT,
	`Region_Incharge_College_ID` INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`Region_ID`)
);

CREATE TABLE `Fee_Structure` (
	`Gender` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`Category` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`Fee_Structure` DECIMAL NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`Gender`,`Category`)
);

CREATE TABLE `Allotment_Matrix` (
	`Student_ID` INT NOT NULL AUTO_INCREMENT,
	`Branch_Code` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`College_Code` INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`Student_ID`)
);

ALTER TABLE `College_Phone` ADD CONSTRAINT `College_Phone_fk0` FOREIGN KEY (`College_ID`) REFERENCES `College_Profile`(`College_ID`);

ALTER TABLE `College_Email` ADD CONSTRAINT `College_Email_fk0` FOREIGN KEY (`College_ID`) REFERENCES `College_Profile`(`College_ID`);

ALTER TABLE `College_Ranking` ADD CONSTRAINT `College_Ranking_fk0` FOREIGN KEY (`College_ID`) REFERENCES `College_Profile`(`College_ID`);

ALTER TABLE `Branch_Details` ADD CONSTRAINT `Branch_Details_fk0` FOREIGN KEY (`Branch_Code`) REFERENCES `Branch_Index`(`Branch_Code`);

ALTER TABLE `Branch_Details` ADD CONSTRAINT `Branch_Details_fk1` FOREIGN KEY (`College_ID`) REFERENCES `College_Details`(`College_ID`);

ALTER TABLE `Seat_Matrix` ADD CONSTRAINT `Seat_Matrix_fk0` FOREIGN KEY (`Branch_Code`) REFERENCES `Branch_Details`(`Branch_Code`);

ALTER TABLE `Seat_Matrix` ADD CONSTRAINT `Seat_Matrix_fk1` FOREIGN KEY (`College_ID`) REFERENCES `College_Details`(`College_ID`);

ALTER TABLE `Student_Profile` ADD CONSTRAINT `Student_Profile_fk0` FOREIGN KEY (`Gender`) REFERENCES `Fee_Structure`(`Gender`);

ALTER TABLE `Student_Profile` ADD CONSTRAINT `Student_Profile_fk1` FOREIGN KEY (`Category`) REFERENCES `Fee_Structure`(`Category`);

ALTER TABLE `Student_Profile` ADD CONSTRAINT `Student_Profile_fk2` FOREIGN KEY (`JEE_RollNo`) REFERENCES `Result`(`JEE_Rollno`);

ALTER TABLE `Student_Email` ADD CONSTRAINT `Student_Email_fk0` FOREIGN KEY (`Student_ID`) REFERENCES `Student_Profile`(`Student_ID`);

ALTER TABLE `Student_Email` ADD CONSTRAINT `Student_Email_fk1` FOREIGN KEY (`Email`) REFERENCES `Student_Profile`(`Student_ID`);

ALTER TABLE `Student_Phone` ADD CONSTRAINT `Student_Phone_fk0` FOREIGN KEY (`Student_ID`) REFERENCES `Student_Profile`(`Student_ID`);

ALTER TABLE `Preferences` ADD CONSTRAINT `Preferences_fk0` FOREIGN KEY (`Student_ID`) REFERENCES `Student_Profile`(`Student_ID`);

ALTER TABLE `Preferences` ADD CONSTRAINT `Preferences_fk1` FOREIGN KEY (`College_ID`) REFERENCES `College_Profile`(`College_ID`);

ALTER TABLE `Preferences` ADD CONSTRAINT `Preferences_fk2` FOREIGN KEY (`Branch_Code`) REFERENCES `Branch_Details`(`Branch_Code`);

ALTER TABLE `Admn_Profile` ADD CONSTRAINT `Admn_Profile_fk0` FOREIGN KEY (`Region_Code`) REFERENCES `Region`(`Region_ID`);

ALTER TABLE `Admin_Phone` ADD CONSTRAINT `Admin_Phone_fk0` FOREIGN KEY (`Admin_ID`) REFERENCES `Admn_Profile`(`Admin_ID`);

ALTER TABLE `Region` ADD CONSTRAINT `Region_fk0` FOREIGN KEY (`Region_Incharge_College_ID`) REFERENCES `College_Profile`(`College_ID`);

ALTER TABLE `Allotment_Matrix` ADD CONSTRAINT `Allotment_Matrix_fk0` FOREIGN KEY (`Student_ID`) REFERENCES `Student_Profile`(`Student_ID`);

ALTER TABLE `Allotment_Matrix` ADD CONSTRAINT `Allotment_Matrix_fk1` FOREIGN KEY (`Branch_Code`) REFERENCES `Branch_Details`(`Branch_Code`);

ALTER TABLE `Allotment_Matrix` ADD CONSTRAINT `Allotment_Matrix_fk2` FOREIGN KEY (`College_Code`) REFERENCES `College_Profile`(`College_ID`);

