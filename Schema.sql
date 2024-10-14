-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 12, 2024 at 12:50 PM
-- Server version: 10.5.21-MariaDB-0+deb11u1
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acaughey05`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `project_2024_ActiveCandidates`
-- (See below for the actual view)
--
CREATE TABLE `project_2024_ActiveCandidates` (
`CandidateID` int(11)
,`FirstName` varchar(50)
,`LastName` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `project_2024_Applications`
--

CREATE TABLE `project_2024_Applications` (
  `ApplicationID` int(11) NOT NULL,
  `CandidateID` int(11) NOT NULL,
  `JobID` int(11) NOT NULL,
  `DateApplied` date DEFAULT NULL,
  `app_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_2024_Applications`
--

INSERT INTO `project_2024_Applications` (`ApplicationID`, `CandidateID`, `JobID`, `DateApplied`, `app_status`) VALUES
(1, 1, 1, '2024-03-01', 1),
(2, 2, 2, '2024-03-02', 2),
(3, 3, 3, '2024-03-03', 3),
(4, 4, 1, '2024-03-04', 1),
(5, 5, 5, '2024-03-05', 2),
(6, 6, 6, '2024-03-06', 3),
(7, 7, 7, '2024-03-07', 1),
(8, 8, 8, '2024-03-08', 2),
(9, 9, 9, '2024-03-09', 3),
(10, 10, 10, '2024-03-10', 1),
(11, 11, 11, '2024-03-11', 2),
(12, 12, 12, '2024-03-12', 3),
(13, 13, 13, '2024-03-13', 1),
(14, 14, 14, '2024-03-14', 2),
(15, 15, 15, '2024-03-15', 3),
(16, 16, 16, '2024-03-16', 1),
(17, 17, 17, '2024-03-17', 2),
(18, 18, 18, '2024-03-18', 3),
(19, 19, 19, '2024-03-19', 1),
(20, 20, 20, '2024-03-20', 2),
(21, 21, 21, '2024-03-21', 3),
(22, 22, 22, '2024-03-22', 1),
(23, 23, 23, '2024-03-23', 2),
(24, 24, 24, '2024-03-24', 3),
(25, 25, 25, '2024-03-25', 1),
(26, 26, 26, '2024-03-26', 2),
(27, 27, 27, '2024-03-27', 3),
(28, 28, 28, '2024-03-28', 1),
(29, 29, 29, '2024-03-29', 2),
(30, 30, 30, '2024-03-30', 3),
(31, 31, 31, '2024-03-31', 1),
(32, 32, 32, '2024-04-01', 2),
(33, 33, 33, '2024-04-02', 3),
(34, 34, 34, '2024-04-03', 1),
(35, 35, 35, '2024-04-04', 2),
(36, 36, 36, '2024-04-05', 3),
(37, 37, 37, '2024-04-06', 1),
(38, 38, 38, '2024-04-07', 2),
(39, 39, 39, '2024-04-08', 3),
(40, 40, 40, '2024-04-09', 1),
(41, 41, 41, '2024-04-10', 2),
(42, 42, 42, '2024-04-11', 3),
(43, 43, 43, '2024-04-12', 1),
(44, 44, 44, '2024-04-13', 2),
(45, 45, 45, '2024-04-14', 3),
(46, 1, 46, '2024-04-15', 1),
(47, 2, 47, '2024-04-16', 2),
(48, 3, 48, '2024-04-17', 3),
(49, 4, 1, '2024-04-18', 1),
(50, 5, 2, '2024-04-19', 2),
(54, 1, 1, '2024-03-12', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `project_2024_CandidateApplications`
-- (See below for the actual view)
--
CREATE TABLE `project_2024_CandidateApplications` (
`ApplicationID` int(11)
,`FirstName` varchar(50)
,`LastName` varchar(50)
,`Title` varchar(100)
,`Description` text
,`DateApplied` date
);

-- --------------------------------------------------------

--
-- Table structure for table `project_2024_Candidates`
--

CREATE TABLE `project_2024_Candidates` (
  `CandidateID` int(11) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_2024_Candidates`
--

