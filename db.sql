CREATE DATABASE school_accounting CHARACTER SET utf8 COLLATE utf8_general_ci;
USE school_accounting; 

-- Create allobalance
CREATE TABLE `allobalance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `allocationID` text,
  `amount` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- Create allocation
CREATE TABLE `allocation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `payableID` text,
  `name` text,
  `percentage` text,
  `notes` text,
  `balance` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- Create genbalance
CREATE TABLE `genbalance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `allocationID` text,
  `amount` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- Create grade
CREATE TABLE `grade` (
  `id` int NOT NULL AUTO_INCREMENT,
  `grade` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- Create parent
CREATE TABLE `parent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text,
  `address` text,
  `relationship` text,
  `contact` text,
  `notes` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- Create payables
CREATE TABLE `payables` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text,
  `amount` text,
  `percentage` text,
  `year` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- Create payments
CREATE TABLE `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `or_no` text,
  `amount` text,
  `parentID` text,
  `studentID` text,
  `year` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- Create scholar
CREATE TABLE `scholar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text,
  `amount` text,
  `notes` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- Create schoolyr
CREATE TABLE `schoolyr` (
  `id` int NOT NULL AUTO_INCREMENT,
  `schoolyr` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- Create section
CREATE TABLE `section` (
  `id` int NOT NULL AUTO_INCREMENT,
  `class` text,
  `gradeID` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- Create student
CREATE TABLE `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text,
  `LRN` text,
  `parentID` text,
  `gradeID` text,
  `sectionID` text,
  `scholarshipID` text,
  `schoolyrID` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- Create users
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text,
  `password` text,
  `role` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- Create vouchers
CREATE TABLE `vouchers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `name` text,
  `requestor` text,
  `amount` text,
  `voucherno` text,
  `allocationID` text,
  `notes` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



-- Sample Data

INSERT INTO `users` VALUES (1,'Treasurer','password','Treasurer'),(2,'UserMan','password','User'),(3,'Super Admin','password','Super Admin');

INSERT INTO `schoolyr` VALUES (1,'2024-2025'),(2,'2023-2024');


