-- This script contains the basic information for the table that backed the record type this was generated from.
-- This script only includes field names, field types, unique constraints and the PRIMARY KEY constraint. It does not include other constraints.
    CREATE TABLE IF NOT EXISTS `LR_GROUP_LOG_VISIBILITY_MAP` (
       `ID` INTEGER NOT NULL AUTO_INCREMENT,
        `LOG_PATH_ID` INTEGER,
        `GROUP_ID` INTEGER,
        `CREATED_BY` VARCHAR(255),
        `CREATED_ON` DATETIME(6),
        `IS_ACTIVE` BIT,
        PRIMARY KEY (`ID`)
    ) ENGINE=InnoDB;
    
-- This script contains the basic information for the table that backed the record type this was generated from.
-- This script only includes field names, field types, unique constraints and the PRIMARY KEY constraint. It does not include other constraints.
    CREATE TABLE IF NOT EXISTS `LR_LOG_DOCUMENT` (
       `ID` INTEGER NOT NULL AUTO_INCREMENT,
        `APPIAN_DOC_ID` INTEGER,
        `LOG_PATH_REF_ID` INTEGER,
        `LOG_START_DATE` DATE,
        `LOG_END_DATE` DATE,
        `IS_ACTIVE` BIT,
        `CREATED_BY` VARCHAR(255),
        `CREATED_ON` DATETIME(6),
        `SERVER` VARCHAR(255),
        `IS_ZIP` BIT,
        PRIMARY KEY (`ID`)
    ) ENGINE=InnoDB;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- Table structure for table `LR_LOG_REFERENCE`

CREATE TABLE IF NOT EXISTS `LR_LOG_REFERENCE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOG_PATH` VARCHAR(255) DEFAULT NULL,
  `IS_CSV` BIT(1) DEFAULT NULL,
  `IS_DAILY_LOG` BIT(1) DEFAULT NULL,
  `IS_ACTIVE` BIT(1) DEFAULT NULL,
  `FIRST_COLUMN_DATE_TIME` BIT(1) DEFAULT NULL,
  `CREATED_ON` DATETIME(6) DEFAULT NULL,
  `CREATED_BY` VARCHAR(255) DEFAULT NULL,
  `MODIFIED_ON` DATETIME(6) DEFAULT NULL,
  `MODIFIED_BY` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table `LR_LOG_REFERENCE`

INSERT INTO `LR_LOG_REFERENCE` (`ID`, `LOG_PATH`, `IS_CSV`, `IS_DAILY_LOG`, `IS_ACTIVE`, `FIRST_COLUMN_DATE_TIME`, `CREATED_ON`, `CREATED_BY`, `MODIFIED_ON`, `MODIFIED_BY`) VALUES
(1, 'login-audit.csv', b'1', b'1', b'1', b'0', NOW(), 'Appian Administrator', NULL, NULL),
(2, 'logout-audit.csv', b'1', b'1', b'1', b'0', NOW(), 'Appian Administrator', NULL, NULL),
(3, 'authz-audit.csv', b'1', b'0', b'1', b'0', NOW(), 'Appian Administrator', NULL, NULL),
(4, 'audit/records_usage.csv', b'1', b'0', b'1', b'1', NOW(), 'Appian Administrator', NULL, NULL),
(5, 'data-metrics/admin_console.csv', b'1', b'0', b'1', b'1', NOW(), 'Appian Administrator', NULL, NULL),
(6, 'data-metrics/actions.csv', b'1', b'0', b'1', b'1', NOW(), 'Appian Administrator', NULL, NULL),
(7, 'data-metrics/data-server.csv', b'1', b'0', b'1', b'0', NOW(), 'Appian Administrator', NULL, NULL),
(8, 'data-metrics/system.csv', b'1', b'0', b'1', b'1', NOW(), 'Appian Administrator', NULL, NULL),
(9, 'audit/task_errors.csv', b'1', b'0', b'1', b'0', NOW(), 'Appian Administrator', NULL, NULL),
(10, 'tomcat-stdOut.log', b'0', b'0', b'1', NULL, NOW(), 'Appian Administrator', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