INSERT INTO `project_2024_Candidates` (`CandidateID`, `FirstName`, `LastName`, `Email`, `Phone`, `IsActive`) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890', 1),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '987-654-3210', 0),
(3, 'Bob', 'Johnson', 'bob.johnson@example.com', '555-555-5555', 1),
(4, 'Alice', 'Williams', 'alice.williams@example.com', '111-222-3333', 0),
(5, 'Michael', 'Brown', 'michael.brown@example.com', '777-777-7777', 1),
(6, 'Sarah', 'Davis', 'sarah.davis@example.com', '888-888-8888', 0),
(7, 'Chris', 'Wilson', 'chris.wilson@example.com', '999-999-9999', 1),
(8, 'Emily', 'Taylor', 'emily.taylor@example.com', '333-333-3333', 0),
(9, 'Alex', 'Martinez', 'alex.martinez@example.com', '222-222-2222', 1),
(10, 'Nicole', 'Anderson', 'nicole.anderson@example.com', '444-444-4444', 0),
(11, 'Matt', 'Garcia', 'matt.garcia@example.com', '555-123-4567', 1),
(12, 'David', 'Rodriguez', 'david.rodriguez@example.com', '666-666-6666', 0),
(13, 'Jessica', 'Lopez', 'jessica.lopez@example.com', '777-777-7777', 1),
(14, 'Steven', 'Hernandez', 'steven.hernandez@example.com', '888-888-8888', 0),
(15, 'Laura', 'Young', 'laura.young@example.com', '999-999-9999', 1),
(16, 'Kevin', 'King', 'kevin.king@example.com', '444-555-6666', 0),
(17, 'Rachel', 'Lee', 'rachel.lee@example.com', '333-444-5555', 1),
(18, 'Mark', 'Gonzalez', 'mark.gonzalez@example.com', '222-333-4444', 0),
(19, 'Karen', 'Lewis', 'karen.lewis@example.com', '111-555-9999', 1),
(20, 'Brian', 'Walker', 'brian.walker@example.com', '666-999-1111', 0),
(21, 'Stephanie', 'Hall', 'stephanie.hall@example.com', '777-555-3333', 1),
(22, 'Justin', 'Allen', 'justin.allen@example.com', '888-444-2222', 0),
(23, 'Rachel', 'Young', 'rachel.young@example.com', '999-333-1111', 1),
(24, 'Daniel', 'Wright', 'daniel.wright@example.com', '444-888-5555', 0),
(25, 'Amanda', 'Scott', 'amanda.scott@example.com', '555-999-1111', 1),
(26, 'Michael', 'Torres', 'michael.torres@example.com', '666-444-8888', 0),
(27, 'Jennifer', 'Nguyen', 'jennifer.nguyen@example.com', '777-333-2222', 1),
(28, 'Brandon', 'Hill', 'brandon.hill@example.com', '888-999-7777', 0),
(29, 'Melissa', 'Flores', 'melissa.flores@example.com', '999-666-4444', 1),
(30, 'Jonathan', 'Green', 'jonathan.green@example.com', '333-777-1111', 0),
(31, 'Emily', 'Chavez', 'emily.chavez@example.com', '444-222-8888', 1),
(32, 'Benjamin', 'Dunn', 'benjamin.dunn@example.com', '555-888-4444', 0),
(33, 'Jennifer', 'Perkins', 'jennifer.perkins@example.com', '666-333-9999', 1),
(34, 'Nathan', 'Hudson', 'nathan.hudson@example.com', '777-999-2222', 0),
(35, 'Jessica', 'Spencer', 'jessica.spencer@example.com', '888-222-7777', 1),
(36, 'David', 'Glover', 'david.glover@example.com', '999-555-4444', 0),
(37, 'Rebecca', 'Hawkins', 'rebecca.hawkins@example.com', '444-666-7777', 1),
(38, 'Matthew', 'Boyd', 'matthew.boyd@example.com', '555-777-9999', 0),
(39, 'Jennifer', 'Cole', 'jennifer.cole@example.com', '666-444-2222', 1),
(40, 'Michael', 'Mendoza', 'michael.mendoza@example.com', '777-222-9999', 0),
(41, 'James', 'Berry', 'james.berry@example.com', '888-999-1111', 1),
(42, 'Sarah', 'Andrews', 'sarah.andrews@example.com', '999-888-2222', 0),
(43, 'Daniel', 'Ferguson', 'daniel.ferguson@example.com', '444-777-8888', 1),
(44, 'Rachel', 'Bradley', 'rachel.bradley@example.com', '555-666-9999', 0),
(45, 'Michael', 'Knight', 'michael.knight@example.com', '666-555-8888', 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_2024_CandidateSkills`
--

CREATE TABLE `project_2024_CandidateSkills` (
  `CandidateID` int(11) NOT NULL,
  `SkillID` int(11) NOT NULL,
  `ExperienceYears` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_2024_CandidateSkills`
--

INSERT INTO `project_2024_CandidateSkills` (`CandidateID`, `SkillID`, `ExperienceYears`) VALUES
(1, 1, 3),
(1, 2, 2),
(2, 1, 3),
(2, 3, 4),
(2, 4, 1),
(3, 2, 2),
(3, 5, 3),
(3, 6, 5),
(4, 2, 5),
(4, 7, 2),
(4, 8, 3),
(5, 3, 3),
(5, 9, 4),
(5, 10, 2),
(6, 3, 2),
(7, 4, 4),
(8, 4, 1),
(9, 5, 2),
(10, 5, 3),
(32, 1, 4),
(45, 15, 3),
(45, 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_2024_Employers`
--

CREATE TABLE `project_2024_Employers` (
  `EmployerID` int(11) NOT NULL,
  `CompanyName` varchar(100) DEFAULT NULL,
  `ContactName` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `ContactSName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_2024_Employers`
--

INSERT INTO `project_2024_Employers` (`EmployerID`, `CompanyName`, `ContactName`, `Email`, `Phone`, `ContactSName`) VALUES
(1, 'ABC Corporation', 'John', 'john.doe@abccorp.com', '123-456-7890', 'Doe'),
(2, 'XYZ Corporation', 'Jane', 'jane.smith@xyzcorp.com', '987-654-3210', 'Smith'),
(3, 'Acme Inc.', 'Bob', 'bob.johnson@acme.com', '555-555-5555', 'Johnson'),
(4, 'Example Company', 'Alice', 'alice@example.com', '555-123-4567', 'Johnson'),
(5, 'Smith Enterprises', 'Mike', 'mike.williams@smithent.com', '444-444-4444', 'Williams'),
(6, 'Johnson & Sons', 'Sarah', 'sarah@johnsonsons.com', '111-222-3333', 'Johnson'),
(7, 'Tech Innovations', 'Chris', 'chris@techinnovations.com', '777-777-7777', 'Brown'),
(8, 'Global Solutions', 'Emily', 'emily@globalsolutions.com', '888-888-8888', 'Davis'),
(9, 'Creative Designs', 'Alex', 'alex@creativedesigns.com', '999-999-9999', 'Clark'),
(10, 'Sunset Enterprises', 'Nicole', 'nicole@sunsetent.com', '333-333-3333', 'Roberts'),
(11, 'Blue Sky Corporation', 'Matt', 'matt@blueskycorp.com', '222-222-2222', 'Thompson'),
(12, 'Red Rock Industries', 'David', 'david@redrockind.com', '666-666-6666', 'White'),
(13, 'Silver Star Solutions', 'Jessica', 'jessica@silverstar.com', '555-111-2222', 'Lee'),
(14, 'Golden Gate Group', 'Steven', 'steven@goldengategroup.com', '111-333-5555', 'Harris'),
(15, 'Evergreen Enterprises', 'Michelle', 'michelle@evergreenent.com', '777-888-9999', 'Green'),
(16, 'Dynamic Designs', 'Kevin', 'kevin@dynamicdesigns.com', '888-777-6666', 'Adams'),
(17, 'Innovative Solutions', 'Laura', 'laura@innovativesol.com', '999-888-7777', 'Taylor'),
(18, 'Pacific Coast Company', 'Andrew', 'andrew@pacificcoast.com', '444-555-6666', 'Wilson'),
(19, 'Mountain View Enterprises', 'Rachel', 'rachel@mountainviewent.com', '333-444-5555', 'Martin'),
(20, 'Ocean Blue Corp', 'Mark', 'mark@oceanbluecorp.com', '222-333-4444', 'Garcia'),
(21, 'Dynamic Enterprises', 'Karen', 'karen@dynamicent.com', '111-555-9999', 'Scott'),
(22, 'Summit Solutions', 'Brian', 'brian@summitsol.com', '666-999-1111', 'Turner'),
(23, 'Terra Firma Industries', 'Stephanie', 'stephanie@terrafirma.com', '777-555-3333', 'Evans'),
(24, 'Apex Innovations', 'Justin', 'justin@apexinnovations.com', '888-444-2222', 'Hill'),
(25, 'Pioneer Enterprises', 'Rachel', 'rachel@pioneerent.com', '999-333-1111', 'Cooper'),
(26, 'Visionary Ventures', 'Daniel', 'daniel@visionaryventures.com', '444-888-5555', 'King'),
(27, 'Horizon Holdings', 'Amanda', 'amanda@horizonholdings.com', '555-999-1111', 'Rodriguez'),
(28, 'Vivid Solutions', 'Michael', 'michael@vividsolutions.com', '666-444-8888', 'Scott'),
(29, 'Starlight Corporation', 'Jennifer', 'jennifer@starlightcorp.com', '777-333-2222', 'Moore'),
(30, 'Sapphire Enterprises', 'Brandon', 'brandon@sapphireent.com', '888-999-7777', 'Carter'),
(31, 'Emerald Industries', 'Melissa', 'melissa@emeraldind.com', '999-666-4444', 'Hall'),
(32, 'Summit Systems', 'Jonathan', 'jonathan@summitsystems.com', '333-777-1111', 'Wood'),
(33, 'Golden State Solutions', 'Emily', 'emily@goldenstate.com', '444-222-8888', 'Turner'),
(34, 'Blue Ocean Enterprises', 'Benjamin', 'benjamin@blueoceanent.com', '555-888-4444', 'Clark'),
(35, 'Sunrise Corporation', 'Jennifer', 'jennifer@sunrisecorp.com', '666-333-9999', 'Lewis'),
(36, 'Crystal Clear Solutions', 'Nathan', 'nathan@crystalclearsol.com', '777-999-2222', 'Scott'),
(37, 'Polaris Industries', 'Jessica', 'jessica@polarisind.com', '888-222-7777', 'Hill'),
(38, 'Phoenix Corporation', 'David', 'david@phoenixcorp.com', '999-555-4444', 'Baker'),
(39, 'Northern Lights Enterprises', 'Rebecca', 'rebecca@northernlightsent.com', '444-666-7777', 'Martinez'),
(40, 'Southern Star Solutions', 'Matthew', 'matthew@southernstar.com', '555-777-9999', 'Turner'),
(41, 'Oceanview Enterprises', 'Emily', 'emily@oceanviewent.com', '666-444-2222', 'Phillips'),
(42, 'Highland Holdings', 'James', 'james@highlandholdings.com', '777-222-9999', 'Garcia'),
(43, 'West Coast Innovations', 'Sarah', 'sarah@westcoastinnovations.com', '888-999-1111', 'Parker'),
(44, 'Eastside Enterprises', 'Daniel', 'daniel@eastsideent.com', '999-888-2222', 'Lee'),
(45, 'Southwest Solutions', 'Rachel', 'rachel@southwestsol.com', '444-777-8888', 'Rodriguez'),
(46, 'Northstar Industries', 'Michael', 'michael@northstarind.com', '555-666-9999', 'Hill'),
(47, 'Midwest Holdings', 'Jennifer', 'jennifer@midwestholdings.com', '666-555-8888', 'Adams'),
(48, 'Central Solutions', 'Matthew', 'matthew@centralsol.com', '777-444-7777', 'Wilson');

-- --------------------------------------------------------

--
-- Stand-in structure for view `project_2024_JobApplicationsSummary`
-- (See below for the actual view)
--
CREATE TABLE `project_2024_JobApplicationsSummary` (
`EmployerID` int(11)
,`CompanyName` varchar(100)
,`TotalApplications` bigint(21)
,`AverageSalary` decimal(14,6)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `project_2024_JobApplicationsThisMonth`
-- (See below for the actual view)
--
CREATE TABLE `project_2024_JobApplicationsThisMonth` (
`ApplicationID` int(11)
,`CandidateID` int(11)
,`JobID` int(11)
,`DateApplied` date
,`app_status` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `project_2024_Jobs`
--

CREATE TABLE `project_2024_Jobs` (
  `JobID` int(11) NOT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Requirements` text DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL,
  `EmployerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_2024_Jobs`
--

INSERT INTO `project_2024_Jobs` (`JobID`, `Title`, `Description`, `Requirements`, `Salary`, `EmployerID`) VALUES
(1, 'Software Engineer', 'Develop new software applications using various programming languages and tools.', 'Bachelor\'s degree in Computer Science or related field, Proficiency in Java, C++, or Python, Strong problem-solving skills', 80000.00, 1),
(2, 'Data Analyst', 'Analyze and interpret data to help companies make better business decisions.', 'Bachelor\'s degree in Statistics, Mathematics, Economics, or related field, Proficiency in SQL and statistical analysis software', 70000.00, 2),
(3, 'Marketing Manager', 'Develop marketing strategies to promote products or services and increase brand awareness.', 'Bachelor\'s degree in Marketing or related field, Strong communication and analytical skills, Experience with digital marketing channels', 75000.00, 3),
(4, 'Graphic Designer', 'Create visual concepts to communicate ideas that inspire, inform, or captivate consumers.', 'Bachelor\'s degree in Graphic Design or related field, Proficiency in Adobe Creative Suite, Strong portfolio of work', 60000.00, 4),
(5, 'Accountant', 'Prepare financial records and ensure compliance with accounting standards and regulations.', 'Bachelor\'s degree in Accounting or Finance, CPA certification preferred, Proficiency in accounting software', 65000.00, 5),
(6, 'HR Manager', 'Oversee recruitment, training, and employee relations within the organization.', 'Bachelor\'s degree in Human Resources or related field, Strong interpersonal and communication skills, Knowledge of employment law', 70000.00, 6),
(7, 'Web Developer', 'Design and maintain websites and web applications using HTML, CSS, and JavaScript.', 'Bachelor\'s degree in Computer Science or related field, Proficiency in front-end and back-end development technologies', 75000.00, 7),
(8, 'Sales Representative', 'Sell products or services to businesses or consumers.', 'Bachelor\'s degree in Business Administration or related field, Strong negotiation and persuasion skills, Ability to build and maintain client relationships', 60000.00, 8),
(9, 'Executive Assistant', 'Provide administrative support to executives and senior management.', 'Bachelor\'s degree in Business Administration or related field, Strong organizational and multitasking abilities, Proficiency in Microsoft Office suite', 55000.00, 9),
(10, 'Content Writer', 'Create written content for websites, blogs, and other digital platforms.', 'Bachelor\'s degree in English, Journalism, or related field, Excellent writing and editing skills, Understanding of SEO best practices', 50000.00, 10),
(11, 'Software Developer', 'Design and develop software applications to meet business needs.', 'Bachelor\'s degree in Computer Science or related field, Proficiency in programming languages such as Java, C#, or JavaScript', 80000.00, 11),
(12, 'Financial Analyst', 'Analyze financial data and trends to provide insights for decision-making.', 'Bachelor\'s degree in Finance, Economics, or related field, Strong analytical and problem-solving skills, Proficiency in Microsoft Excel', 70000.00, 12),
(13, 'Social Media Manager', 'Manage social media accounts and create content to engage with followers.', 'Bachelor\'s degree in Marketing, Communications, or related field, Experience with social media platforms and analytics tools', 65000.00, 13),
(14, 'UX/UI Designer', 'Create user-friendly interfaces for websites and applications.', 'Bachelor\'s degree in Graphic Design, Interaction Design, or related field, Proficiency in design software such as Adobe XD or Sketch', 75000.00, 14),
(15, 'IT Support Specialist', 'Provide technical support and troubleshooting for hardware and software issues.', 'Associate degree or certification in IT or related field, Strong problem-solving and communication skills, Knowledge of operating systems and network protocols', 55000.00, 15),
(16, 'Project Manager', 'Plan and oversee projects to ensure they are completed on time and within budget.', 'Bachelor\'s degree in Business Administration, Engineering, or related field, Strong leadership and organizational skills, Experience with project management software', 80000.00, 16),
(17, 'Customer Service Representative', 'Handle customer inquiries, complaints, and orders via phone, email, or chat.', 'High school diploma or equivalent, Excellent communication and problem-solving skills, Ability to multitask and work in a fast-paced environment', 45000.00, 17),
(18, 'Business Analyst', 'Gather and analyze data to identify business opportunities and improve processes.', 'Bachelor\'s degree in Business Administration, Economics, or related field, Strong analytical and critical thinking skills, Proficiency in data analysis tools', 70000.00, 18),
(19, 'Digital Marketing Specialist', 'Develop and execute digital marketing campaigns to drive traffic and conversions.', 'Bachelor\'s degree in Marketing, Communications, or related field, Experience with SEO, SEM, and social media advertising', 65000.00, 19),
(20, 'Network Administrator', 'Manage and maintain computer networks and systems for optimal performance and security.', 'Bachelor\'s degree in Computer Science, Information Technology, or related field, Certifications such as CompTIA Network+ or Cisco CCNA', 70000.00, 20),
(21, 'Operations Manager', 'Oversee daily operations and ensure efficiency and productivity across departments.', 'Bachelor\'s degree in Business Administration, Operations Management, or related field, Strong leadership and problem-solving skills, Experience in a supervisory role', 80000.00, 21),
(22, 'Technical Writer', 'Create user manuals, guides, and other technical documentation for software and hardware products.', 'Bachelor\'s degree in Technical Writing, English, or related field, Excellent writing and editing skills, Ability to understand complex technical concepts', 60000.00, 22),
(23, 'Sales Manager', 'Lead and motivate sales teams to achieve revenue targets and business objectives.', 'Bachelor\'s degree in Business Administration, Marketing, or related field, Proven track record of successful sales management, Strong communication and leadership skills', 75000.00, 23),
(24, 'Quality Assurance Analyst', 'Test software applications to ensure they meet quality standards and specifications.', 'Bachelor\'s degree in Computer Science, Software Engineering, or related field, Experience with testing methodologies and tools', 65000.00, 24),
(25, 'Human Resources Coordinator', 'Assist with recruitment, onboarding, and employee relations activities within the organization.', 'Bachelor\'s degree in Human Resources, Business Administration, or related field, Strong organizational and interpersonal skills, Knowledge of HR processes and regulations', 55000.00, 25),
(26, 'Product Manager', 'Manage the development and launch of products or services from conception to market.', 'Bachelor\'s degree in Business Administration, Marketing, or related field, Strong project management and leadership skills, Experience in product development or marketing', 80000.00, 26),
(27, 'Database Administrator', 'Design, implement, and maintain databases to support organizational needs and operations.', 'Bachelor\'s degree in Computer Science, Database Administration, or related field, Proficiency in database management systems such as MySQL or Oracle', 70000.00, 27),
(28, 'Software Engineer', 'Develop new software applications using various programming languages and tools.', 'Bachelor\'s degree in Computer Science or related field, Proficiency in Java, C++, or Python, Strong problem-solving skills', 80000.00, 28),
(29, 'Data Analyst', 'Analyze and interpret data to help companies make better business decisions.', 'Bachelor\'s degree in Statistics, Mathematics, Economics, or related field, Proficiency in SQL and statistical analysis software', 70000.00, 29),
(30, 'Marketing Manager', 'Develop marketing strategies to promote products or services and increase brand awareness.', 'Bachelor\'s degree in Marketing or related field, Strong communication and analytical skills, Experience with digital marketing channels', 75000.00, 30),
(31, 'Graphic Designer', 'Create visual concepts to communicate ideas that inspire, inform, or captivate consumers.', 'Bachelor\'s degree in Graphic Design or related field, Proficiency in Adobe Creative Suite, Strong portfolio of work', 60000.00, 31),
(32, 'Accountant', 'Prepare financial records and ensure compliance with accounting standards and regulations.', 'Bachelor\'s degree in Accounting or Finance, CPA certification preferred, Proficiency in accounting software', 65000.00, 32),
(33, 'HR Manager', 'Oversee recruitment, training, and employee relations within the organization.', 'Bachelor\'s degree in Human Resources or related field, Strong interpersonal and communication skills, Knowledge of employment law', 70000.00, 33),
(34, 'Web Developer', 'Design and maintain websites and web applications using HTML, CSS, and JavaScript.', 'Bachelor\'s degree in Computer Science or related field, Proficiency in front-end and back-end development technologies', 75000.00, 34),
(35, 'Sales Representative', 'Sell products or services to businesses or consumers.', 'Bachelor\'s degree in Business Administration or related field, Strong negotiation and persuasion skills, Ability to build and maintain client relationships', 60000.00, 35),
(36, 'Executive Assistant', 'Provide administrative support to executives and senior management.', 'Bachelor\'s degree in Business Administration or related field, Strong organizational and multitasking abilities, Proficiency in Microsoft Office suite', 55000.00, 36),
(37, 'Content Writer', 'Create written content for websites, blogs, and other digital platforms.', 'Bachelor\'s degree in English, Journalism, or related field, Excellent writing and editing skills, Understanding of SEO best practices', 50000.00, 37),
(38, 'Software Developer', 'Design and develop software applications to meet business needs.', 'Bachelor\'s degree in Computer Science or related field, Proficiency in programming languages such as Java, C#, or JavaScript', 80000.00, 38),
(39, 'Financial Analyst', 'Analyze financial data and trends to provide insights for decision-making.', 'Bachelor\'s degree in Finance, Economics, or related field, Strong analytical and problem-solving skills, Proficiency in Microsoft Excel', 70000.00, 39),
(40, 'Social Media Manager', 'Manage social media accounts and create content to engage with followers.', 'Bachelor\'s degree in Marketing, Communications, or related field, Experience with social media platforms and analytics tools', 65000.00, 40),
(41, 'UX/UI Designer', 'Create user-friendly interfaces for websites and applications.', 'Bachelor\'s degree in Graphic Design, Interaction Design, or related field, Proficiency in design software such as Adobe XD or Sketch', 75000.00, 41),
(42, 'IT Support Specialist', 'Provide technical support and troubleshooting for hardware and software issues.', 'Associate degree or certification in IT or related field, Strong problem-solving and communication skills, Knowledge of operating systems and network protocols', 55000.00, 42),
(43, 'Project Manager', 'Plan and oversee projects to ensure they are completed on time and within budget.', 'Bachelor\'s degree in Business Administration, Engineering, or related field, Strong leadership and organizational skills, Experience with project management software', 80000.00, 43),
(44, 'Customer Service Representative', 'Handle customer inquiries, complaints, and orders via phone, email, or chat.', 'High school diploma or equivalent, Excellent communication and problem-solving skills, Ability to multitask and work in a fast-paced environment', 45000.00, 44),
(45, 'Business Analyst', 'Gather and analyze data to identify business opportunities and improve processes.', 'Bachelor\'s degree in Business Administration, Economics, or related field, Strong analytical and critical thinking skills, Proficiency in data analysis tools', 70000.00, 45),
(46, 'Digital Marketing Specialist', 'Develop and execute digital marketing campaigns to drive traffic and conversions.', 'Bachelor\'s degree in Marketing, Communications, or related field, Experience with SEO, SEM, and social media advertising', 65000.00, 46),
(47, 'Network Administrator', 'Manage and maintain computer networks and systems for optimal performance and security.', 'Bachelor\'s degree in Computer Science, Information Technology, or related field, Certifications such as CompTIA Network+ or Cisco CCNA', 70000.00, 47),
(48, 'Operations Manager', 'Oversee daily operations and ensure efficiency and productivity across departments.', 'Bachelor\'s degree in Business Administration, Operations Management, or related field, Strong leadership and problem-solving skills, Experience in a supervisory role', 80000.00, 48);

-- --------------------------------------------------------

--
-- Table structure for table `project_2024_Skills`
--

CREATE TABLE `project_2024_Skills` (
  `SkillID` int(11) NOT NULL,
  `SkillName` varchar(100) DEFAULT NULL,
  `Description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_2024_Skills`
--

INSERT INTO `project_2024_Skills` (`SkillID`, `SkillName`, `Description`) VALUES
(1, 'Programming', 'Ability to write code and develop software applications.'),
(2, 'Data Analysis', 'Ability to analyze and interpret data to extract insights.'),
(3, 'Graphic Design', 'Ability to create visual concepts using software tools.'),
(4, 'Communication', 'Ability to convey information clearly and effectively.'),
(5, 'Problem Solving', 'Ability to identify and solve problems efficiently.'),
(6, 'Project Management', 'Ability to plan, organize, and oversee projects.'),
(7, 'Customer Service', 'Ability to assist and support customers effectively.'),
(8, 'Marketing', 'Ability to promote products or services and engage with customers.'),
(9, 'Financial Analysis', 'Ability to analyze financial data and make informed decisions.'),
(10, 'Creative Writing', 'Ability to write engaging and creative content.'),
(11, 'Network Administration', 'Ability to manage and maintain computer networks.'),
(12, 'Web Development', 'Ability to design and develop websites and web applications.'),
(13, 'Database Management', 'Ability to manage and maintain databases efficiently.'),
(14, 'Public Speaking', 'Ability to speak confidently and effectively in public settings.'),
(15, 'SEO', 'Understanding of search engine optimization techniques.'),
(16, 'Leadership', 'Ability to lead and motivate teams towards common goals.'),
(17, 'Time Management', 'Ability to manage time effectively and prioritize tasks.'),
(18, 'Critical Thinking', 'Ability to evaluate and analyze information objectively.'),
(19, 'UI/UX Design', 'Ability to design user-friendly interfaces for digital products.'),
(20, 'Social Media Marketing', 'Ability to create and execute marketing campaigns on social media platforms.');

-- --------------------------------------------------------

--
-- Table structure for table `project_2024_status`
--

CREATE TABLE `project_2024_status` (
  `Status_ID` int(11) NOT NULL,
  `Status_Name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_2024_status`
--

INSERT INTO `project_2024_status` (`Status_ID`, `Status_Name`) VALUES
(1, 'Submitted'),
(2, 'Under Review'),
(3, 'Interview Scheduled');

-- --------------------------------------------------------

--
-- Structure for view `project_2024_ActiveCandidates`
--
DROP TABLE IF EXISTS `project_2024_ActiveCandidates`;

CREATE ALGORITHM=UNDEFINED DEFINER=`acaughey05`@`localhost` SQL SECURITY DEFINER VIEW `project_2024_ActiveCandidates`  AS SELECT `project_2024_Candidates`.`CandidateID` AS `CandidateID`, `project_2024_Candidates`.`FirstName` AS `FirstName`, `project_2024_Candidates`.`LastName` AS `LastName` FROM `project_2024_Candidates` WHERE `project_2024_Candidates`.`IsActive` = 1 ;

-- --------------------------------------------------------

--
-- Structure for view `project_2024_CandidateApplications`
--
DROP TABLE IF EXISTS `project_2024_CandidateApplications`;

CREATE ALGORITHM=UNDEFINED DEFINER=`acaughey05`@`localhost` SQL SECURITY DEFINER VIEW `project_2024_CandidateApplications`  AS SELECT `A`.`ApplicationID` AS `ApplicationID`, `C`.`FirstName` AS `FirstName`, `C`.`LastName` AS `LastName`, `J`.`Title` AS `Title`, `J`.`Description` AS `Description`, `A`.`DateApplied` AS `DateApplied` FROM ((`project_2024_Applications` `A` join `project_2024_Candidates` `C` on(`A`.`CandidateID` = `C`.`CandidateID`)) join `project_2024_Jobs` `J` on(`A`.`JobID` = `J`.`JobID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `project_2024_JobApplicationsSummary`
--
DROP TABLE IF EXISTS `project_2024_JobApplicationsSummary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`acaughey05`@`localhost` SQL SECURITY DEFINER VIEW `project_2024_JobApplicationsSummary`  AS SELECT `J`.`EmployerID` AS `EmployerID`, `E`.`CompanyName` AS `CompanyName`, count(`A`.`ApplicationID`) AS `TotalApplications`, avg(`J`.`Salary`) AS `AverageSalary` FROM ((`project_2024_Jobs` `J` join `project_2024_Employers` `E` on(`J`.`EmployerID` = `E`.`EmployerID`)) join `project_2024_Applications` `A` on(`J`.`JobID` = `A`.`JobID`)) GROUP BY `J`.`EmployerID`, `E`.`CompanyName` ORDER BY count(`A`.`ApplicationID`) DESC ;

-- --------------------------------------------------------

--
-- Structure for view `project_2024_JobApplicationsThisMonth`
--
DROP TABLE IF EXISTS `project_2024_JobApplicationsThisMonth`;

CREATE ALGORITHM=UNDEFINED DEFINER=`acaughey05`@`localhost` SQL SECURITY DEFINER VIEW `project_2024_JobApplicationsThisMonth`  AS SELECT `project_2024_Applications`.`ApplicationID` AS `ApplicationID`, `project_2024_Applications`.`CandidateID` AS `CandidateID`, `project_2024_Applications`.`JobID` AS `JobID`, `project_2024_Applications`.`DateApplied` AS `DateApplied`, `project_2024_Applications`.`app_status` AS `app_status` FROM `project_2024_Applications` WHERE `project_2024_Applications`.`DateApplied` between '2024-03-01' and '2024-3-31' ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `project_2024_Applications`
--
ALTER TABLE `project_2024_Applications`
  ADD PRIMARY KEY (`ApplicationID`),
  ADD KEY `app_status` (`app_status`),
  ADD KEY `CandidateID` (`CandidateID`),
  ADD KEY `JobID` (`JobID`);

--
-- Indexes for table `project_2024_Candidates`
--
ALTER TABLE `project_2024_Candidates`
  ADD PRIMARY KEY (`CandidateID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `Email_2` (`Email`);

--
-- Indexes for table `project_2024_CandidateSkills`
--
ALTER TABLE `project_2024_CandidateSkills`
  ADD PRIMARY KEY (`CandidateID`,`SkillID`),
  ADD KEY `SkillID` (`SkillID`);

--
-- Indexes for table `project_2024_Employers`
--
ALTER TABLE `project_2024_Employers`
  ADD PRIMARY KEY (`EmployerID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `project_2024_Jobs`
--
ALTER TABLE `project_2024_Jobs`
  ADD PRIMARY KEY (`JobID`),
  ADD KEY `FK_EmployerID` (`EmployerID`);

--
-- Indexes for table `project_2024_Skills`
--
ALTER TABLE `project_2024_Skills`
  ADD PRIMARY KEY (`SkillID`);

--
-- Indexes for table `project_2024_status`
--
ALTER TABLE `project_2024_status`
  ADD PRIMARY KEY (`Status_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `project_2024_Applications`
--
ALTER TABLE `project_2024_Applications`
  MODIFY `ApplicationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `project_2024_Candidates`
--
ALTER TABLE `project_2024_Candidates`
  MODIFY `CandidateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `project_2024_Employers`
--
ALTER TABLE `project_2024_Employers`
  MODIFY `EmployerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `project_2024_Jobs`
--
ALTER TABLE `project_2024_Jobs`
  MODIFY `JobID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `project_2024_Skills`
--
ALTER TABLE `project_2024_Skills`
  MODIFY `SkillID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `project_2024_status`
--
ALTER TABLE `project_2024_status`
  MODIFY `Status_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `project_2024_Applications`
--
ALTER TABLE `project_2024_Applications`
  ADD CONSTRAINT `project_2024_Applications_ibfk_1` FOREIGN KEY (`app_status`) REFERENCES `project_2024_status` (`Status_ID`),
  ADD CONSTRAINT `project_2024_Applications_ibfk_2` FOREIGN KEY (`CandidateID`) REFERENCES `project_2024_Candidates` (`CandidateID`),
  ADD CONSTRAINT `project_2024_Applications_ibfk_3` FOREIGN KEY (`JobID`) REFERENCES `project_2024_Jobs` (`JobID`);

--
-- Constraints for table `project_2024_CandidateSkills`
--
ALTER TABLE `project_2024_CandidateSkills`
  ADD CONSTRAINT `project_2024_CandidateSkills_ibfk_1` FOREIGN KEY (`CandidateID`) REFERENCES `project_2024_Candidates` (`CandidateID`),
  ADD CONSTRAINT `project_2024_CandidateSkills_ibfk_2` FOREIGN KEY (`SkillID`) REFERENCES `project_2024_Skills` (`SkillID`);

--
-- Constraints for table `project_2024_Jobs`
--
ALTER TABLE `project_2024_Jobs`
  ADD CONSTRAINT `FK_EmployerID` FOREIGN KEY (`EmployerID`) REFERENCES `project_2024_Employers` (`EmployerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
