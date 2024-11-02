

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `admins` (`id`, `name`, `email`, `password`, `mobile`) VALUES
(1, 'Admin User', 'admin@gmail.com', 'admin123', 8888888888);

CREATE TABLE `donation` (
  `id` int(11) NOT NULL,
  `donor_id` int(11) NOT NULL,
  `blood_group` varchar(100) NOT NULL,
  `no_units` int(11) NOT NULL,
  `disease` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `donation` (`id`, `donor_id`, `blood_group`, `no_units`, `disease`, `status`) VALUES
(301, 101, 'B+', 20, 'Nothing', 1),
(302, 102, 'AB+', 15, 'Nothing', 1),
(1005, 101, 'B+', 5, 'No disease', 1),
(1006, 104, 'A', 10, 'Noo', 2),
(1008, 104, 'A', 5, 'No nothing', 1),
(1009, 105, 'O+', 18, 'I do not have any disease', 1),
(1010, 105, 'O+', 5, 'Nothing', 1),
(1018, 108, 'A-', 24, 'Nothing', 1),
(1019, 109, 'B', 30, 'Nothing', 1),
(1020, 110, 'O-', 18, 'Nothing', 1);



CREATE TABLE `donors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `donors` (`id`, `name`, `email`, `password`, `mobile`) VALUES
(101, 'Test donor', 'testdonor@gmail.com', 'test123', 9999999999),
(104, 'Donor Name 1', 'donor1@gmail.com', '12345', 9878584516),
(105, 'Donor Name 2', 'donor2@gmail.com', '12345', 8458748452),
(108, 'Donor Name 3', 'donor3@gmail.com', '12345', 9999999999),
(109, 'Donor Name 4', 'donor4@gmail.com', '12345', 8888888888),
(110, 'Donor Name 5', 'donor5@gmail.com', '12345', 6666666666);



CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `patients` (`id`, `name`, `email`, `password`, `mobile`) VALUES
(501, 'Patient Name 1', 'patient1@gmail.com', '12345', 2147483647),
(503, 'Patient Name 2', 'patient2@gmail.com', '12345', 2147483647),
(505, 'Patient Name 3', 'patient3@gmail.com', '12345', 9898989898),
(506, 'Patient Name 4', 'patient4@gmail.com', '12345', 7777777777),
(507, 'Patient Name 5', 'patient5@gmail.com', '12345', 5555555555);


CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `no_units` int(11) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `reason` varchar(250) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `requests` (`id`, `patient_id`, `no_units`, `blood_group`, `reason`, `status`) VALUES
(1, 501, 10, 'B+', 'Dengue fever', 1),
(1102, 503, 25, 'O+', 'Fever', 2),
(1105, 505, 2, 'A+', 'High fever', 1),
(1106, 505, 2, 'A-', 'Dengue', 1),
(1107, 506, 50, 'B', 'Abc', 2),
(1108, 507, 20, 'O-', 'XYZ', 2),
(1109, 507, 2, 'O-', 'ABC', 1);

CREATE TABLE `stocks` (
  `sno` int(11) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `stocks` (`sno`, `blood_group`, `stock`) VALUES
(1, 'A', 5),
(2, 'A+', 11),
(3, 'A-', 22),
(4, 'B', 30),
(5, 'B+', 15),
(6, 'B-', 0),
(7, 'AB+', 15),
(8, 'AB-', 0),
(9, 'O+', 23),
(10, 'O-', 16);

ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `donation`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `donors`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `stocks`
  ADD PRIMARY KEY (`sno`);

ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `donation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1021;


ALTER TABLE `donors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;


ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=508;


ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1110;


ALTER TABLE `stocks`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

