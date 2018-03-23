-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 22, 2016 at 03:56 PM
-- Server version: 5.5.48-37.8
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vegimrex_ppes-dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE IF NOT EXISTS `activities` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bonus1` double(6,3) NOT NULL DEFAULT '0.000',
  `bonus2` double(6,3) NOT NULL DEFAULT '0.000',
  `invitation_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enrollment_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `title`, `bonus1`, `bonus2`, `invitation_link`, `enrollment_key`, `access_code`, `status`, `created_at`, `updated_at`) VALUES
(2, '2015/2016 Contemporary Issues in ICT', 0.000, 0.000, 'http://milotrexhepi.com/student/activities/enroll', '4807bef8', '0834', 0, '2016-06-23 01:15:00', '2016-06-23 01:15:00'),
(3, '2015/2016 Distributed Data Management', 0.000, 0.000, 'http://milotrexhepi.com/student/activities/enroll', '8d68b7f2', '692b', 0, '2016-06-23 01:17:28', '2016-06-23 01:17:28'),
(4, '2015/2016 Advanced Software Development Techniques', 0.000, 0.000, 'http://milotrexhepi.com/student/activities/enroll', '1408ff3a', '0974', 0, '2016-06-23 01:23:13', '2016-06-23 01:23:13');

-- --------------------------------------------------------

--
-- Table structure for table `activities_criteria`
--

