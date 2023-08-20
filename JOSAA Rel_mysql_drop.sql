ALTER TABLE `College_Phone` DROP FOREIGN KEY `College_Phone_fk0`;

ALTER TABLE `College_Email` DROP FOREIGN KEY `College_Email_fk0`;

ALTER TABLE `College_Ranking` DROP FOREIGN KEY `College_Ranking_fk0`;

ALTER TABLE `Branch_Details` DROP FOREIGN KEY `Branch_Details_fk0`;

ALTER TABLE `Branch_Details` DROP FOREIGN KEY `Branch_Details_fk1`;

ALTER TABLE `Seat_Matrix` DROP FOREIGN KEY `Seat_Matrix_fk0`;

ALTER TABLE `Seat_Matrix` DROP FOREIGN KEY `Seat_Matrix_fk1`;

ALTER TABLE `Student_Profile` DROP FOREIGN KEY `Student_Profile_fk0`;

ALTER TABLE `Student_Profile` DROP FOREIGN KEY `Student_Profile_fk1`;

ALTER TABLE `Student_Profile` DROP FOREIGN KEY `Student_Profile_fk2`;

ALTER TABLE `Student_Email` DROP FOREIGN KEY `Student_Email_fk0`;

ALTER TABLE `Student_Email` DROP FOREIGN KEY `Student_Email_fk1`;

ALTER TABLE `Student_Phone` DROP FOREIGN KEY `Student_Phone_fk0`;

ALTER TABLE `Preferences` DROP FOREIGN KEY `Preferences_fk0`;

ALTER TABLE `Preferences` DROP FOREIGN KEY `Preferences_fk1`;

ALTER TABLE `Preferences` DROP FOREIGN KEY `Preferences_fk2`;

ALTER TABLE `Admn_Profile` DROP FOREIGN KEY `Admn_Profile_fk0`;

ALTER TABLE `Admin_Phone` DROP FOREIGN KEY `Admin_Phone_fk0`;

ALTER TABLE `Region` DROP FOREIGN KEY `Region_fk0`;

ALTER TABLE `Allotment_Matrix` DROP FOREIGN KEY `Allotment_Matrix_fk0`;

ALTER TABLE `Allotment_Matrix` DROP FOREIGN KEY `Allotment_Matrix_fk1`;

ALTER TABLE `Allotment_Matrix` DROP FOREIGN KEY `Allotment_Matrix_fk2`;

DROP TABLE IF EXISTS `College_Profile`;

DROP TABLE IF EXISTS `College_Phone`;

DROP TABLE IF EXISTS `College_Email`;

DROP TABLE IF EXISTS `College_Ranking`;

DROP TABLE IF EXISTS `Branch_Details`;

DROP TABLE IF EXISTS `Seat_Matrix`;

DROP TABLE IF EXISTS `Student_Profile`;

DROP TABLE IF EXISTS `Student_Email`;

DROP TABLE IF EXISTS `Student_Phone`;

DROP TABLE IF EXISTS `Branch_Index`;

DROP TABLE IF EXISTS `Preferences`;

DROP TABLE IF EXISTS `Result`;

DROP TABLE IF EXISTS `Admn_Profile`;

DROP TABLE IF EXISTS `Admin_Phone`;

DROP TABLE IF EXISTS `Region`;

DROP TABLE IF EXISTS `Fee_Structure`;

DROP TABLE IF EXISTS `Allotment_Matrix`;

