-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2018 at 03:58 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dreamjob`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicationholder`
--

CREATE TABLE `applicationholder` (
  `applicationid` int(11) NOT NULL,
  `circularid` int(11) NOT NULL,
  `applicantusername` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applicationholder`
--

INSERT INTO `applicationholder` (`applicationid`, `circularid`, `applicantusername`) VALUES
(5, 1, 'emma'),
(6, 1, 'faisal_d_looser'),
(7, 1, 'faisal_d_looser'),
(8, 1, 'abc'),
(9, 1, 'xyz'),
(10, 1, 'xyz'),
(11, 1, 'xyz'),
(12, 9, 'ashiq'),
(13, 1, 'abc'),
(14, 1, 'abc'),
(15, 1, 'abc'),
(16, 1, 'abc'),
(17, 1, 'abc'),
(18, 7, 'tazneen');

-- --------------------------------------------------------

--
-- Table structure for table `jobnews`
--

CREATE TABLE `jobnews` (
  `id` int(11) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `institutionname` varchar(200) NOT NULL,
  `post` varchar(200) NOT NULL,
  `eligibility` varchar(200) NOT NULL,
  `experience` varchar(200) NOT NULL,
  `salary` varchar(200) NOT NULL,
  `lastdatetoapply` varchar(200) NOT NULL,
  `region` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `employerusername` varchar(200) NOT NULL,
  `approve` varchar(255) DEFAULT 'YES'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobnews`
--

INSERT INTO `jobnews` (`id`, `logo`, `institutionname`, `post`, `eligibility`, `experience`, `salary`, `lastdatetoapply`, `region`, `category`, `employerusername`, `approve`) VALUES
(1, 'austlogo.jpg', 'Ahsanullah University of Science & Technology', 'Lecturer', 'At least BSc in Computer Science or other similar subjects', 'Not mandatory', 'Negotiable', '1,March,2017', 'Dhaka', 'Education', 'tazneen', 'NO'),
(7, 'gazimclglogo.jpg', 'Gazi Medical College & Hospital', 'Technologist(Pathology)', 'Diploma from Institute of Health Technology(IHT)', '1-3 years', '15000-20000', '10 April,2017', 'Khulna', 'Medical', '', 'NO'),
(8, 'ksrmlogo.png', 'KSRM Steel LTD.', 'Jr. Officer(Accounts & Admin)', 'Masters(Commerce Background) from any reputed university', '1-2 years', 'Negotiable', '20 March,2017', 'Chittagong', 'Accounting/Finance', '', 'NO'),
(9, 'johurulislamlogo.jpg', 'Jahurul Islam Medical College & Hospital', 'Professor/Associate Professor', 'FCPS/MD/M.Phill', '2-3 years', 'Negotiable', '5 April,2017', 'Dhaka', 'Medical', '', 'NO'),
(10, 'primepharmalogo.jpg', 'Prime Pharmaceuticals Ltd.', 'Pharmasist', 'MSc. in Pharmacology', 'At least 3 years', 'Negotiable', '20 April,2017', 'Dhaka', 'Medical', '', 'NO'),
(11, 'armymedicallogo.jpg', 'Army Medical College Comilla', 'Assistant/Associate Professor', 'According to BMNDC Rules', 'Not mandatory', 'Negotiable', '25 March,2017', 'Chittagong', 'Education', '', 'NO'),
(12, 'easternbanklogo.png', 'Eastern Bank Ltd.', 'Sales Executive(Card Division)', 'Graduate in BBA/MBA/MBM or Economics', 'Not mandatory', 'Negotiable', '27 April,2017', 'Chittagong', 'Marketing', '', 'NO'),
(14, 'job.jpg', 'Dream JOB', 'Lecturer', 'BSC', 'No need', '50,000', '2-3-2018', 'Dhaka', 'Education', 'ashiq', 'NO'),
(15, 'D:XAMPPhtdocsdreamjob332.jpg', 'Dream JOB', 'Lecturer', 'BSC', 'No need', '50,000', '2-3-2018', 'Chittagong', 'Bank', 'ashiq', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `logininfo`
--

CREATE TABLE `logininfo` (
  `fullname` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `emailid` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `phoneno` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logininfo`
--

INSERT INTO `logininfo` (`fullname`, `username`, `emailid`, `password`, `phoneno`) VALUES
('Tazneen Sultana', 'tazneen', 'tazneensultana@yahoo.com', '123', '123456'),
('Jahanara Nazneen', 'nazneen', 'nazneen@yahoo.com', 'abc', '09876'),
('Aminur Rahman', 'aminur', 'aminur@yahoo.com', 'xyz', '0987634'),
('Arundhuti Roy', 'arundhuti', 'arundhuti@gmail.com', 'arundhuti', '3568797'),
('Sakib Al Hasan', 'sakib', 'sakib@gmail.com', 'sakib', '3568794'),
('Mushfiqur Rahim', 'mushfiq', 'mushfiq@gmail.com', 'mushfiq', '2340890'),
('Nishat Majumdar', 'nishat', 'nishat@yahoo.com', 'nishat', '6340890'),
('Nabila Islam', 'nabila', 'nabila@gmail.com', 'nabila', '2309798'),
('Sharafat Korim', 'sharafat', 'sharafat@yahoo.com', 'sharafat', '78677r'),
('Md. Amir Faisal', 'faisalxn', 'faisalxn@yahoo.com', '123', '01676422785'),
('Md. Amir Faisal', 'faisal_d_looser', 'faisalxn@yahoo.com', '123', '01676422785'),
('abc', 'abc', 'abc@xyz.com', '123', '01676422785'),
('xyz', 'xyz', 'xyz@abc.com', '123', '123'),
('Ashiqur', 'ashiq', '', '123', '');

-- --------------------------------------------------------

--
-- Table structure for table `resumes`
--

CREATE TABLE `resumes` (
  `resumeid` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `profilepicture` varchar(200) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `fathername` varchar(200) NOT NULL,
  `mothername` varchar(200) NOT NULL,
  `dateofbirth` date NOT NULL,
  `gender` varchar(200) NOT NULL,
  `nationality` varchar(200) NOT NULL,
  `religion` varchar(200) NOT NULL,
  `highesteducation` varchar(200) NOT NULL,
  `gpacgpa` varchar(200) NOT NULL,
  `experience` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `contactno` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resumes`
--

INSERT INTO `resumes` (`resumeid`, `username`, `profilepicture`, `fullname`, `fathername`, `mothername`, `dateofbirth`, `gender`, `nationality`, `religion`, `highesteducation`, `gpacgpa`, `experience`, `email`, `contactno`) VALUES
(34, 'emma', 'emma.jpg', 'Emma Watson', 'Chris Watson', 'Jackqueline Leusby', '1990-04-15', 'Femail', 'Bangladeshi', 'Christianity', 'BSc in Computer Science from Brown University', '3.8', 'Worked as a software engineer at IT Solution Ltd. for 1 year.', 'emma@yahoo.com', '01984568923'),
(35, 'faisal_d_looser', '1899677_922542827780047_7475504584784418347_o.jpg', 'Md. Amir Faisal', 'Md. Amir Faisal', 'Nazmun Nahar Begum', '1995-12-22', 'Male', 'Bangladeshi', 'Islam', 'B.Sc', '3.2', '', 'faisalxn@yahoo.com', '01676422785'),
(36, 'faisalxn', '1899677_922542827780047_7475504584784418347_o.jpg', 'Md. Amir Faisal', 'Md. Abduz Zaher', 'Nazmun Nahar Begum', '1995-12-22', 'Male', 'Bangladeshi', 'Islam', 'B.Sc.', '3.2', '', 'faisalxn@gmail.com', '01676422785'),
(37, 'abc', '1899677_922542827780047_7475504584784418347_o.jpg', 'abc', 'qwerty', 'qwerty', '1995-12-22', 'Male', 'bd', 'ISIS', 'B.Sc.', '3.2', '', 'abc@xyz.com', '01676422785'),
(38, 'tazneen', '', 'xyz', 'xyz', 'xyz', '1995-12-22', 'Male', 'bd', 'isis', 'B.Sc.', '3.4', '', 'xyz@abc.com', '123'),
(39, 'ashiq', 'C:Userseh5i0Downloads\04c19778cd77427494c444eccfc33c83.jpg', 'Ashiqur', 'anwar', 'rima', '0000-00-00', '', '', '', 'BSc', '3.59', '', 'asd@gmail.com', '01521'),
(40, '', 'C:Userseh5i0DesktopAshiqur Rahman.jpg', 'Ashiqur', 'anwar', 'rima', '0000-00-00', 'male', 'Bangladeshi', 'Islam', 'BSc', '3.59', '', 'ashiqurrahman997@gmail.com', '01521'),
(41, '', 'D:XAMPPhtdocsdreamjobAshiqur Rahman.jpg', 'Ashiqur', 'anwar', 'rima', '0000-00-00', 'male', 'Bangladeshi', 'Islam', 'BSc', '3.59', '', 'ashiqurrahman997@gmail.com', '01521'),
(42, 'abc', 'D:XAMPPhtdocsdreamjobAshiqur Rahman.jpg', 'Ashiqur', 'anwar', 'rima', '0000-00-00', 'male', 'Bangladeshi', 'Islam', 'BSc', '3.59', 'no', 'ashiqurrahman997@gmail.com', '01521');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicationholder`
--
ALTER TABLE `applicationholder`
  ADD PRIMARY KEY (`applicationid`);

--
-- Indexes for table `jobnews`
--
ALTER TABLE `jobnews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resumes`
--
ALTER TABLE `resumes`
  ADD PRIMARY KEY (`resumeid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicationholder`
--
ALTER TABLE `applicationholder`
  MODIFY `applicationid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `jobnews`
--
ALTER TABLE `jobnews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `resumes`
--
ALTER TABLE `resumes`
  MODIFY `resumeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