CREATE TABLE IF NOT EXISTS `activities_criteria` (
  `id` int(10) unsigned NOT NULL,
  `activity_id` int(10) unsigned NOT NULL,
  `criterion_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activities_criteria`
--

INSERT INTO `activities_criteria` (`id`, `activity_id`, `criterion_id`) VALUES
(10, 2, 2),
(11, 2, 3),
(12, 2, 4),
(13, 2, 5),
(14, 3, 2),
(15, 3, 3),
(16, 3, 4),
(17, 4, 2),
(18, 4, 4),
(19, 4, 5),
(20, 4, 7);

-- --------------------------------------------------------

--
-- Table structure for table `activity_user`
--

CREATE TABLE IF NOT EXISTS `activity_user` (
  `id` int(10) unsigned NOT NULL,
  `activity_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activity_user`
--

INSERT INTO `activity_user` (`id`, `activity_id`, `user_id`, `completed`) VALUES
(2, 2, 1, 0),
(3, 2, 2, 0),
(4, 2, 4, 0),
(5, 2, 5, 0),
(6, 2, 6, 0),
(7, 3, 1, 0),
(8, 3, 2, 0),
(9, 3, 4, 0),
(10, 3, 5, 0),
(11, 4, 1, 0),
(12, 4, 4, 0),
(13, 4, 5, 0),
(14, 4, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `criteria`
--

CREATE TABLE IF NOT EXISTS `criteria` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `criteria`
--

INSERT INTO `criteria` (`id`, `name`) VALUES
(1, 'Body Language'),
(2, 'Slide Organization'),
(3, 'Time Keeping'),
(4, 'Answering Questions'),
(5, 'Topic Knowledge'),
(7, 'Some New Criteria');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_01_24_113711_create_roles_table', 1),
('2016_01_24_113952_create_user_role_pivot_table', 1),
('2016_01_30_225832_create_activities_table', 1),
('2016_01_30_230757_create_criteria_table', 1),
('2016_01_30_231157_create_activities_criteria_pivot_table', 1),
('2016_03_06_165311_create_user_criterion_pivot_table', 1),
('2016_04_04_173851_create_user_activity_pivot_table', 1),
('2016_04_16_162510_create_results_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE IF NOT EXISTS `results` (
  `id` int(10) unsigned NOT NULL,
  `voting_user_id` int(10) unsigned DEFAULT NULL,
  `activity_id` int(10) unsigned DEFAULT NULL,
  `student_evaluated_id` int(10) unsigned DEFAULT NULL,
  `criterion_id` int(10) unsigned DEFAULT NULL,
  `vote_value` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `voting_user_id`, `activity_id`, `student_evaluated_id`, `criterion_id`, `vote_value`, `created_at`, `updated_at`) VALUES
(1, 4, 4, 2, 2, 3, '2016-06-23 01:28:49', '2016-06-23 01:28:49'),
(2, 4, 4, 2, 4, 4, '2016-06-23 01:28:49', '2016-06-23 01:28:49'),
(3, 4, 4, 2, 5, 3, '2016-06-23 01:28:49', '2016-06-23 01:28:49'),
(4, 4, 4, 2, 7, 5, '2016-06-23 01:28:49', '2016-06-23 01:28:49'),
(5, 5, 4, 2, 2, 4, '2016-06-23 01:29:02', '2016-06-23 01:29:02'),
(6, 5, 4, 2, 4, 2, '2016-06-23 01:29:02', '2016-06-23 01:29:02'),
(7, 5, 4, 2, 5, 4, '2016-06-23 01:29:02', '2016-06-23 01:29:02'),
(8, 5, 4, 2, 7, 5, '2016-06-23 01:29:02', '2016-06-23 01:29:02'),
(9, 1, 4, 2, 2, 3, '2016-06-23 01:30:15', '2016-06-23 01:30:15'),
(10, 1, 4, 2, 4, 5, '2016-06-23 01:30:15', '2016-06-23 01:30:15'),
(11, 1, 4, 2, 5, 4, '2016-06-23 01:30:15', '2016-06-23 01:30:15'),
(12, 1, 4, 2, 7, 5, '2016-06-23 01:30:15', '2016-06-23 01:30:15');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'administrator'),
(2, 'lecturer'),
(3, 'student');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `student_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `student_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lecturer', 'Demo', 'demo@lecturer.edu', '$2y$10$5.XYNCJN6cmiGQoDpSQ2deZv8JItJtH0UFuBupawvBeYIeud5rGva', NULL, 'gZ3Esc6BBT6fPIgys0Bt5PxrfkYFVdLeR4v9Lo06RECSVe850tGnqQ3h7Okg', '2016-06-21 21:59:17', '2016-06-23 01:18:22'),
(2, 'Student', 'Demo', 'demo@student.edu', '$2y$10$zPirVaxIzSMwUE8YSezeieUUfrz.zNWlRbs8RczAR4WOX5z9aCMYW', 'SE15001', 'SbVcHAHxRI2OmiYSDkhdSuBVOg1Kluer9WwVv7D0Z4gVXJ4rJLLErQIIiGTd', '2016-06-21 21:59:17', '2016-06-23 01:32:18'),
(4, 'Student', 'One', 'one@student.edu', '$2y$10$Z.7M3iYLOZcoNC6aBaq8rujF.xPxYL409yPqhnOre2JBH9JWAwoJ.', 'SE16001', 'LTEoVSLvYjqUUz8PmUHCarjOUC4mN2osCgN4CWpMkKs5qRalaRBhATAZmCUC', '2016-06-23 01:09:52', '2016-06-23 01:30:43'),
(5, 'Student', 'Two', 'two@student.edu', '$2y$10$Nt4OKv0Y5ZB560PBdUwwJuJM9/o/REFc1NrJoPKg8P8eevBF3rGOu', 'SE16002', '48G1yZczrYmRqrLUQFD5GeciAGYRK0eJLh8RdpdJhcTpqY5uk9Xv2TDj40t3', '2016-06-23 01:10:14', '2016-06-23 01:18:25'),
(6, 'Student', 'Three', 'three@student.edu', '$2y$10$hUOv1NUf6LLjYlDmjAw30eVWBkMa.dFkjKPR9Tg2MknhjTlDUGx1i', 'SE16003', 'xlOiF6zRbFIJqELFLEVg61T6V2sScJ6cbDjaReg2yCgnqSmlsRFIqFtRmduy', '2016-06-23 01:10:54', '2016-06-23 01:17:39'),
(7, 'Student', 'Four', 'four@student.edu', '$2y$10$RhiSYDmCP0XXn1M7Qy29pOi2du/z0Pm4Y5rGJOzEK.c0kmSKwREp6', 'SE16004', 'jY3SdDgtV6jDAs7QhOp7wQn16SBZPjbxrxfkU7NhvrPUFSxKOBAC12rGK6YK', '2016-06-23 01:21:20', '2016-06-23 01:21:34');

-- --------------------------------------------------------

--
-- Table structure for table `user_criterion`
--

CREATE TABLE IF NOT EXISTS `user_criterion` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `criterion_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE IF NOT EXISTS `user_role` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(2, 2, 3, NULL, NULL),
(4, 4, 3, NULL, NULL),
(5, 5, 3, NULL, NULL),
(6, 6, 3, NULL, NULL),
(7, 7, 3, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `activities_title_unique` (`title`);

--
-- Indexes for table `activities_criteria`
--
ALTER TABLE `activities_criteria`
  ADD PRIMARY KEY (`id`), ADD KEY `activities_criteria_activity_id_foreign` (`activity_id`), ADD KEY `activities_criteria_criterion_id_foreign` (`criterion_id`);

--
-- Indexes for table `activity_user`
--
ALTER TABLE `activity_user`
  ADD PRIMARY KEY (`id`), ADD KEY `activity_user_activity_id_foreign` (`activity_id`), ADD KEY `activity_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `criteria`
--
ALTER TABLE `criteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`), ADD KEY `results_voting_user_id_index` (`voting_user_id`), ADD KEY `results_activity_id_index` (`activity_id`), ADD KEY `results_student_evaluated_id_index` (`student_evaluated_id`), ADD KEY `results_criterion_id_index` (`criterion_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`), ADD UNIQUE KEY `users_student_id_unique` (`student_id`);

--
-- Indexes for table `user_criterion`
--
ALTER TABLE `user_criterion`
  ADD PRIMARY KEY (`id`), ADD KEY `user_criterion_user_id_foreign` (`user_id`), ADD KEY `user_criterion_criterion_id_foreign` (`criterion_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`), ADD KEY `user_role_user_id_foreign` (`user_id`), ADD KEY `user_role_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `activities_criteria`
--
ALTER TABLE `activities_criteria`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `activity_user`
--
ALTER TABLE `activity_user`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `criteria`
--
ALTER TABLE `criteria`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user_criterion`
--
ALTER TABLE `user_criterion`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities_criteria`
--
ALTER TABLE `activities_criteria`
ADD CONSTRAINT `activities_criteria_activity_id_foreign` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `activities_criteria_criterion_id_foreign` FOREIGN KEY (`criterion_id`) REFERENCES `criteria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `activity_user`
--
ALTER TABLE `activity_user`
ADD CONSTRAINT `activity_user_activity_id_foreign` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `activity_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `results`
--
ALTER TABLE `results`
ADD CONSTRAINT `results_activity_id_foreign` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `results_criterion_id_foreign` FOREIGN KEY (`criterion_id`) REFERENCES `criteria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `results_student_evaluated_id_foreign` FOREIGN KEY (`student_evaluated_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `results_voting_user_id_foreign` FOREIGN KEY (`voting_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_criterion`
--
ALTER TABLE `user_criterion`
ADD CONSTRAINT `user_criterion_criterion_id_foreign` FOREIGN KEY (`criterion_id`) REFERENCES `criteria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `user_criterion_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
ADD CONSTRAINT `user_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
ADD CONSTRAINT `user_role_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
