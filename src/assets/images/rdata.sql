-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2025 at 04:15 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_user`
--

CREATE TABLE `active_user` (
  `id` int(11) NOT NULL,
  `user_id` int(255) NOT NULL,
  `email` varchar(2255) NOT NULL,
  `device_id` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `active_user`
--

INSERT INTO `active_user` (`id`, `user_id`, `email`, `device_id`, `date`) VALUES
(5, 1, 'rc8988293@gmail.com', '4f5a7d3fe1b64aee60795a0dd86a31c0', '2025-03-12 16:07:51'),
(6, 2, 'rc8988293@gmail.com', '4f5a7d3fe1b64aee60795a0dd86a31c0', '2025-03-13 02:36:09'),
(7, 2, 'rc8988293@gmail.com', '43fcb6ea73c9ecdfa7e0a29b2fc4be0c', '2025-03-13 09:14:48'),
(8, 13, 'aishwaryabn2002@gmail.com', 'f5506fda264db65f8672db152b8a8a4f', '2025-03-14 08:07:09'),
(9, 12, 'jayasri.a@getriskey.com', '81ba371be6de0f24bd5da668a35422fb', '2025-03-17 08:20:12'),
(10, 4, 'gaurav.webchopperservices@gmail.com', 'faccef605c0215228f457e1a10e2fd5d', '2025-03-17 11:01:37'),
(11, 16, 'jayasri.a@getriskey.com', '81ba371be6de0f24bd5da668a35422fb', '2025-03-17 11:12:02'),
(12, 10, 'rc8988293@gmail.com', '4f5a7d3fe1b64aee60795a0dd86a31c0', '2025-03-18 00:58:31'),
(13, 10, 'rc8988293@gmail.com', '43fcb6ea73c9ecdfa7e0a29b2fc4be0c', '2025-03-18 02:19:43'),
(14, 17, 'prajwal.mr@getriskey.com', '20d604963ec12f244f22431cb952f310', '2025-03-18 09:41:22'),
(15, 18, 'aishwaryabn2002@gmail.com', '1e4b708c81389da5869d473ba4a98f90', '2025-03-18 10:22:32'),
(16, 19, 'aishwaryabn2002@gmail.com', '20a68ae334a4db31e0d7c888e764a8fa', '2025-03-19 08:10:59'),
(17, 24, 'jayasri.a@getriskey.com', '81ba371be6de0f24bd5da668a35422fb', '2025-03-24 11:38:47'),
(18, 26, 'jayasria45@gmail.com', '81ba371be6de0f24bd5da668a35422fb', '2025-03-24 13:54:39'),
(19, 29, 'jayasri.a@getriskey.com', '81ba371be6de0f24bd5da668a35422fb', '2025-03-27 08:15:04'),
(21, 38, 'aishwarya.bn@getriskey.com', 'faccef605c0215228f457e1a10e2fd5d', '2025-03-27 16:26:05'),
(22, 32, 'gaurav.yadav59@gmail.com', 'bebebc0ce82d2309ed9ea779daceea5c', '2025-03-28 07:15:08'),
(23, 38, 'aishwarya.bn@getriskey.com', 'bebebc0ce82d2309ed9ea779daceea5c', '2025-03-28 14:25:45'),
(24, 38, 'aishwarya.bn@getriskey.com', '43fcb6ea73c9ecdfa7e0a29b2fc4be0c', '2025-03-29 12:59:24'),
(25, 41, 'jayasri.a@getriskey.com', '81ba371be6de0f24bd5da668a35422fb', '2025-04-01 08:17:21'),
(26, 40, 'prajwal.mr@getriskey.com', '20d604963ec12f244f22431cb952f310', '2025-04-01 08:24:22'),
(27, 43, 'prajwal.mr@getriskey.com', '43fcb6ea73c9ecdfa7e0a29b2fc4be0c', '2025-04-01 15:18:06'),
(28, 42, 'jayasri.a@getriskey.com', '43fcb6ea73c9ecdfa7e0a29b2fc4be0c', '2025-04-01 15:18:45'),
(29, 32, 'gaurav.yadav59@gmail.com', '9367f95f15f0029219d94138e3a3fd0b', '2025-04-01 15:52:08'),
(30, 1, 'prajwal.mr@getriskey.com', '20d604963ec12f244f22431cb952f310', '2025-04-02 09:31:07'),
(31, 2, 'jayasri.a@getriskey.com', '81ba371be6de0f24bd5da668a35422fb', '2025-04-03 07:19:53'),
(32, 4, 'gaurav.webchopperservices@gmail.com', 'bebebc0ce82d2309ed9ea779daceea5c', '2025-04-07 12:04:10'),
(33, 11, 'test@gmail.com', '43fcb6ea73c9ecdfa7e0a29b2fc4be0c', '2025-04-08 16:13:49'),
(34, 7, 'jayasri.a@getriskey.com', '43fcb6ea73c9ecdfa7e0a29b2fc4be0c', '2025-04-08 16:14:13'),
(35, 12, 'technical.support@getriskey.com', '20a68ae334a4db31e0d7c888e764a8fa', '2025-04-09 07:14:59'),
(36, 7, 'jayasri.a@getriskey.com', '4f5a7d3fe1b64aee60795a0dd86a31c0', '2025-04-09 14:47:04'),
(37, 12, 'technical.support@getriskey.com', '4f5a7d3fe1b64aee60795a0dd86a31c0', '2025-04-09 14:47:18'),
(38, 11, 'test@gmail.com', '4f5a7d3fe1b64aee60795a0dd86a31c0', '2025-04-09 21:40:47'),
(39, 9, 'aishwarya.bn@getriskey.com', '4f5a7d3fe1b64aee60795a0dd86a31c0', '2025-04-09 21:41:09'),
(40, 13, 'rc8988293@gmail.com', '4f5a7d3fe1b64aee60795a0dd86a31c0', '2025-05-01 20:34:07'),
(41, 16, 'developerzone89@gmail.com', '4f5a7d3fe1b64aee60795a0dd86a31c0', '2025-05-04 08:14:45'),
(42, 18, 'developerzone89@gmail.com', '4f5a7d3fe1b64aee60795a0dd86a31c0', '2025-05-04 10:22:01');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `risk_score` int(11) DEFAULT NULL,
  `gaps` text DEFAULT NULL,
  `recommendation` text DEFAULT NULL,
  `q` varchar(255) DEFAULT 'next',
  `correct_answer` varchar(255) DEFAULT NULL,
  `comments` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `text`, `risk_score`, `gaps`, `recommendation`, `q`, `correct_answer`, `comments`) VALUES
(455, 358, 'Yes', 1, NULL, NULL, 'next', NULL, ''),
(456, 358, 'No', 0, 'According to  Article 5(1)(c) of the EU AI Act, your system is excluded from this risk as it does not involve profiling or scoring individuals based on such characteristics.', NULL, 'next', NULL, ''),
(457, 359, 'Yes', 1, NULL, NULL, 'next', NULL, ''),
(458, 359, 'No', 0, NULL, NULL, 'next', NULL, ''),
(459, 360, ' We check our AI systems regularly to ensure they follow rules about getting permission, and we update our methods to keep end-users in control and informed.', 1, NULL, 'According to Article 5(1)(c) of the EU AI Act, checking your system is helpful, but assuming consent could leave users unaware of how their data is used, which may lead to risks like social scoring without proper understanding. It is recommended to provide clear communication about how users\' data is collected, processed, and used to ensure transparency and avoid these risks.', 'next', NULL, ''),
(460, 360, ' We assume end-users agree to some automated decisions if we’ve told them about how we handle their data ahead of time.', 1, NULL, 'According to Article 5(1)(c) of the EU AI Act, assuming end-users agree without clear permission poses a risk, as it could lead to issues like social scoring without users fully understanding or agreeing. This emphasizes the importance of obtaining clear user permission to comply with the regulation.', 'next', NULL, ''),
(461, 360, ' Our AI systems let end-users ask for a review if they disagree with a decision, but they can only make small changes after the decision is made.', 1, NULL, 'According to Article 5(1)(c) of the EU AI Act, allowing end-users to request a review without clear rules in place can lead to inconsistent decisions and pose a risk of social scoring, which is classified as high risk, violating the regulation. It is recommended that systems be transparent, consistent, and designed to avoid decisions that may harm individuals or lead to unfair treatment.', 'next', NULL, ''),
(462, 360, 'We let end-users see and adjust the settings that affect the AI’s decisions, giving them control over the results.', 0, NULL, NULL, 'next', NULL, ''),
(463, 360, 'We explain why the AI made a decision and allow end-users to challenge or appeal it if they don’t agree.', 0, NULL, NULL, 'next', NULL, ''),
(464, 360, 'We send clear messages to end-users whenever the AI makes decisions that affect them, so they know and can decide whether to agree.', 0, NULL, 'According to Article 5(1)(c) of the EU AI Act, while informing users about what’s happening is important, relying on audits alone doesn’t always provide end-users with real control or transparency regarding how their data is used. This can lead to potential risks, including the possibility of social scoring, which is prohibited under the regulation.The Act mandates that users must have clear visibility and control over their data to ensure compliance, avoid high-risk decisions, and prevent harmful outcomes such as social scoring.', 'next', NULL, ''),
(465, 360, 'Our AI systems ask for clear permission from end-users before making any decision that could affect them, keeping them involved and in control.', 0, NULL, NULL, 'next', NULL, ''),
(466, 361, ' We don’t have a set policy but look at each situation one at a time.', 1, NULL, 'According to Article 5(1)(c) of the EU AI Act,looking at situations one at a time without a clear rule can lead to inconsistent decisions and risks like social scoring which is prohibited under the regulation.The Act emphasizes the need for uniform and transparent decision-making processes to avoid unfair outcomes and ensure compliance.', 'next', NULL, ''),
(467, 361, ' We support using AI to study people’s behavior and personality to make better decisions.', 1, NULL, 'According to Article 5(1)(c) of the EU AI Act, the use of AI to study behavior and personality is classified as high-risk due to its potential for social scoring, which is strictly prohibited by the regulation.This type of AI application poses significant risks and violates the Act’s provisions to protect individuals from harmful or unfair outcomes.', 'next', NULL, ''),
(468, 361, ' We allow AI to evaluate people freely as long as we keep records and review it regularly.', 1, NULL, 'According to Article 5(1)(c) of the EU AI Act, even if records are kept and decisions are reviewed, allowing AI to freely evaluate people\'s behavior and personality can lead to social scoring, which is prohibited under the regulation.The Act mandates strict guidelines to prevent such high-risk outcomes and ensure transparency and fairness in AI applications.', 'next', NULL, ''),
(469, 361, ' We have clear rules that forbid using AI for evaluating people.', 0, NULL, NULL, 'next', NULL, ''),
(470, 361, ' We let AI evaluate people only in limited ways and make sure they know about it and agree.', 0, NULL, NULL, 'next', NULL, ''),
(471, 362, 'Enhancing user well-being or physical safety (e.g. health monitoring, safety alerts)', 1, NULL, 'Your answer suggests that the AI system influences human behaviour according to Recital 29 of the EU AI Act, AI systems with such influences are considered high risk and could be prohibited due to the potential for harm or manipulation. It’s important to carefully assess these systems to ensure compliance with the regulations.', 'next', NULL, ''),
(472, 362, 'Promoting psychological support or mental health (e.g. counselling, stress reduction tools)', 1, NULL, 'Your answer suggests that the AI system influences human behaviour according to Recital 29 of the EU AI Act, AI systems with such influences are considered high risk and could be prohibited due to the potential for harm or manipulation. It’s important to carefully assess these systems to ensure compliance with the regulations.', 'next', NULL, ''),
(473, 362, 'Facilitating financial decision-making or management (e.g. budgeting tools, investment advice)', 1, NULL, 'Your answer suggests that the AI system influences human behaviour according to Recital 29 of the EU AI Act, AI systems with such influences are considered high risk and could be prohibited due to the potential for harm or manipulation. It’s important to carefully assess these systems to ensure compliance with the regulations.', 'next', NULL, ''),
(474, 362, 'Encouraging positive behavioral changes (e.g. fitness tracking, habit-building apps)', 0, NULL, 'Your answer suggests that the AI system influences human behaviour according to Recital 29 of the EU AI Act, AI systems with such influences are considered high risk and could be prohibited due to the potential for harm or manipulation. It’s important to carefully assess these systems to ensure compliance with the regulations.', 'next', NULL, ''),
(475, 362, 'Providing neutral or informational support without influencing decisions ', 0, 'Your answer indicates that the AI system provides neutral or informational support without actively influencing decisions. According to Recital 29 of the EU AI Act, such systems are not explicitly considered a risk. However, it is recommended to regularly evaluate these systems to ensure they remain aligned with their intended purpose and do not unintentionally influence user behavior or decisions.', NULL, 'next', NULL, ''),
(476, 363, 'The AI shows things in a way that end users might not notice right away, but it’s meant to make the content more interesting.', 1, NULL, 'According to Recital 29 of the EU AI Act, if end users are unaware of what is being shown to them, they may be affected without realizing it, which creates potential risks. This lack of awareness can lead to unintended consequences and may compromise transparency and fairness, all of which are emphasized in the regulation to ensure responsible AI usage.', 'next', NULL, ''),
(477, 363, 'The AI shows things to change how end users interact with it based on its own suggestions.', 1, NULL, 'According to Recital 29 of the EU AI Act, your answer suggests that subtly influencing end users behavior through AI systems could lead to them being affected without their full awareness, posing significant risks. The regulation highlights the importance of transparency and ensuring that users are fully informed about responsible AI usage.', 'next', NULL, ''),
(478, 363, 'The AI shows things clearly so end users can enjoy and use them better.', 0, NULL, NULL, 'next', NULL, ''),
(479, 363, 'The AI shows things normally without changing them based on how end users act.', 0, NULL, NULL, 'next', NULL, ''),
(480, 363, ' The AI doesn’t show any sounds, pictures, or videos at all.', 0, NULL, NULL, 'next', NULL, ''),
(481, 364, ' Checks for problems when complains arise', 1, NULL, 'According to Article 5(1)(a) and Article 5(1)(b) of the EU AI Act, your answer suggests that the organization addresses problems only when complaints arise. This reactive approach means that some issues could go unnoticed, potentially harming individuals and violating the regulation. The Act recommends adopting proactive steps to mitigate risks and ensure that AI systems align with safety and fairness standards, in preference to relying on complaints to address any potential issues.', 'next', NULL, ''),
(482, 364, 'Random checks for problems', 1, NULL, 'According to Article 5(1)(a) and Article 5(1)(b) of the EU AI Act, your answer suggests that the organization conducts random checks for problems. However, without a clear, structured plan for monitoring, this approach can fail to adequately protect vulnerable individuals and may lead to violations of the Act. The regulation mandates proactive, consistent oversight to prevent harm and ensure compliance with safety and fairness standards.', 'next', NULL, ''),
(483, 364, 'Checks big decisions that seem risky ', 1, NULL, 'According to Article 5(1)(a) and Article 5(1)(b) of the EU AI Act, your answer suggests that the organization only reviews big decisions that appear risky. Focusing solely on major decisions can overlook smaller issues that might still cause harm, leading to potential violations of the regulation. The Act requires comprehensive oversight of all AI-related decisions, regardless of their scale, to ensure safety, fairness, and compliance with the Act.', 'next', NULL, ''),
(484, 364, 'Checks when required externally', 1, NULL, 'According to Article 5(1)(a) and Article 5(1)(b) of the EU AI Act, Relying solely on external people or authorities for checks may be quite inadequate, as it does not align with the regulation. The Act mandates proactive, continuous monitoring to prevent risks and ensure that AI systems operate safely and fairly at all times, by establishing internal processes to identify and mitigate risks.', 'next', NULL, ''),
(485, 364, ' Regular checks for problems', 0, NULL, NULL, 'next', NULL, ''),
(486, 364, ' Reports of decisions are written and reviewed', 0, NULL, NULL, 'next', NULL, ''),
(487, 365, 'Yes, it explains everything clearly', 1, NULL, NULL, 'next', NULL, ''),
(488, 365, 'It explains some things but not everything to protect intellectual property', 1, NULL, NULL, 'next', NULL, ''),
(489, 365, 'No, it doesn’t explain at all', 0, NULL, NULL, 'next', NULL, ''),
(490, 366, 'End-users can opt out of data sharing after certain checks to verify themselves', 1, NULL, 'According to Article 5(1)(a) of the EU AI Act, your answer suggests that making it difficult for people to refuse sharing their data through excessive steps could be considered unfair and potentially manipulative. Such practices may violate the regulation, which emphasizes transparency, fairness, and user autonomy, ensuring that individuals are not misled into providing their data under undue pressure.', 'next', NULL, ''),
(491, 366, 'End-users can limit data collection to non-sensitive information', 1, NULL, 'According to Article 5(1)(a) of the EU AI Act, your answer suggests that making it difficult for people to refuse sharing their data through excessive steps could be considered unfair and potentially manipulative. Such practices may violate the regulation, which emphasizes transparency, fairness, and user autonomy, ensuring that individuals are not misled into providing their data under undue pressure.', 'next', NULL, ''),
(492, 366, 'End-users are informed about their data-sharing options but must provide data for personalized or optimized AI outputs', 1, NULL, 'According to Article 5(1)(a) of the EU AI Act, your answer highlights that not allowing people to decline sharing their data removes their control, which could be considered a manipulative AI practice. The regulation stresses the importance of maintaining user autonomy, ensuring that individuals have the freedom to make informed decisions about their data without undue influence.', 'next', NULL, ''),
(493, 366, 'End-users can say no to sharing their data through simple and clear instructions in the AI system', 0, NULL, NULL, 'next', NULL, ''),
(494, 367, 'Using AI to make everything personalized, such as displaying output that suits the end-user based on their data.', 1, NULL, 'According to Article 5(1)(a) and Recital 29 of the EU AI Act, your answer suggests that using AI to continuously influence people’s actions could invade their privacy and create a sense of control over their behavior. This poses significant risks, as the regulation emphasizes the need for transparency, fairness, and respect for individual autonomy. AI systems must not manipulate or unduly influence users, and their privacy must be protected to avoid harmful outcomes.', 'next', NULL, ''),
(495, 367, 'Using AI to improve decision-making and outcomes while being transparent through certain communications.', 1, NULL, 'According to Article 5(1)(a) and Recital 29 of the EU AI Act, your answer highlights that allowing AI to make significant decisions without providing explanations can lead to unfairness and feelings of deception. This violates the regulation’s principles, which emphasize transparency, accountability, and fairness. AI systems must offer clear explanations for their decisions to ensure individuals are informed and to protect against unfair or deceptive practices.', 'next', NULL, ''),
(496, 367, 'Using AI to retrieve and display the best ideas or information.', 1, NULL, 'According to Article 5(1)(a) and Recital 29 of the EU AI Act, your answer indicates that presenting only one perspective through AI can lead to bias and unfairness. This conflicts with the guidelines outlined in the regulation, which emphasize the need for transparency, diversity of viewpoints, and fairness. AI systems must be designed to prevent bias and ensure that decisions are made in a manner that is impartial', 'next', NULL, ''),
(497, 367, 'Enhancing your online experience to align with analyzed emotions, feelings and mood.', 1, NULL, 'According to Article 5(1)(a) and Recital 29 of the EU AI Act, your answer points out that altering what people see based on their emotions could exploit their vulnerabilities, which is considered manipulative and prohibited. The regulation emphasizes the need for fairness, transparency, and respect for individual autonomy, and such practices violate these principles by manipulating users in a way that can lead to harmful consequences.', 'next', NULL, ''),
(498, 367, ' Regular reporting about the AI processes and decisions.', 0, NULL, NULL, 'next', NULL, ''),
(499, 367, 'Public reporting of data collection and AI preprocessing.', 0, NULL, NULL, 'next', NULL, ''),
(500, 367, 'Reviewing the company\'s public statements, policies, and commitments regarding AI usage.', 0, NULL, NULL, 'next', NULL, ''),
(501, 368, 'Easy-to-use designs that make the interface feel easy to navigate, like Instagram or YouTube', 1, NULL, 'According to Article 5(1) of the EU AI Act, interfaces designed to subtly influence user decisions exploit vulnerabilities and may manipulate choices. To comply, design interfaces that prioritize transparency and empower users to make fully informed and autonomous decisions​.', 'next', NULL, ''),
(502, 368, 'AI systems that show only information that supports end-users current interests (e.g. Facebook showing you posts that align with your profile interests)', 1, NULL, 'According to Article 5(1) of the EU AI Act, presenting selective information, risks reinforcing biases and distorting worldviews. It is recommended to implement mechanisms to ensure users are exposed to diverse and balanced information to foster informed decision-making.', 'next', NULL, ''),
(503, 368, ' AI systems that suggest things to users based on their preferences (e.g. Netflix recommending shows based on what you\'ve watched before)', 1, NULL, 'According to Article 5(1) of the EU AI Act, personalized recommendations that nudge users toward unconsidered options constitute manipulative practices. To address this, enhance transparency by disclosing recommendation logic and offering user-controlled preference settings​.', 'next', NULL, ''),
(504, 368, 'AI systems that change based on  users interaction (e.g. YouTube suggests videos based on your previous views', 1, NULL, 'According to Article 5(1) of the EU AI Act, algorithmic adaptations(AI systems that change based on  users\' interactions) that reinforce harmful biases compromise fairness and inclusivity.It is recommended to conduct regular bias audits and ensure adaptive algorithms are rigorously tested against ethical guidelines.', 'next', NULL, ''),
(505, 368, 'Bias audits by certified professionals (e.g. making sure an AI doesn\'t treat some people unfairly)', 0, NULL, NULL, 'next', NULL, ''),
(506, 368, 'Having special teams or boards to review the AI system\'s ethics ', 0, NULL, NULL, 'next', NULL, ''),
(507, 368, 'Human-in-the-loop (HITL)- Having a person approve decisions made by an AI', 0, NULL, NULL, 'next', NULL, ''),
(508, 369, 'Yes', 1, NULL, NULL, 'redirect.Assessment - Social Scoring', NULL, ''),
(509, 369, 'No', 0, 'According to Article 5(1)(d) of the EU AI Act, AI systems that do not analyze behavior, preferences, or personality and avoid profiling users are not considered a risk .However, using AI solely for profiling or predicting criminal offenses based on personality traits is prohibited.', NULL, 'next', NULL, ''),
(510, 370, 'Yes, directly applicable to criminal justice system', 1, NULL, NULL, 'next', NULL, ''),
(511, 370, 'Yes, partially applicable to criminal justice system', 1, NULL, NULL, 'next', NULL, ''),
(512, 370, 'No, not applicable to criminal Justice system at all', 0, 'According to Article 5(1)(d) of  the EU AI Act,  AI systems that do not assist in decision-making or outcome prediction for the criminal justice system are not considered a risk.', NULL, 'next', NULL, ''),
(513, 371, 'Yes', 1, NULL, NULL, 'next', NULL, ''),
(514, 371, 'No', 0, NULL, NULL, 'next', NULL, ''),
(515, 372, 'Personal details (Information like where someone was born, where they live, do they have children if so how many kids, debt, their car etc.)', 1, NULL, 'According to Article 5(1)(d) of the EU AI Act, using personal details like where someone was born or how many kids they have is not allowed unless it is directly related to a crime and based on clear, verifiable evidence. Ensure your AI system excludes such data unless legally required for criminal investigations.', 'next', NULL, ''),
(516, 372, 'Personality tests (These look at things like whether someone is shy, outgoing, or creative, based on psychological questions or surveys)', 1, NULL, 'According to Article 5(1)(d) of the EU AI Act, personality tests, which are subjective and based on psychological assumptions, may not be accurate or provable. These cannot be used unless tied to a crime and supported by verifiable evidence. It is recommended to use only objective and factual data in your AI system.', 'next', NULL, ''),
(517, 372, ' Social media posts (Comments, photos, or likes on platforms like Instagram, Facebook, or Twitter)', 1, NULL, 'According to Article 5(1)(d) of the EU AI Act, posts, likes, and comments on platforms like Instagram or TikTok may be unreliable since they are user-generated. The EU-AI Act allows only verifiable facts related to a person’s involvement in criminal activity to be used in assessments.', 'next', NULL, ''),
(518, 372, ' Criminal records (Records of crimes someone has been charged with or convicted )', 0, 'According to Article 5(1)(d) of the EU AI Act, criminal records, investigation evidence, money-related data, or location tracking can be used by the AI system to help assess someone\'s involvement in a crime, but it must be based on objective and verifiable facts directly linked to the crime.', NULL, 'next', NULL, ''),
(519, 372, ' Evidence from investigations (Evidence collected by the police during an investigation, like fingerprints or CCTV footage)', 0, 'According to Article 5(1)(d) of the EU AI Act, criminal records, investigation evidence, money-related data, or location tracking can be used by the AI system to help assess someone\'s involvement in a crime, but it must be based on objective and verifiable facts directly linked to the crime.', NULL, 'next', NULL, ''),
(520, 372, ' Financial data (Information about how people spend, save, or transfer money, like credit card transactions)', 0, 'According to Article 5(1)(d) of the EU AI Act, criminal records, investigation evidence, money-related data, or location tracking can be used by the AI system to help assess someone\'s involvement in a crime, but it must be based on objective and verifiable facts directly linked to the crime.', NULL, 'next', NULL, ''),
(521, 372, ' Location tracking (Data showing where someone has been, like GPS from a phone or car)', 0, 'According to Article 5(1)(d) of the EU AI Act, criminal records, investigation evidence, money-related data, or location tracking can be used by the AI system to help assess someone\'s involvement in a crime, but it must be based on objective and verifiable facts directly linked to the crime.', NULL, 'next', NULL, ''),
(522, 373, 'Yes', 1, NULL, NULL, 'next', NULL, ''),
(523, 373, 'No', 0, 'Your answer indicates that the AI system does not use personal information such as age, disabilities, or financial status. As such, it is excluded from the provisions of Article 5(1)(b) of the EU AI Act, as it does not exploit vulnerabilities or target sensitive attributes, posing no specific risk.', NULL, 'next', NULL, ''),
(524, 374, 'Enhancing user well-being or physical safety (e.g. health monitoring, safety alerts)', 1, NULL, 'Your answer suggests that the AI system influences human behaviour according to Recital 29 of the EU AI Act. AI systems with such influences are considered high risk and could be prohibited due to the potential for harm or manipulation.It is advisable to thoroughly assess these systems to ensure they align with the regulatory requirements and mitigate any risks associated with their use.', 'next', NULL, ''),
(525, 374, 'Promoting psychological support or mental health (e.g. counseling, stress reduction tools)', 1, NULL, 'Your answer suggests that the AI system influences human behaviour according to Recital 29 of the EU AI Act. AI systems with such influences are considered high risk and could be prohibited due to the potential for harm or manipulation.It is advisable to thoroughly assess these systems to ensure they align with the regulatory requirements and mitigate any risks associated with their use.', 'next', NULL, ''),
(526, 374, 'Facilitating financial decision-making or management (e.g. budgeting tools, investment advice)', 1, NULL, 'Your answer suggests that the AI system influences human behaviour according to Recital 29 of the EU AI Act. AI systems with such influences are considered high risk and could be prohibited due to the potential for harm or manipulation.It is advisable to thoroughly assess these systems to ensure they align with the regulatory requirements and mitigate any risks associated with their use.', 'next', NULL, ''),
(527, 374, 'Encouraging positive behavioral changes (e.g. fitness tracking, habit-building apps)', 0, NULL, 'Your answer suggests that the AI system influences human behaviour according to Recital 29 of the EU AI Act. AI systems with such influences are considered high risk and could be prohibited due to the potential for harm or manipulation.It is advisable to thoroughly assess these systems to ensure they align with the regulatory requirements and mitigate any risks associated with their use.', 'next', NULL, ''),
(528, 374, 'Providing neutral or informational support without influencing decisions ', 0, NULL, 'Your answer indicates that the AI system provides neutral or informational support without actively influencing decisions. According to Recital 29 of the EU AI Act, such systems are not explicitly considered a risk. However, it is recommended to regularly evaluate these systems to ensure they remain aligned with their intended purpose and do not unintentionally influence user behavior or decisions.', 'next', NULL, ''),
(529, 375, 'Check for problems when complaints arise ', 1, NULL, 'According to Article 5(1)(a) and Article 5(1)(b) of the EU AI Act, your answer suggests that the organization only addresses problems when complaints arise. This reactive approach means that some issues could go unnoticed, potentially harming individuals and violating the regulation. The Act requires proactive measures to prevent risks and ensure that AI systems comply with safety and fairness standards, rather than waiting for complaints to address problems.', 'next', NULL, ''),
(530, 375, 'Random checks for problems', 1, NULL, 'According to Article 5(1)(a) and Article 5(1)(b) of the EU AI Act, your answer suggests that the organization conducts random checks for problems. However, without a clear, structured plan for monitoring, this approach can fail to adequately protect vulnerable individuals and may lead to violations of the Act. The regulation mandates proactive, consistent oversight to prevent harm and ensure compliance with safety and fairness standards.', 'next', NULL, ''),
(531, 375, 'Checks big decisions that seem risky ', 1, NULL, 'According to Article 5(1)(a) and Article 5(1)(b) of the EU AI Act, your answer suggests that the organization only reviews big decisions that appear risky. Focusing solely on major decisions can overlook smaller issues that might still cause harm, leading to potential violations of the regulation. The Act requires comprehensive oversight of all AI-related decisions, regardless of their scale, to ensure safety, fairness, and compliance with the Act.', 'next', NULL, ''),
(532, 375, 'Checks when required externally', 1, NULL, 'According to Article 5(1)(a) and Article 5(1)(b) of the EU AI Act, Relying solely on external people or authorities for checks may be quite inadequate, as it does not align with the regulation. The Act mandates proactive, continuous monitoring to prevent risks and ensure that AI systems operate safely and fairly at all times, by establishing internal processes to identify and mitigate risks.', 'next', NULL, ''),
(533, 375, 'Regular checks for problems', 0, NULL, NULL, 'next', NULL, ''),
(534, 375, 'Reports of decisions are written and reviewed', 0, NULL, NULL, 'next', NULL, ''),
(535, 376, 'We change answers to match each person’s unique situation, giving a very personalized experience.', 1, NULL, 'According to Article 5(1)(b) of the EU AI Act, your answer violates the regulation by adjusting responses based on personal information, potentially leading to influence and bias. To comply with the regulations, ensure that outputs are neutral and based on general standards instead of personalized details.', 'next', NULL, ''),
(536, 376, 'We change answers to guide how people think or act based on their personal situation or feelings.', 1, NULL, 'According to Article 5(1)(b) of the EU AI Act, your answer subtly influences people\'s decisions by adjusting responses based on their emotions or situation, which violates this regulation. To comply with the regulation, design consistent, unbiased outputs and avoid exploiting emotional or situational  vulnerabilities..', 'next', NULL, ''),
(537, 376, 'We give the same answers to everyone to maintain a standard.', 0, NULL, NULL, 'next', NULL, ''),
(538, 377, 'We check certain things, like how well the system works or keeps people interested, rather than how it affects individuals.', 1, NULL, 'Your answer indicates that the focus is on general system performance rather than how it affects individuals. It’s not always intentional if the AI causes problems, but once an issue is identified, it should be addressed through proper checks and assessments, as explained in Recital 29 of the EU AI Act.', 'next', NULL, ''),
(539, 377, 'We let users decide for themselves and don’t track if the system causes unexpected problems.', 1, NULL, 'Your answer indicates that the focus is on general system performance rather than how it affects individuals. It’s not always intentional if the AI causes problems, but once an issue is identified, it should be addressed through proper checks and assessments, as explained in Recital 29 of the EU AI Act.', 'next', NULL, ''),
(540, 377, 'We let experts from outside our team review the AI to make sure it doesn’t cause problems, and we fix anything they find.', 1, NULL, 'Your answer indicates that external experts review the AI system to ensure it’s not causing issues. While this helps ensure the system is working well, it’s also important for the development team to regularly check the system to quickly identify and resolve problems, as Recital 29 of the EU AI Act suggests.', 'next', NULL, ''),
(541, 377, 'We have a process to identify and address issues that may arise during the system\'s operation.', 0, NULL, NULL, 'next', NULL, ''),
(568, 383, 'Facial recognition (e.g. identifying or verifying individuals)', 1, NULL, NULL, 'next', NULL, 'You are classified as facial recognition under Article 5 clause 5.'),
(569, 383, 'Image classification (e.g. identifying objects, animals, etc.)', 0, 'AI systems used for purposes like image classification or other non-prohibited functions are not explicitly restricted under the EU AI Act. Provided they adhere to ethical and legal standards, it is recommended to evaluate these systems to maintain compliance and mitigate risks of unintended misuse or data breaches.', NULL, 'next', NULL, ''),
(570, 383, 'Video analytics (e.g. motion detection, activity recognition)', 0, 'AI systems used for purposes like image classification or other non-prohibited functions are not explicitly restricted under the EU AI Act. Provided they adhere to ethical and legal standards, it is recommended to evaluate these systems to maintain compliance and mitigate risks of unintended misuse or data breaches.', NULL, 'next', NULL, ''),
(571, 383, 'Other purposes', 0, 'AI systems used for purposes like image classification or other non-prohibited functions are not explicitly restricted under the EU AI Act. Provided they adhere to ethical and legal standards, it is recommended to evaluate these systems to maintain compliance and mitigate risks of unintended misuse or data breaches.', NULL, 'next', NULL, ''),
(572, 384, 'Images captured from CCTV', 1, NULL, 'According to Article 5(1)(e) of the EU AI Act, collecting facial images from CCTV and security cameras without explicit consent may violate privacy rights. It is recommended that personal data should be processed only for lawful, transparent, and fair purposes.', 'next', NULL, ''),
(573, 384, 'Images captured from security cameras', 1, NULL, 'According to Article 5(1)(e) of the EU AI Act, collecting facial images from CCTV and security cameras without explicit consent may violate privacy rights. It is recommended that personal data should be processed only for lawful, transparent, and fair purposes.', 'next', NULL, ''),
(574, 384, 'Images from publicly available databases', 1, NULL, 'According to Article 5(1)(e) of the EU AI Act, collecting facial images from publicly available databases, user uploads, or the internet without consent lead to a violation of privacy. It is recommended to revise data collection methods to secure explicit consent and ensure compliance with privacy and transparency requirements.', 'next', NULL, ''),
(575, 384, 'Images uploaded by users (e.g.for verification purposes)', 1, NULL, 'According to Article 5(1)(e) of the EU AI Act, collecting facial images from publicly available databases, user uploads, or the internet without consent lead to a violation of privacy. It is recommended to revise data collection methods to secure explicit consent and ensure compliance with privacy and transparency requirements.', 'next', NULL, ''),
(576, 384, 'Images scraped from the internet', 1, NULL, 'According to Article 5(1)(e) of the EU AI Act, collecting facial images from publicly available databases, user uploads, or the internet without consent lead to a violation of privacy. It is recommended to revise data collection methods to secure explicit consent and ensure compliance with privacy and transparency requirements.', 'next', NULL, ''),
(577, 384, 'Not applicable', 0, 'The AI system does not rely on external data sources, which helps minimize compliance risks. It is recommended to continue this approach to ensure adherence to data protection regulations and the EU AI Act.', NULL, 'next', NULL, ''),
(578, 385, 'Collecting facial images from CCTV footage in public areas', 1, NULL, 'According to Article 5(1)(e) of the EU AI Act,the use of  facial recognition methods may raise transparency concerns, as individuals might not be aware their facial images are being collected. This could lead to misuse without consent, violating the regulation\'s requirements. It is recommended to clearly inform individuals, and ensure the data is used only for specific, legitimate purposes.', '386', NULL, ''),
(579, 385, 'Providing information on FAQs regarding consent', 1, NULL, 'According to Article 5(1)(e) of the EU AI Act,the use of  facial recognition methods may raise transparency concerns, as individuals might not be aware their facial images are being collected. This could lead to misuse without consent, violating the regulation\'s requirements. It is recommended to clearly inform individuals, and ensure the data is used only for specific, legitimate purposes.', '386', NULL, ''),
(580, 385, ' Users are informed through a pop-up notice indicating that their facial images may be collected while using the website', 1, NULL, 'According to Article 5(1)(e) of the EU AI Act,the use of  facial recognition methods may raise transparency concerns, as individuals might not be aware their facial images are being collected. This could lead to misuse without consent, violating the regulation\'s requirements. It is recommended to clearly inform individuals, and ensure the data is used only for specific, legitimate purposes.', '386', NULL, ''),
(581, 385, 'Informing individuals through signage near CCTV devices', 1, NULL, 'According to Article 5(1)(e) of the EU AI Act,the use of  facial recognition methods may raise transparency concerns, as individuals might not be aware their facial images are being collected. This could lead to misuse without consent, violating the regulation\'s requirements. It is recommended to clearly inform individuals, and ensure the data is used only for specific, legitimate purposes.', '386', NULL, ''),
(582, 385, 'Capturing consent directly from individuals in CCTV recordings', 0, NULL, 'According to Article 5(1)(e) of the EU AI Act, even with consent, there’s still a chance that people’s faces could be collected and used without them fully understanding how. It is recommended to ensure strict compliance with rules about keeping data safe and using it only for fair and transparent purposes.', '388', NULL, ''),
(583, 385, 'Users must actively click an \'I agree\' button that clearly states their facial images will be collected or used before proceeding', 0, NULL, 'According to Article 5(1)(e) of the EU AI Act, even with consent, there’s still a chance that people’s faces could be collected and used without them fully understanding how. It is recommended to ensure strict compliance with rules about keeping data safe and using it only for fair and transparent purposes.', '386', NULL, ''),
(584, 385, ' We do not collect facial images', 0, 'If the AI system does not collect facial images, it avoids the risks associated with handling biometric data and ensures compliance with data protection regulations under the EU AI Act, which imposes strict limitations on the use of such data.', NULL, '387', NULL, 'as your not collectign any facial images, further questions is not applicable to you'),
(585, 386, 'By using automated tools that gather facial images from publicly available sources', 1, NULL, 'According to Article 5(1)(e) of the EU AI Act, using automated tools to collect facial images from public sources might lead to the creation or expansion of facial recognition databases. It is recommended to carefully consider the privacy and surveillance concerns associated with this practice.', '387', NULL, ''),
(586, 386, 'By selecting specific datasets manually', 0, NULL, NULL, '387', NULL, ''),
(587, 386, 'By collaborating with image providers or databases', 0, NULL, NULL, '387', NULL, ''),
(588, 386, 'Not using facial images from external sources', 0, NULL, NULL, '387', NULL, ''),
(589, 387, 'Yes', 1, NULL, NULL, 'next', NULL, ''),
(590, 387, 'No ', 0, NULL, NULL, 'next', NULL, ''),
(591, 388, 'We check certain things, like how well the system works or keeps people interested, rather than how it affects individuals.', 1, NULL, 'According to Recital 29 of the EU AI Act, focusing only on system performance without assessing its impact on individuals can overlook potential risks. It is recommended to establish a structured process for identifying, reporting, and resolving issues that could harm individuals, ensuring proper risk management and compliance.', 'next', NULL, ''),
(592, 388, 'We let users decide for themselves and don’t track if the system causes unexpected problems.', 1, NULL, 'According to Recital 29 of the EU AI Act, focusing only on system performance without assessing its impact on individuals can overlook potential risks. It is recommended to establish a structured process for identifying, reporting, and resolving issues that could harm individuals, ensuring proper risk management and compliance.', 'next', NULL, ''),
(593, 388, 'We let experts from outside our team review the AI to make sure it doesn’t cause problems, and we fix anything they find.', 1, NULL, 'Your answer indicates that external experts review the AI system to ensure it’s not causing issues. While this helps ensure the system is working well, it’s also recommended that the development team to regularly check the system to quickly identify and resolve problems, as Recital 29 of the EU AI Act suggests.', 'next', NULL, ''),
(594, 388, 'We have a process to find, report, and fix any unexpected problems that might harm people or others.', 0, NULL, NULL, 'next', NULL, ''),
(595, 389, 'Emotional responses', 1, NULL, NULL, 'next', NULL, ''),
(596, 389, 'Emotional expressions, such as  facial expressions or body language', 1, NULL, NULL, 'next', NULL, ''),
(597, 389, 'Intentions or motivations', 1, NULL, NULL, 'next', NULL, ''),
(598, 389, 'Actions or behaviors', 1, NULL, NULL, 'next', NULL, ''),
(599, 389, 'Conversations or dialogues', 0, 'Since your AI system does not assess emotional responses, expressions, or intentions, it is not subject to the concerns outlined in Article 5(1)(f) of the EU AI Act. This reduces the risk of discriminatory outcomes or invasions of privacy that can occur when emotion recognition systems are used in sensitive environments like workplaces or educational institutions.', NULL, 'next', NULL, ''),
(600, 389, 'Personal opinions or feedback', 0, 'Since your AI system does not assess emotional responses, expressions, or intentions, it is not subject to the concerns outlined in Article 5(1)(f) of the EU AI Act. This reduces the risk of discriminatory outcomes or invasions of privacy that can occur when emotion recognition systems are used in sensitive environments like workplaces or educational institutions.', NULL, 'next', NULL, ''),
(601, 390, 'Workplace', 1, NULL, 'According to Recital 44 of the EU AI Act, using AI systems in workplaces or educational institutions can create unfair situations by giving certain individuals excessive control, which may result in biased treatment. To comply, ensure the system promotes fairness, prevents misuse, and applies safeguards for equal treatment.', 'next', NULL, ''),
(602, 390, 'Educational institutions ', 1, NULL, 'According to Recital 44 of the EU AI Act, using AI systems in workplaces or educational institutions can create unfair situations by giving certain individuals excessive control, which may result in biased treatment. To comply, ensure the system promotes fairness, prevents misuse, and applies safeguards for equal treatment.', 'next', NULL, ''),
(603, 390, 'Public spaces ', 0, NULL, NULL, 'next', NULL, ''),
(604, 390, 'None of the above ', 0, 'Since your AI system is not used in workplaces or educational institutions, it is not subject to the prohibitions under Article 5(1)(f) of the EU AI Act, which aims to prevent the potential for biased or harmful treatment in these sensitive environments.', NULL, 'next', NULL, ''),
(605, 391, 'Monitoring employee/student performance or behavior ', 1, NULL, NULL, 'next', NULL, ''),
(606, 391, 'Other purposes not related to safety or medical use ', 1, NULL, NULL, 'next', NULL, ''),
(607, 391, 'Safety or security measures ', 0, 'According to Article 5(1)(f) of the EU AI Act, AI systems used strictly for medical or safety reasons, such as those intended for therapeutic use, are not covered by the prohibition. Therefore, these systems are subject to different regulations and are not included in the restrictions that apply to other AI systems.', NULL, 'next', NULL, ''),
(608, 391, 'Medical diagnosis or treatment', 0, 'According to Article 5(1)(f) of the EU AI Act, AI systems used strictly for medical or safety reasons, such as those intended for therapeutic use, are not covered by the prohibition. Therefore, these systems are subject to different regulations and are not included in the restrictions that apply to other AI systems.', NULL, 'next', NULL, ''),
(609, 392, 'Across multiple cultures', 1, NULL, 'Your chosen answer highlights that AI systems designed to detect emotions raise significant concerns regarding their reliability, cultural sensitivity, and applicability for diverse individuals and situations. Under the EU AI Act, these systems may fail to meet the necessary standards of fairness, transparency, and accuracy, limiting their practical application.', 'next', NULL, ''),
(610, 392, 'Across specific situations', 1, NULL, 'Your chosen answer highlights that AI systems designed to detect emotions raise significant concerns regarding their reliability, cultural sensitivity, and applicability for diverse individuals and situations. Under the EU AI Act, these systems may fail to meet the necessary standards of fairness, transparency, and accuracy, limiting their practical application.', 'next', NULL, ''),
(611, 392, 'Focusing on data specific to one individual', 1, NULL, 'Your chosen answer highlights that AI systems designed to detect emotions raise significant concerns regarding their reliability, cultural sensitivity, and applicability for diverse individuals and situations. Under the EU AI Act, these systems may fail to meet the necessary standards of fairness, transparency, and accuracy, limiting their practical application.', 'next', NULL, ''),
(612, 392, 'Others', 0, NULL, 'Your chosen answer highlights that AI systems designed to detect emotions raise significant concerns regarding their reliability, cultural sensitivity, and applicability for diverse individuals and situations. Under the EU AI Act, these systems may fail to meet the necessary standards of fairness, transparency, and accuracy, limiting their practical application.', 'next', NULL, ''),
(613, 393, 'Physical features of a person', 1, NULL, 'According to Article 2(34) of the EU AI Act, physical features like facial images qualify as biometric data when processed using specific technical methods, such as facial recognition. It is important to implement robust  safeguards, such as encryption and restricted access, to protect individual privacy and prevent misuse of this sensitive data.', 'next', NULL, ''),
(614, 393, 'Physiological traits of a person', 1, NULL, 'According to Article 2(34) of the EU AI Act, physiological traits like fingerprints are considered biometric data when linked to a specific person. To minimize risks, consider technical safeguards such as encryption, access controls, and anonymization to protect personal data and prevent misuse.', 'next', NULL, ''),
(615, 393, 'Behavioral based features of a person', 1, NULL, 'According to Article 2(34) of the EU AI Act, behavioral features can qualify as biometric data if used to identify individuals. It is recommended to apply measures to minimize risks of misuse and ensure compliance with data protection rules.', 'next', NULL, ''),
(616, 393, 'General information about a person\'s daily routine, like the time they wake up', 0, NULL, 'According to Article 2(34) of the EU AI Act, general information about daily routines does not qualify as biometric data, as it cannot be used to identify someone directly. However, ensure personal data is not used in ways that could compromise privacy of an individual.', 'next', NULL, ''),
(617, 394, 'We\'re working on new ways to keep personal details safe when using sensitive characteristics from biometric data.', 1, NULL, 'According to Recital 44 of the EU AI Act, insufficient safeguards for handling biometric data, especially regarding sensitive characteristics, can pose significant risks to privacy and fundamental rights. It is recommended to implement robust mechanisms that ensure data protection, anonymity, and compliance with the Act\'s requirements to mitigate these risks.', 'next', NULL, ''),
(618, 394, 'We try not to collect too much information so that no personal details can be figured out.', 0, NULL, NULL, 'next', NULL, ''),
(619, 394, 'We use methods to keep biometric data like fingerprints and face scans anonymous or hidden, so people can\'t figure out personal details.', 0, NULL, NULL, 'next', NULL, ''),
(620, 394, 'We regularly check and fix any problems to make sure personal details aren\'t guessed from our data.', 0, NULL, NULL, 'next', NULL, ''),
(621, 394, 'We follow the law to ensure biometric data like fingerprints, face scans etc. are protected.', 0, NULL, NULL, 'next', NULL, ''),
(632, 397, ' In public places like parks, streets, malls, or other areas', 1, NULL, 'Your response aligns with the definition of publicly accessible spaces under Article 2(44) of the EU AI Act, meaning your AI system operates in areas that are open to a large number of individuals.  It is recommended to ensure that your AI system adheres to the AI regulations, focusing on protecting privacy rights and maintaining security in areas accessible to many people.', 'next', NULL, ''),
(633, 397, ' In transportation hubs like airports, train stations, or bus stops', 1, NULL, 'Your response aligns with the definition of publicly accessible spaces under Article 2(44) of the EU AI Act, meaning your AI system operates in areas that are open to a large number of individuals.  It is recommended to ensure that your AI system adheres to the AI regulations, focusing on protecting privacy rights and maintaining security in areas accessible to many people.', 'next', NULL, ''),
(634, 397, ' In private buildings, offices, or areas where entry is controlled', 0, 'Your answer does not meet the definition of publicly accessible spaces according to Article 2(44) of the EU AI Act. This means that the areas in question have restricted access and may not fall under the same strict rules as public spaces.', NULL, 'next', NULL, ''),
(635, 397, ' Online, through a website, app, or digital platform', 0, 'Your answer does not meet the definition of publicly accessible spaces according to Article 2(44) of the EU AI Act. This means that the areas in question have restricted access and may not fall under the same strict rules as public spaces.', NULL, 'next', NULL, ''),
(636, 397, ' In schools, hospitals, or places where specific groups of people go', 0, 'Your answer does not meet the definition of publicly accessible spaces according to Article 2(44) of the EU AI Act. This means that the areas in question have restricted access and may not fall under the same strict rules as public spaces.', NULL, 'next', NULL, ''),
(637, 398, 'The system uses facial recognition to identify people from live videos in public places.', 1, NULL, 'Your answer indicates that the system identifies natural persons without active involvement, meeting the criteria for a remote biometric identification system under Article 3(41) of the EU AI Act. It is recommended to review and ensure compliance with the Act’s regulations due to inherent privacy concerns related to such systems.', 'next', NULL, ''),
(638, 398, 'The system listens to people\'s voices from audio recordings to identify them without their permission.', 1, NULL, 'Your answer indicates that the system identifies natural persons without active involvement, meeting the criteria for a remote biometric identification system under Article 3(41) of the EU AI Act. It is recommended to review and ensure compliance with the Act’s regulations due to inherent privacy concerns related to such systems.', 'next', NULL, '');
INSERT INTO `answers` (`id`, `question_id`, `text`, `risk_score`, `gaps`, `recommendation`, `q`, `correct_answer`, `comments`) VALUES
(639, 398, 'The system looks at people\'s eyes from security camera footage to match them with a list of known people.', 1, NULL, 'Your answer indicates that the system identifies natural persons without active involvement, meeting the criteria for a remote biometric identification system under Article 3(41) of the EU AI Act. It is recommended to review and ensure compliance with the Act’s regulations due to inherent privacy concerns related to such systems.', 'next', NULL, ''),
(640, 398, 'The system requires people to actively give their fingerprints or facial scans at specific checkpoints for identification.', 0, NULL, 'Your answer indicates that the system\'s design ensures that biometric data is only processed with the active participation or consent of individuals. This approach aligns with ethical AI practices, prioritizing user control and transparency. It is recommended to maintain this user-centric design, as it falls outside the regulatory scope of a biometric identification system under Article 3(41) of the EU AI Act.', 'next', NULL, ''),
(641, 398, 'The system uses data from wearable devices, like smartwatches, with the person\'s consent, to identify them.', 0, NULL, 'Your answer indicates that the system\'s design ensures that biometric data is only processed with the active participation or consent of individuals. This approach aligns with ethical AI practices, prioritizing user control and transparency. It is recommended to maintain this user-centric design, as it falls outside the regulatory scope of a biometric identification system under Article 3(41) of the EU AI Act.', 'next', NULL, ''),
(642, 398, 'The system only processes biometric data when people willingly upload their images or videos for analysis.', 0, NULL, 'Your answer indicates that the system\'s design ensures that biometric data is only processed with the active participation or consent of individuals. This approach aligns with ethical AI practices, prioritizing user control and transparency. It is recommended to maintain this user-centric design, as it falls outside the regulatory scope of a biometric identification system under Article 3(41) of the EU AI Act.', 'next', NULL, ''),
(643, 399, 'The system collects face data from live video and gives identification results right away.', 1, NULL, 'According to Article 2(42) of the EU AI Act, your system, which identifies individuals in real-time using methods like face recognition from live video or voice identification from live audio, qualifies as a real-time remote biometric identification system. To comply with the AI regulations, focus on transparency, user consent and data protection.', 'next', NULL, ''),
(644, 399, 'The system listens to live audio, collects voice data, and identifies people in seconds.', 1, NULL, 'According to Article 2(42) of the EU AI Act, your system, which identifies individuals in real-time using methods like face recognition from live video or voice identification from live audio, qualifies as a real-time remote biometric identification system. To comply with the AI regulations, focus on transparency, user consent and data protection.', 'next', NULL, ''),
(645, 399, 'The system scans people\'s eyes at security checkpoints and matches them with a database instantly for quick access.', 1, NULL, 'According to Article 2(42) of the EU AI Act, your system, which identifies individuals in real-time using methods like face recognition from live video or voice identification from live audio, qualifies as a real-time remote biometric identification system. To comply with the AI regulations, focus on transparency, user consent and data protection.', 'next', NULL, ''),
(646, 399, 'The system uses fast 5G technology to collect and process high-quality face data for near-instant identification.', 1, NULL, 'According to Article 2(42) of the EU AI Act, your system, which identifies individuals in real-time using methods like face recognition from live video or voice identification from live audio, qualifies as a real-time remote biometric identification system. To comply with the AI regulations, focus on transparency, user consent and data protection.', 'next', NULL, ''),
(647, 399, 'The system stores fingerprint data collected earlier and uses it later for identification during specific events.', 0, NULL, 'According to Article 2(43) of the EU AI Act, your system, which identifies people from stored data or analyzes biometric information later, is considered lower-risk. However, ensure that your system complies with privacy regulations and assess its intended use carefully.', 'next', NULL, ''),
(648, 399, 'The system collects how people walk (gait) during live events and identifies them only after the event is over.', 0, NULL, 'According to Article 2(43) of the EU AI Act, your system, which identifies people from stored data or analyzes biometric information later, is considered lower-risk. However, ensure that your system complies with privacy regulations and assess its intended use carefully.', 'next', NULL, ''),
(649, 399, 'The system collects images or videos people upload and takes several hours or days to provide identification results.', 0, NULL, 'According to Article 2(43) of the EU AI Act, your system, which identifies people from stored data or analyzes biometric information later, is considered lower-risk. However, ensure that your system complies with privacy regulations and assess its intended use carefully.', 'next', NULL, ''),
(650, 399, 'The system collects data from wearable devices and processes it regularly (like every day or week) to identify people.', 0, NULL, 'According to Article 2(43) of the EU AI Act, your system, which identifies people from stored data or analyzes biometric information later, is considered lower-risk. However, ensure that your system complies with privacy regulations and assess its intended use carefully.', 'next', NULL, ''),
(651, 399, 'The system looks at pre-recorded video footage and identifies people after some time has passed.', 0, NULL, 'According to Article 2(43) of the EU AI Act, your system, which identifies people from stored data or analyzes biometric information later, is considered lower-risk. However, ensure that your system complies with privacy regulations and assess its intended use carefully.', 'next', NULL, ''),
(652, 400, 'Helping to stop or prevent crimes and keep people safe.', 1, NULL, 'According to Article 2(46) of the EU AI Act, your system, which helps prevent or investigate crimes, detect threats, or manage legal punishments, is classified as law enforcement. If using real-time remote biometric identification in public spaces, it must comply with strict rules, including prior judicial authorization, a fundamental rights impact assessment, and necessary registration in the EU database.', 'next', NULL, ''),
(653, 400, 'Assisting police in solving crimes or finding criminals.', 1, NULL, 'According to Article 2(46) of the EU AI Act, your system, which helps prevent or investigate crimes, detect threats, or manage legal punishments, is classified as law enforcement. If using real-time remote biometric identification in public spaces, it must comply with strict rules, including prior judicial authorization, a fundamental rights impact assessment, and necessary registration in the EU database.', 'next', NULL, ''),
(654, 400, 'Watching out for threats like terrorism or violence.', 1, NULL, 'According to Article 2(46) of the EU AI Act, your system, which helps prevent or investigate crimes, detect threats, or manage legal punishments, is classified as law enforcement. If using real-time remote biometric identification in public spaces, it must comply with strict rules, including prior judicial authorization, a fundamental rights impact assessment, and necessary registration in the EU database.', 'next', NULL, ''),
(655, 400, 'Helping manage punishments or enforce legal rules for criminals.', 1, NULL, 'According to Article 2(46) of the EU AI Act, your system, which helps prevent or investigate crimes, detect threats, or manage legal punishments, is classified as law enforcement. If using real-time remote biometric identification in public spaces, it must comply with strict rules, including prior judicial authorization, a fundamental rights impact assessment, and necessary registration in the EU database.', 'next', NULL, ''),
(656, 400, 'Protecting people or property by identifying possible dangers.', 0, 'Your answer means you are excluded from being classified as a law enforcement under Article 3(46) of the EU AI Act. Since it does not assist in crime prevention, investigation, or legal enforcement, it is not subject to the strict regulations for such app', NULL, 'submit', NULL, 'Your answer means you are excluded from being classified as a law enforcement under Article 3(46) of the EU AI Act. Since it does not assist in crime prevention, investigation, or legal enforcement, it is not subject to the strict regulations for such app'),
(657, 400, 'Helping doctors diagnose or treat health problems.', 0, 'Your answer means you are excluded from being classified as a law enforcement under Article 3(46) of the EU AI Act. Since it does not assist in crime prevention, investigation, or legal enforcement, it is not subject to the strict regulations for such app', NULL, 'submit', NULL, 'Your answer means you are excluded from being classified as a law enforcement under Article 3(46) of the EU AI Act. Since it does not assist in crime prevention, investigation, or legal enforcement, it is not subject to the strict regulations for such app'),
(658, 400, 'Doing tasks that have nothing to do with safety,security or health.', 0, 'Your answer means you are excluded from being classified as a law enforcement under Article 3(46) of the EU AI Act. Since it does not assist in crime prevention, investigation, or legal enforcement, it is not subject to the strict regulations for such app', NULL, 'submit', NULL, 'Your answer means you are excluded from being classified as a law enforcement under Article 3(46) of the EU AI Act. Since it does not assist in crime prevention, investigation, or legal enforcement, it is not subject to the strict regulations for such app'),
(744, 418, 'Physical features of a person (e.g. facial structure, height, fingerprints)', 1, NULL, 'According to Article 2(34) of the EU AI Act, physical features like facial images qualify as biometric data when processed using specific technical methods, such as facial recognition. It is important to implement robust  safeguards, such as encryption and restricted access, to protect individual privacy and prevent misuse of this sensitive data.', 'next', NULL, ''),
(745, 418, 'Physiological traits of a person (e.g. iris patterns, heartbeat, voice frequency)', 1, NULL, 'According to Article 2(34) of the EU AI Act, physiological traits like fingerprints are considered biometric data when linked to a specific person. To minimize risks, consider technical safeguards such as encryption, access controls, and anonymization to protect personal data and prevent misuse.', 'next', NULL, ''),
(746, 418, 'Behavior traits of a person (e.g. gait, typing pattern, signature pattern)', 1, NULL, 'According to Article 2(34) of the EU AI Act, behavioral features can qualify as biometric data if used to identify individuals. It is recommended to apply measures to minimize risks of misuse and ensure compliance with data protection rules.', 'next', NULL, ''),
(747, 418, 'General information about a person\'s daily routine (e.g. time they wake up, travelling habits, preferred shopping locations)', 0, 'According to Article 2(34) of the EU AI Act, general information about daily routines does not qualify as biometric data, as it cannot be used to identify someone directly. However, ensure personal data is not used in ways that could compromise privacy of an individual.', NULL, 'next', NULL, ''),
(748, 419, ' Sorting people into groups based on things like their face or fingerprint.', 1, NULL, 'According to Article 2(40) of the EU AI Act, your answer, \'sorting people into groups based on characteristics such as their face or fingerprint,\' fits the definition of biometric categorization. This involves handling sensitive biometric data, which requires privacy safeguards, transparency mechanisms, and regular bias assessments to ensure compliance with the EU AI Act.', 'next', NULL, ''),
(749, 419, ' Automatically recognizing someone’s face or other features to confirm who they are.', 0, 'According to Article 2(40) of the EU AI Act, your answer, \'automatically recognizing someone’s face or other features to confirm their identity,\' fits the definition of biometric identification, meaning you are dealing with biometric data. Since it involves sensitive information, you must ensure the data is protected, obtain user consent, and regularly assess potential risks.', NULL, 'redirect.Assessment - Biometric Identification', NULL, 'The chosen answer indicates that your AI system has a risk of biometric identification. You will be redirected to biometric identification assessment for further assessment. Please reach out to marketing team if you have any queries.'),
(750, 419, ' Scanning documents and pulling out specific information like names or dates.', 0, 'According to Article 2(40) of the EU AI Act, your answer \'scanning documents and pulling out specific information like names or dates\' is not related to biometric data. To ensure compliance, focus on data accuracy, the secure handling of sensitive information, and adherence to applicable data protection laws.', NULL, 'next', NULL, ''),
(751, 419, ' Helping to recommend products or services based on personal preferences.', 0, 'According to Article 2(40) of the EU AI Act, your answer \"helping to recommend products or services based on personal preferences\" is not related to biometric data. Ensure user consent is prioritized, and recommendation algorithms remain transparent and aligned with AI regulations to build trust and ensure fairness. ', NULL, 'next', NULL, ''),
(752, 419, ' Analyzing patterns in people’s behavior to predict future actions.', 0, 'According to Article 2(40) of the EU AI Act, your answer \'analyzing patterns in people’s behavior to predict future actions\' is not related to biometric data. While this is generally considered low-risk, it remains essential to ensure your system is fair, transparent in its operation, and fosters user trust.', NULL, 'next', NULL, ''),
(753, 419, ' Automatically checking and confirming the identity of someone, like logging into an account.', 0, 'According to Article 2(40) of the EU AI Act, your answer \'automatically checking and confirming the identity of someone\' fits the definition of biometric verification. This involves handling sensitive biometric data, which requires encryption, clear consent protocols, and obtaining user permission.', NULL, 'redirect.Assessment - Biometric Identification', NULL, 'The chosen answer indicates that your AI system has a risk of biometric verification. You will be redirected to biometric verification assessment for further assessment. Please reach out to marketing team if you have any queries.'),
(754, 420, 'Personal characteristics (e.g. race, political opinions,  trade union membership)', 1, NULL, 'According to Article 5(1)(g) of the EU AI Act, your answer \"personal characteristics\" involves inferring sensitive information, which is strictly prohibited. Avoid using AI systems for such purposes to comply with the law and protect individuals’ privacy and rights.', 'next', NULL, ''),
(755, 420, 'Religious or philosophical beliefs', 1, NULL, 'According to Article 5(1)(g) of the EU AI Act, your answer \"religious or philosophical beliefs\" increases the risk of discrimination and profiling. Refrain from categorizing people based on this information to prevent harm and align with legal standards.', 'next', NULL, ''),
(756, 420, 'Sex life or sexual orientation', 1, NULL, 'According to Article 5(1)(g) of the EU AI Act, your answer \"sex life or sexual orientation\" involves inferring sensitive personal details, which is prohibited under the Act. Ensure your AI does not process this type of data to meet compliance requirements.', 'next', NULL, ''),
(757, 420, 'Personalization of services', 0, 'According to Article 5(1)(g) of the EU AI Act, AI systems used for service personalization are excluded from the prohibition because they do not categorize or infer sensitive personal data, such as race, political opinions, or sexual orientation. As such, these systems are considered low risk in terms of ethical compliance.', NULL, 'next', NULL, ''),
(758, 420, 'Research and development', 0, 'AI systems used for research and development contribute to innovation and knowledge generation while adhering to ethical and legal standards. According to Article 5(1)(g) of the EU AI Act, these systems are also excluded from the prohibition, as they do not involve prohibited practices related to biometric categorization. Therefore, these systems are classified as low risk.', NULL, 'next', NULL, ''),
(759, 421, 'Protecting people or property by identifying possible dangers.', 1, NULL, 'According to Article 5(1)(g) of the EU AI Act, the use of AI systems for monitoring risks, managing medical diagnoses, or tasks unrelated to public safety may involve high risks related to biometric data and sensitive personal characteristics. Such systems are subject to strict regulations to ensure personal data is not misused. It is recommended to implement strong data privacy measures and ensure the use of biometric data is lawful and ethical.', 'next', NULL, ''),
(760, 421, 'Helping doctors diagnose or treat health problems.', 1, NULL, 'According to Article 5(1)(g) of the EU AI Act, the use of AI systems for monitoring risks, managing medical diagnoses, or tasks unrelated to public safety may involve high risks related to biometric data and sensitive personal characteristics. Such systems are subject to strict regulations to ensure personal data is not misused. It is recommended to implement strong data privacy measures and ensure the use of biometric data is lawful and ethical.', 'next', NULL, ''),
(761, 421, 'Helping to stop or prevent crimes and keep people safe.', 0, NULL, NULL, 'next', NULL, ''),
(762, 421, 'Assisting police in solving crimes or finding criminals.', 0, NULL, NULL, 'next', NULL, ''),
(763, 421, 'Watching out for threats like terrorism or violence.', 0, NULL, NULL, 'next', NULL, ''),
(764, 421, 'Helping manage punishments or enforce legal rules for criminals.', 0, NULL, NULL, 'next', NULL, ''),
(765, 421, 'None of the above.', 1, NULL, 'According to Article 5(1)(g) of the EU AI Act, the use of AI systems for monitoring risks, managing medical diagnoses, or tasks unrelated to public safety may involve high risks related to biometric data and sensitive personal characteristics. Such systems are subject to strict regulations to ensure personal data is not misused. It is recommended to implement strong data privacy measures and ensure the use of biometric data is lawful and ethical.', 'next', NULL, ''),
(766, 422, 'Without adhering to regulations', 1, NULL, 'According to Article 10 of the EU AI Act and GDPR, biometric data must be collected only when people are informed and clear consent is given. If data is collected without consent or proper safeguards, it can lead to unfair use or misuse. Non-compliance violates the principles of lawful processing, transparency, and fairness. Ensure all biometric data is collected with the person’s permission, documented properly, and processed ethically and lawfully.', 'next', NULL, ''),
(767, 422, 'By meeting legal compliance standards', 1, NULL, 'According to Article 10 of the EU AI Act and GDPR, biometric data must be collected only when people are informed and clear consent is given. If data is collected without consent or proper safeguards, it can lead to unfair use or misuse. Non-compliance violates the principles of lawful processing, transparency, and fairness. Ensure all biometric data is collected with the person’s permission, documented properly, and processed ethically and lawfully.', 'next', NULL, ''),
(768, 422, 'Following established procedures', 0, 'According to Article 5(1)(g) of the EU AI Act, biometric data collected with consent and safeguards can be used for specific purposes like law enforcement. Ensure the data is collected responsibly, with proper consent, and used only for clearly defined purposes.', NULL, 'next', NULL, ''),
(769, 422, 'In a manner consistent with applicable laws', 0, 'According to Article 5(1)(g) of the EU AI Act, biometric data collected with consent and safeguards can be used for specific purposes like law enforcement. Ensure the data is collected responsibly, with proper consent, and used only for clearly defined purposes.', NULL, 'next', NULL, ''),
(770, 423, 'Body or entity appointed by the government for official tasks.', 1, NULL, 'Your answer means you are classified as a law enforcement authority according to Article 2(45) of the EU AI Act. This means your organization is likely subject to stricter regulations regarding the use of biometric data, particularly if used for public safety or law enforcement purposes.', 'next', NULL, ''),
(771, 423, 'A government agency with legal powers.', 1, NULL, 'Your answer means you are classified as a law enforcement authority according to Article 2(45) of the EU AI Act. This means your organization is likely subject to stricter regulations regarding the use of biometric data, particularly if used for public safety or law enforcement purposes.', 'next', NULL, ''),
(772, 423, 'A non-governmental organisation.', 0, 'Your answer means you are excluded from being classified as a law enforcement authority under Article 2(45) of the EU AI Act. This means your organization is not considered a public authority or an entity with official powers.', NULL, 'submit', NULL, 'Your answer means you are excluded from being classified as a law enforcement authority under Article 2(45) of the EU AI Act. This means your organization is not considered a public authority or an entity with official powers.'),
(773, 423, 'A private company with no legal powers.', 0, 'Your answer means you are excluded from being classified as a law enforcement authority under Article 2(45) of the EU AI Act. This means your organization is not considered a public authority or an entity with official powers.', NULL, 'submit', NULL, 'Your answer means you are excluded from being classified as a law enforcement authority under Article 2(45) of the EU AI Act. This means your organization is not considered a public authority or an entity with official powers.'),
(774, 424, 'Finding victims of kidnapping, human trafficking, or abuse, or helping find missing people.', 0, 'Your answer suggests the AI system is used for acceptable purposes. It is recommended to ensure that real-time remote biometric identification in public spaces is deployed with careful consideration of the situation\'s nature and its potential impact on individuals\' rights, in line with Article 5(2) of the EU AI Act.', NULL, 'next', NULL, ''),
(775, 424, 'Stopping serious threats to someone\'s life or safety, or preventing a terrorist attack.', 0, 'Your answer suggests the AI system is used for acceptable purposes. It is recommended to ensure that real-time remote biometric identification in public spaces is deployed with careful consideration of the situation\'s nature and its potential impact on individuals\' rights, in line with Article 5(2) of the EU AI Act.', NULL, 'next', NULL, ''),
(776, 424, 'Helping police find or identify suspects of major crimes that could lead to at least four years in jail.', 0, 'Your answer suggests the AI system is used for acceptable purposes. It is recommended to ensure that real-time remote biometric identification in public spaces is deployed with careful consideration of the situation\'s nature and its potential impact on individuals\' rights, in line with Article 5(2) of the EU AI Act.', NULL, 'next', NULL, ''),
(777, 424, 'None of the above (like using face recognition for refugees at borders).', 1, NULL, 'Your answer indicates that the use of the AI system is excluded from the provisions of Article 5(2) of the EU AI Act. It is recommended to carefully assess how the system is deployed, considering the specific use case requirements and the potential impacts on individuals\' rights and freedoms. Ensuring compliance with the relevant legal framework is crucial for minimizing any legal and privacy risks.', 'submit', NULL, 'Your answer indicates that the use of the AI system is excluded from the provisions of Article 5(2) of the EU AI Act. '),
(778, 425, 'It might affect people\'s safety or health in some cases.', 1, NULL, 'Your answer of AI systems is associated with high potential risks according to Article 5(2)(b) of the EU AI Act , as its use could seriously affect people\'s safety or health, cause problems with important systems or services, break rules or laws protecting people\'s rights, or lead to faster, but potentially unfair, processes. It\'s crucial to consider the consequences for the rights and freedoms of all persons concerned.', 'next', NULL, ''),
(779, 425, 'It could cause problems with important systems or services.', 1, NULL, 'Your answer of AI systems is associated with high potential risks according to Article 5(2)(b) of the EU AI Act , as its use could seriously affect people\'s safety or health, cause problems with important systems or services, break rules or laws protecting people\'s rights, or lead to faster, but potentially unfair, processes. It\'s crucial to consider the consequences for the rights and freedoms of all persons concerned.', 'next', NULL, ''),
(780, 425, 'It might break rules or laws that protect people\'s rights.', 1, NULL, 'Your answer of AI systems is associated with high potential risks according to Article 5(2)(b) of the EU AI Act , as its use could seriously affect people\'s safety or health, cause problems with important systems or services, break rules or laws protecting people\'s rights, or lead to faster, but potentially unfair, processes. It\'s crucial to consider the consequences for the rights and freedoms of all persons concerned.', 'next', NULL, ''),
(781, 425, 'It could make things work faster and more smoothly.', 1, NULL, 'Your answer of AI systems is associated with high potential risks according to Article 5(2)(b) of the EU AI Act , as its use could seriously affect people\'s safety or health, cause problems with important systems or services, break rules or laws protecting people\'s rights, or lead to faster, but potentially unfair, processes. It\'s crucial to consider the consequences for the rights and freedoms of all persons concerned.', 'next', NULL, ''),
(782, 425, 'It might help finish everyday tasks more quickly.', 0, 'Your answer of systems that improve efficiency, response times, or transparency without posing significant risks does not fall under the high-risk category according to Article 5(2)(b) of the EU AI Act. This means that these systems are generally seen as low-risk, aligning with responsible AI use and requiring only standard operational practices and monitoring.', NULL, 'next', NULL, ''),
(783, 425, 'A lot of planning and feedback from people might be needed.', 0, 'Your answer of systems that improve efficiency, response times, or transparency without posing significant risks does not fall under the high-risk category according to Article 5(2)(b) of the EU AI Act. This means that these systems are generally seen as low-risk, aligning with responsible AI use and requiring only standard operational practices and monitoring.', NULL, 'next', NULL, ''),
(784, 425, 'Extra checks might be done to make sure it’s fair for everyone.', 0, 'Your answer of systems that improve efficiency, response times, or transparency without posing significant risks does not fall under the high-risk category according to Article 5(2)(b) of the EU AI Act. This means that these systems are generally seen as low-risk, aligning with responsible AI use and requiring only standard operational practices and monitoring.', NULL, 'next', NULL, ''),
(785, 426, 'People could be at risk of getting hurt or losing important things, and the police would have a hard time solving the problem.', 1, NULL, 'Your answer does not align with the provisions of Article 5(2)(a) of the EU AI Act . The situation described indicates a high level of risk, and careful consideration is required regarding the seriousness, probability, and scale of harm that would be caused if the system were not used as intended. ', 'next', NULL, ''),
(786, 426, 'The situation could get worse, and the police might not be able to stop it in time, but no one would be seriously harmed.', 1, NULL, 'Your answer does not align with the provisions of Article 5(2)(a) of the EU AI Act . The situation described indicates a high level of risk, and careful consideration is required regarding the seriousness, probability, and scale of harm that would be caused if the system were not used as intended. ', 'next', NULL, ''),
(787, 426, 'The situation could get really bad, with a lot of harm to people or things, and the police wouldn’t be able to fix it quickly.', 1, NULL, 'Your answer does not align with the provisions of Article 5(2)(a) of the EU AI Act . The situation described indicates a high level of risk, and careful consideration is required regarding the seriousness, probability, and scale of harm that would be caused if the system were not used as intended. ', 'next', NULL, ''),
(788, 426, ' Nothing bad would happen. The police could still handle it with other methods.', 0, 'Your answer of systems that pose minimal risks and allow for manageable delays or adjustments does not fall under the high-risk category according to Article 5(2)(a) of the EU AI Act. This means that these systems are generally seen as low-risk, aligning with responsible AI use and requiring only standard operational practices and monitoring.', NULL, 'next', NULL, ''),
(789, 426, 'There might be a small delay, but the police can still deal with the situation.', 0, 'Your answer of systems that pose minimal risks and allow for manageable delays or adjustments does not fall under the high-risk category according to Article 5(2)(a) of the EU AI Act. This means that these systems are generally seen as low-risk, aligning with responsible AI use and requiring only standard operational practices and monitoring.', NULL, 'next', NULL, ''),
(790, 426, 'There could be a serious delay, making things more dangerous, but the police can still manage.', 0, 'Your answer of systems that pose minimal risks and allow for manageable delays or adjustments does not fall under the high-risk category according to Article 5(2)(a) of the EU AI Act. This means that these systems are generally seen as low-risk, aligning with responsible AI use and requiring only standard operational practices and monitoring.', NULL, 'next', NULL, ''),
(791, 427, 'Yes', 0, NULL, 'According to Article 5(3) of the EU AI Act, if the system is deployed due to an urgent situation, a formal request for authorization must be submitted within 24 hours. If the request is denied, the use of the system must be stopped immediately, and all data, results, and outputs must be discarded.', '430', NULL, ''),
(792, 427, 'No', 0, NULL, 'According to Article 5(3) of the EU AI Act, under normal circumstances for urgent situations, a proper request must be made before deployment. This request should include details on the duration, geographic scope, and individuals affected, ensuring that the competent authority can review and grant authorization accordingly.', '428', NULL, ''),
(793, 428, 'Clear oversight and accountability frameworks', 1, NULL, 'According to Article 27 of the EU AI Act, a fundamental rights impact assessment must be conducted to assess how the system affects human rights, privacy, and public safety. Additionally, the system should be registered in the EU database according to Article 49 to ensure compliance with EU regulations.                              ', 'next', NULL, ''),
(794, 428, 'Technological Solutions for Bias Mitigation', 1, NULL, 'According to Article 27 of the EU AI Act, a fundamental rights impact assessment must be conducted to assess how the system affects human rights, privacy, and public safety. Additionally, the system should be registered in the EU database according to Article 49 to ensure compliance with EU regulations.                              ', 'next', NULL, ''),
(795, 428, 'Limited deployment of biometric identification systems to defined situations', 1, NULL, 'According to Article 27 of the EU AI Act, a fundamental rights impact assessment must be conducted to assess how the system affects human rights, privacy, and public safety. Additionally, the system should be registered in the EU database according to Article 49 to ensure compliance with EU regulations.                              ', 'next', NULL, ''),
(796, 428, 'General Interpretation of Law Enforcement Purposes', 1, NULL, 'According to Article 27 of the EU AI Act, a fundamental rights impact assessment must be conducted to assess how the system affects human rights, privacy, and public safety. Additionally, the system should be registered in the EU database according to Article 49 to ensure compliance with EU regulations.                              ', 'next', NULL, ''),
(797, 428, 'Conducting a Fundamental Rights Impact Assessment (FRIA)', 0, NULL, 'This reflects a fundamental rights impact assessment as provided for in Article 27. It ensures that human rights are respected and that the system is registered in the EU database according to Article 49. Conducting this check shows responsible use of AI and compliance with EU regulations.', 'next', NULL, ''),
(798, 429, 'A member of law enforcement, with no additional review.', 1, NULL, 'According to Article 5(3) of the EU AI Act, prior authorization must be issued upon a reasoned request, meaning it includes details such as the period of time, geographic scope, and personal scope. This request must comply with the detailed rules of national law to ensure that the system’s deployment is lawful, with appropriate oversight and protection of individuals\' rights.', '431', NULL, ''),
(799, 429, 'A member of law enforcement, with review by an external authority.', 1, NULL, 'According to Article 5(3) of the EU AI Act, prior authorization must be issued upon a reasoned request, meaning it includes details such as the period of time, geographic scope, and personal scope. This request must comply with the detailed rules of national law to ensure that the system’s deployment is lawful, with appropriate oversight and protection of individuals\' rights.', '431', NULL, ''),
(800, 429, 'A national privacy or data protection office provided approval.', 0, NULL, 'According to Article 5(3) of the EU AI Act, prior authorization must be issued upon a reasoned request, meaning it includes details such as the period of time, geographic scope, and personal scope. This request must comply with the detailed rules of national law to ensure that the system’s deployment is lawful, with appropriate oversight and protection of individuals\' rights.', '431', NULL, ''),
(801, 429, 'No external authority gave permission.', 0, NULL, 'According to Article 5(3) of the EU AI Act, prior authorization must be issued upon a reasoned request, meaning it includes details such as the period of time, geographic scope, and personal scope. This request must comply with the detailed rules of national law to ensure that the system’s deployment is lawful, with appropriate oversight and protection of individuals\' rights.', '431', NULL, ''),
(802, 429, 'A judge or court in the country approved it.', 0, NULL, 'Your answer aligns with the requirements of Article 5(3) of the EU AI Act, where prior authorization should be issued following a reasoned request that includes the period of time, geographic scope, and personal scope. This ensures that the system is deployed in compliance with legal frameworks and with proper oversight to protect fundamental rights.', '431', NULL, ''),
(803, 429, 'An independent government authority with the power to make binding decisions approved it.', 0, NULL, 'Your answer aligns with the requirements of Article 5(3) of the EU AI Act, where prior authorization should be issued following a reasoned request that includes the period of time, geographic scope, and personal scope. This ensures that the system is deployed in compliance with legal frameworks and with proper oversight to protect fundamental rights.', '431', NULL, ''),
(804, 430, 'Requested within one month of urgent deployment', 1, NULL, 'According to Article 5(3) of the EU AI Act, If such authorization is rejected, the use shall be stopped with immediate effect, and all the data, as well as the results and outputs of that use, shall be immediately discarded and deleted. This could lead to immediate cessation and disposal of all related data if compliance is not met.', '431', NULL, ''),
(805, 430, 'Authorization not requested due to urgency of the situation', 1, NULL, 'According to Article 5(3) of the EU AI Act, If such authorization is rejected, the use shall be stopped with immediate effect, and all the data, as well as the results and outputs of that use, shall be immediately discarded and deleted. This could lead to immediate cessation and disposal of all related data if compliance is not met.', '431', NULL, ''),
(806, 430, 'Requested within one week of urgent deployment', 1, NULL, 'According to Article 5(3) of the EU AI Act, If such authorization is rejected, the use shall be stopped with immediate effect, and all the data, as well as the results and outputs of that use, shall be immediately discarded and deleted. This could lead to immediate cessation and disposal of all related data if compliance is not met.', '431', NULL, ''),
(807, 430, 'Requested within 3 days of urgent deployment', 1, NULL, 'According to Article 5(3) of the EU AI Act, If such authorization is rejected, the use shall be stopped with immediate effect, and all the data, as well as the results and outputs of that use, shall be immediately discarded and deleted. This could lead to immediate cessation and disposal of all related data if compliance is not met.', '431', NULL, ''),
(808, 430, 'Requested within 24 hours of urgent deployment', 0, NULL, 'According to Article 5(3) of the EU AI Act, If such authorization is rejected, the use shall be stopped with immediate effect, and all the data, as well as the results and outputs of that use, shall be immediately discarded and deleted.Ensuring timely or late authorization is aligned with the legal frameworks for public safety and data protection.', '431', NULL, ''),
(809, 431, 'During special or urgent circumstances, an explanation is provided with details about the time, location, and group involved.', 1, NULL, 'According to Article 5(3), the competent authority shall grant the authorization only if law enforcement provides objective evidence or clear indications presented to it, ensuring that the justification for deployment is not based solely on assumptions, projections, or urgency, but on concrete evidence of necessity and proportionality.', 'next', NULL, ''),
(810, 431, 'Predictions or forecasts explaining why the system is needed for a specific time, place, and group of people.', 1, NULL, 'According to Article 5(3), the competent authority shall grant the authorization only if law enforcement provides objective evidence or clear indications presented to it, ensuring that the justification for deployment is not based solely on assumptions, projections, or urgency, but on concrete evidence of necessity and proportionality.', 'next', NULL, ''),
(811, 431, 'General data explaining why about the  system\'s necessity, with details about the time, location, and group involved.', 1, NULL, 'According to Article 5(3), the competent authority shall grant the authorization only if law enforcement provides objective evidence or clear indications presented to it, ensuring that the justification for deployment is not based solely on assumptions, projections, or urgency, but on concrete evidence of necessity and proportionality.', 'next', NULL, ''),
(812, 431, 'Clear reasoning for why the system is required, tied to the definite period of time, the geographic scope, and the personal scope.', 0, NULL, 'According to Article 5(3), the competent authority shall grant the authorization only if law enforcement provides objective evidence or clear indications presented to it, demonstrating the necessity and proportionality of the system’s deployment.', 'next', NULL, ''),
(813, 431, 'Objective evidence showing the necessity of the system, with specific details about the definite period of time, the geographic scope, and the personal scope.', 0, NULL, 'According to Article 5(3), the competent authority shall grant the authorization only if law enforcement provides objective evidence or clear indications presented to it, demonstrating the necessity and proportionality of the system’s deployment.', 'next', NULL, ''),
(814, 432, 'Local government administrative office', 1, NULL, 'According to Article 5, Clause 5 of the EU AI Act, notifying non-relevant parties, such as local government administrative offices or law enforcement training organizations, may inadvertently disclose sensitive operational data. This could compromise compliance with the Act, as such data must not be included in notifications to protect privacy and security.', 'next', NULL, ''),
(815, 432, 'National security agency', 1, NULL, 'According to Article 5, Clause 5 of the EU AI Act, notifying non-relevant parties, such as local government administrative offices or law enforcement training organizations, may inadvertently disclose sensitive operational data. This could compromise compliance with the Act, as such data must not be included in notifications to protect privacy and security.', 'next', NULL, ''),
(816, 432, 'No authorities are notified', 1, NULL, 'According to Article 5, Clause 5 of the EU AI Act, notifying non-relevant parties, such as local government administrative offices or law enforcement training organizations, may inadvertently disclose sensitive operational data. This could compromise compliance with the Act, as such data must not be included in notifications to protect privacy and security.', 'next', NULL, ''),
(817, 432, 'Law enforcement training organizations', 1, NULL, 'According to Article 5, Clause 5 of the EU AI Act, notifying non-relevant parties, such as local government administrative offices or law enforcement training organizations, may inadvertently disclose sensitive operational data. This could compromise compliance with the Act, as such data must not be included in notifications to protect privacy and security.', 'next', NULL, ''),
(818, 432, 'The company’s internal compliance team', 1, NULL, 'According to Article 5, Clause 5 of the EU AI Act, notifying non-relevant parties, such as local government administrative offices or law enforcement training organizations, may inadvertently disclose sensitive operational data. This could compromise compliance with the Act, as such data must not be included in notifications to protect privacy and security.', 'next', NULL, ''),
(819, 432, 'The relevant market surveillance authority', 0, 'Your answer of notifying both the relevant market surveillance authority and the national data protection authority aligns with the requirements of Article 5(5) of the EU AI Act. Each use of a ‘real-time’ remote biometric identification system in publicly accessible spaces for law enforcement must be reported, following national rules, and include the necessary information while excluding sensitive operational data.', 'According to Article 5(5) of the EU AI Act, both the relevant market surveillance authority and the national data protection authority must be notified for each use of a ‘real-time’ remote biometric identification system in publicly accessible spaces for law enforcement purposes. Selecting only one authority does not meet the requirement as both authorities must be informed to ensure compliance with the regulations.', 'next', NULL, ''),
(820, 432, 'The national data protection authority', 0, 'Your answer of notifying both the relevant market surveillance authority and the national data protection authority aligns with the requirements of Article 5(5) of the EU AI Act. Each use of a ‘real-time’ remote biometric identification system in publicly accessible spaces for law enforcement must be reported, following national rules, and include the necessary information while excluding sensitive operational data.', 'According to Article 5(5) of the EU AI Act, both the relevant market surveillance authority and the national data protection authority must be notified for each use of a ‘real-time’ remote biometric identification system in publicly accessible spaces for law enforcement purposes. Selecting only one authority does not meet the requirement as both authorities must be informed to ensure compliance with the regulations.', 'next', NULL, ''),
(821, 433, 'Information about individuals under surveillance, including personal identifiers.', 1, NULL, 'According to Article 5(3), the competent authority shall grant the authorization only if law enforcement provides objective evidence or clear indications presented to it, ensuring that the justification for deployment is not based solely on assumptions, projections, or urgency, but on concrete evidence of necessity and proportionality.', 'next', NULL, ''),
(822, 433, 'Data related to the prevention of specific criminal activities.', 1, NULL, 'According to Article 5(3), the competent authority shall grant the authorization only if law enforcement provides objective evidence or clear indications presented to it, ensuring that the justification for deployment is not based solely on assumptions, projections, or urgency, but on concrete evidence of necessity and proportionality.', 'next', NULL, ''),
(823, 433, 'Details of ongoing criminal investigations.', 1, NULL, 'According to Article 5(3), the competent authority shall grant the authorization only if law enforcement provides objective evidence or clear indications presented to it, ensuring that the justification for deployment is not based solely on assumptions, projections, or urgency, but on concrete evidence of necessity and proportionality.', 'next', NULL, ''),
(824, 433, 'Information about law enforcement strategies for detecting and prosecuting criminal offenses.', 1, NULL, 'According to Article 5(3), the competent authority shall grant the authorization only if law enforcement provides objective evidence or clear indications presented to it, ensuring that the justification for deployment is not based solely on assumptions, projections, or urgency, but on concrete evidence of necessity and proportionality.', 'next', NULL, ''),
(825, 433, 'Details about the system’s purpose, including the scope and objectives of deployment.', 0, NULL, 'According to Article 5(3), the competent authority shall grant the authorization only if law enforcement provides objective evidence or clear indications presented to it, demonstrating the necessity and proportionality of the system’s deployment.', 'next', NULL, ''),
(826, 433, 'Data on the geographical location and timing of system deployment.', 0, NULL, 'According to Article 5(3), the competent authority shall grant the authorization only if law enforcement provides objective evidence or clear indications presented to it, demonstrating the necessity and proportionality of the system’s deployment.', 'next', NULL, ''),
(827, 433, 'Details on the technical specifications and functionality of the system.', 0, NULL, 'According to Article 5(3), the competent authority shall grant the authorization only if law enforcement provides objective evidence or clear indications presented to it, demonstrating the necessity and proportionality of the system’s deployment.', 'next', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard`
--

CREATE TABLE `dashboard` (
  `id` int(11) NOT NULL,
  `plan` varchar(255) NOT NULL,
  `first_time` varchar(255) NOT NULL,
  `low_risk_score` varchar(2555) NOT NULL,
  `high_risk_score` varchar(2555) NOT NULL,
  `very_risk_score` varchar(2555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dashboard`
--

INSERT INTO `dashboard` (`id`, `plan`, `first_time`, `low_risk_score`, `high_risk_score`, `very_risk_score`) VALUES
(1, 'basic', 'Begin assessment to evaluate your AI\nsystem\'s compliance!', 'Your AI system poses minimal risk related to prohibited practices under the EU AI Act. No immediate regulatory concerns, but periodic assessments are recommended to maintain compliance.\n ', 'Your AI system may involve elements that could raise compliance concerns under the EU AI Act. A detailed review of your AI system is recommended to ensure adherence to regulatory requirements.', 'Your AI system presents significant risks related to prohibited practices under the EU AI Act. Immediate mitigation is required to avoid non-compliance and potential penalties. '),
(2, 'professional', 'Begin assessment to evaluate your AI\nsystem\'s compliance!', 'Your AI system shows minimal risk related to prohibited practices under the EU AI Act. No immediate regulatory concerns; however, periodic assessments are recommended to ensure continued compliance. ', 'Your AI system may involve elements that could raise compliance concerns under the EU AI Act. A detailed review of your AI system is recommended to ensure adherence to regulatory requirements.', 'Your AI system presents significant risks related to prohibited practices under the EU AI Act. Immediate mitigation is required to avoid non-compliance and potential penalties. '),
(3, 'enterprise', 'Begin assessment to evaluate your AI\nsystem\'s compliance!', 'Your AI system shows minimal risk related to prohibited practices under the EU AI Act.No immediate regulatory concerns; however, periodic assessments are recommended to ensure continued compliance. ', 'Your AI system may involve elements that could raise compliance concerns under the EU AI Act. A detailed review of your AI system is recommended to ensure adherence to regulatory requirements.', 'Your AI system presents significant risks related to prohibited practices under the EU AI Act. Immediate mitigation is required to avoid non-compliance and potential penalties. ');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `plan` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `plan`, `created_at`) VALUES
(2, 'Is there a free trial?', 'Yes, the Basic Tier itself acts as a free plan, allowing users to explore EthiAI’s core functionalities.', 'Basic', '2025-02-10 02:21:32'),
(11, 'How many assessments can I take per month?', 'You can take one prohibited practice assessment per month with one retake in the Basic Tier. In the Professional Tier, you can take three assessments per month, with three retakes available across any assessments.', 'Basic', '2025-02-10 15:44:47'),
(12, 'How are gaps and recommendations tailored?', 'Recommendations are linked to specific EU AI Act articles, clauses, and recitals based on your system’s risk profile.', 'Basic', '2025-02-10 16:06:38'),
(14, 'How many assessments can I take per month?', 'You can take one prohibited practice assessment per month with one retake in the Basic Tier. In the Professional Tier, you can take three assessments per month, with three retakes available across any assessments.', 'Professional', '2025-02-10 16:07:41'),
(15, 'Are there any discounts available?', 'A flat 10% discount is available on annual subscriptions for the Professional Tier. For the Expert Tier, discounts range from 20-25%, but pricing and exact discounts vary based on requirements. Please contact the sales team for precise details and additional features', 'Professional', '2025-02-11 08:42:44'),
(16, 'How are gaps and recommendations tailored?', 'Recommendations are linked to specific EU AI Act articles, clauses, and recitals based on your system’s risk profile.', 'Professional', '2025-02-11 08:42:44'),
(19, 'How does EthiAI keep me informed about updates to the EU AI Act?', 'EthiAI closely monitors changes and updates to the EU AI Act. Whenever regulatory updates are introduced, we incorporate them into our platform and send notifications via email to ensure you stay informed. These updates are also reflected on our website, ensuring you have access to the latest compliance information.', 'Professional', '2025-02-11 08:42:44'),
(20, 'Is EthiAI GDPR-compliant?', 'Yes, EthiAI fully complies with GDPR regulations.', 'Professional', '2025-02-11 08:42:44'),
(22, 'Can I integrate EthiAI with my company\'s existing software?', 'Yes, integration is available for Expert-tier users through API or other supported methods.', 'Professional', '2025-02-11 08:42:44'),
(25, 'Are there any discounts available?', 'A flat 10% discount is available on annual subscriptions for the Professional Tier. For the Expert Tier, discounts range from 20-25%, but pricing and exact discounts vary based on requirements. Please contact the sales team for precise details and additional features', 'Basic', '2025-02-11 08:43:10'),
(26, 'Does EthiAI provide compliance certification?', 'Yes, certification is provided based on assessment results. It helps organizations demonstrate their alignment with EU AI Act requirements.', 'Basic', '2025-02-11 08:53:24'),
(27, 'How are compliance risk scores calculated?', 'Scores are determined based on EthiAI’s proprietary methodology aligned with the EU AI Act’s risk categories (e.g., prohibited practices like manipulation or exploitation).', 'Basic', '2025-02-11 08:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `generalquiz`
--

CREATE TABLE `generalquiz` (
  `id` int(11) NOT NULL,
  `quations` varchar(255) NOT NULL,
  `optiontype` enum('checkbox','radio') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `generalquiz`
--

INSERT INTO `generalquiz` (`id`, `quations`, `optiontype`) VALUES
(23, 'Which category best describes the industry focus of your organization or AI system?', 'radio'),
(24, 'How many employees does your organization have?', 'radio'),
(27, 'Which of the following best describes your involvement with AI?', 'radio'),
(28, 'Have you made any of the following changes/modifications to the AI system?', 'radio'),
(29, 'Do any of the following criteria apply to your AI system?', 'radio'),
(33, 'Is your AI model, trained with a large amount of data, capable of performing a wide range of distinct tasks that can be integrated into various downstream systems or applications.', 'radio'),
(34, 'Which of these apply to you?', 'radio'),
(35, 'Is your AI systems released under free and open-source licenses?', 'radio');

-- --------------------------------------------------------

--
-- Table structure for table `genralattempt`
--

CREATE TABLE `genralattempt` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quation_id` int(11) NOT NULL,
  `answer_id` varchar(10) NOT NULL,
  `comments` text DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genralattempt`
--

INSERT INTO `genralattempt` (`id`, `user_id`, `quation_id`, `answer_id`, `comments`, `date`) VALUES
(92, 13, 24, '23a', 'No comment provided', '2025-04-11 14:20:55'),
(93, 13, 27, '24a', 'No comment provided', '2025-04-11 14:20:57'),
(94, 13, 27, '27a', 'According to the EU AI Act, you are a Provider.', '2025-04-11 14:20:57'),
(95, 13, 28, '27a', 'According to the EU AI Act, you are a Provider.', '2025-04-11 14:20:59'),
(96, 13, 28, '28d', 'Retraining with new data may change risk levels or purpose, making compliance your responsibility under Article 25(1)(b)', '2025-04-11 14:20:59'),
(97, 13, 29, '29a', 'Your AI system is subjected to the EU AI Act.', '2025-04-11 14:21:01'),
(98, 13, 33, '29a', 'Your AI system is subjected to the EU AI Act.', '2025-04-11 14:21:03'),
(99, 13, 33, '33a', 'Your system is classified as a General Purpose AI model according to the EU AI Act', '2025-04-11 14:21:03'),
(100, 13, 34, '34f', 'Based on your responses, it appears that your AI system is subject to the EU AI Act and could benefit from our assessment.', '2025-04-11 14:21:29'),
(101, 14, 24, '23a', 'No comment provided', '2025-04-22 14:51:02'),
(102, 14, 27, '24a', 'No comment provided', '2025-04-22 14:51:03'),
(103, 14, 27, '27a', 'According to the EU AI Act, you are a Provider.', '2025-04-22 14:51:03'),
(104, 14, 28, '28a', 'Placing your name or trademark on the AI system may make you responsible for compliance as a provider under Article 25(1)(a) of the EU AI Act.', '2025-04-22 14:51:05'),
(105, 14, 28, '27a', 'According to the EU AI Act, you are a Provider.', '2025-04-22 14:51:05'),
(106, 14, 29, '28a', 'Placing your name or trademark on the AI system may make you responsible for compliance as a provider under Article 25(1)(a) of the EU AI Act.', '2025-04-22 14:51:08'),
(107, 14, 29, '29d', 'Your AI system could be in a high-risk or restricted category under the EU AI Act.', '2025-04-22 14:51:08'),
(108, 14, 33, '29d', 'Your AI system could be in a high-risk or restricted category under the EU AI Act.', '2025-04-22 14:51:10'),
(109, 14, 33, '33b', 'Your system is NOT classified as a General Purpose AI model according to the EU AI Act.', '2025-04-22 14:51:10'),
(110, 14, 35, '33b', 'Your system is NOT classified as a General Purpose AI model according to the EU AI Act.', '2025-04-22 14:51:12'),
(111, 16, 24, '23a', 'No comment provided', '2025-05-04 02:44:27'),
(112, 16, 27, '27a', 'According to the EU AI Act, you are a Provider.', '2025-05-04 02:44:29'),
(113, 16, 27, '27a', 'According to the EU AI Act, you are a Provider.', '2025-05-04 02:44:29'),
(114, 16, 28, '28a', 'Placing your name or trademark on the AI system may make you responsible for compliance as a provider under Article 25(1)(a) of the EU AI Act.', '2025-05-04 02:44:31'),
(115, 16, 28, '28a', 'Placing your name or trademark on the AI system may make you responsible for compliance as a provider under Article 25(1)(a) of the EU AI Act.', '2025-05-04 02:44:31'),
(116, 16, 29, '29a', 'Your AI system is subjected to the EU AI Act.', '2025-05-04 02:44:32'),
(117, 16, 29, '29a', 'Your AI system is subjected to the EU AI Act.', '2025-05-04 02:44:32'),
(118, 16, 33, '33b', 'Your system is NOT classified as a General Purpose AI model according to the EU AI Act.', '2025-05-04 02:44:33'),
(119, 16, 33, '33b', 'Your system is NOT classified as a General Purpose AI model according to the EU AI Act.', '2025-05-04 02:44:33'),
(120, 16, 34, '34a', 'Based on your responses, it appears that your AI system is excluded from the EU AI Act and may not require our assessment at this stage.', '2025-05-04 02:41:01'),
(121, 16, 34, '33a', 'Your system is classified as a General Purpose AI model according to the EU AI Act', '2025-05-04 02:41:01'),
(122, 16, 35, '33b', 'Your system is NOT classified as a General Purpose AI model according to the EU AI Act.', '2025-05-04 02:44:35'),
(123, 17, 24, '23a', 'No comment provided', '2025-05-04 03:15:50'),
(124, 17, 27, '24a', 'No comment provided', '2025-05-04 03:15:52'),
(125, 17, 27, '27c', 'According to the EU AI Act, you are a Distributor.', '2025-05-04 03:15:52'),
(126, 17, 28, '27c', 'According to the EU AI Act, you are a Distributor.', '2025-05-04 03:16:19'),
(127, 17, 28, '28a', 'Placing your name or trademark on the AI system may make you responsible for compliance as a provider under Article 25(1)(a) of the EU AI Act.', '2025-05-04 03:16:19'),
(128, 17, 29, '28a', 'Placing your name or trademark on the AI system may make you responsible for compliance as a provider under Article 25(1)(a) of the EU AI Act.', '2025-05-04 03:16:20'),
(129, 17, 29, '29a', 'Your AI system is subjected to the EU AI Act.', '2025-05-04 03:16:20'),
(130, 17, 33, '33b', 'Your system is NOT classified as a General Purpose AI model according to the EU AI Act.', '2025-05-04 03:16:24'),
(131, 17, 33, '29a', 'Your AI system is subjected to the EU AI Act.', '2025-05-04 03:16:24'),
(132, 17, 35, '33b', 'Your system is NOT classified as a General Purpose AI model according to the EU AI Act.', '2025-05-04 03:16:26'),
(133, 18, 24, '23a', 'No comment provided', '2025-05-04 03:18:19'),
(134, 18, 27, '24a', 'No comment provided', '2025-05-04 03:18:21'),
(135, 18, 27, '27a', 'According to the EU AI Act, you are a Provider.', '2025-05-04 03:18:21'),
(136, 18, 28, '27a', 'According to the EU AI Act, you are a Provider.', '2025-05-04 03:18:23'),
(137, 18, 28, '28a', 'Placing your name or trademark on the AI system may make you responsible for compliance as a provider under Article 25(1)(a) of the EU AI Act.', '2025-05-04 03:18:23'),
(138, 18, 29, '28a', 'Placing your name or trademark on the AI system may make you responsible for compliance as a provider under Article 25(1)(a) of the EU AI Act.', '2025-05-04 03:18:25'),
(139, 18, 29, '29a', 'Your AI system is subjected to the EU AI Act.', '2025-05-04 03:18:25'),
(140, 18, 33, '33a', 'Your system is classified as a General Purpose AI model according to the EU AI Act', '2025-05-04 03:18:27'),
(141, 18, 33, '29a', 'Your AI system is subjected to the EU AI Act.', '2025-05-04 03:18:27'),
(142, 18, 34, '34f', 'Based on your responses, it appears that your AI system is subject to the EU AI Act and could benefit from our assessment.', '2025-05-04 03:18:29'),
(143, 19, 24, '23a', 'No comment provided', '2025-05-04 05:12:50'),
(144, 19, 27, '24a', 'No comment provided', '2025-05-04 05:12:52'),
(145, 19, 27, '24a', 'No comment provided', '2025-05-04 05:12:52'),
(146, 19, 28, '28a', 'Placing your name or trademark on the AI system may make you responsible for compliance as a provider under Article 25(1)(a) of the EU AI Act.', '2025-05-04 05:12:54'),
(147, 19, 28, '28a', 'Placing your name or trademark on the AI system may make you responsible for compliance as a provider under Article 25(1)(a) of the EU AI Act.', '2025-05-04 05:12:54'),
(148, 19, 29, '29a', 'Your AI system is subjected to the EU AI Act.', '2025-05-04 05:12:55'),
(149, 19, 29, '29a', 'Your AI system is subjected to the EU AI Act.', '2025-05-04 05:12:55'),
(150, 19, 33, '33b', 'Your system is NOT classified as a General Purpose AI model according to the EU AI Act.', '2025-05-04 05:12:57'),
(151, 19, 33, '33b', 'Your system is NOT classified as a General Purpose AI model according to the EU AI Act.', '2025-05-04 05:12:57'),
(152, 19, 35, '33b', 'Your system is NOT classified as a General Purpose AI model according to the EU AI Act.', '2025-05-04 05:12:59'),
(153, 20, 24, '23a', 'No comment provided', '2025-05-06 02:00:57'),
(154, 20, 27, '24a', 'No comment provided', '2025-05-06 02:00:59'),
(155, 20, 27, '27a', 'According to the EU AI Act, you are a Provider.', '2025-05-06 02:00:59'),
(156, 20, 28, '27a', 'According to the EU AI Act, you are a Provider.', '2025-05-06 02:01:01'),
(157, 20, 28, '28a', 'Placing your name or trademark on the AI system may make you responsible for compliance as a provider under Article 25(1)(a) of the EU AI Act.', '2025-05-06 02:01:01'),
(158, 20, 29, '28a', 'Placing your name or trademark on the AI system may make you responsible for compliance as a provider under Article 25(1)(a) of the EU AI Act.', '2025-05-06 02:01:03'),
(159, 20, 29, '29a', 'Your AI system is subjected to the EU AI Act.', '2025-05-06 02:01:03'),
(160, 20, 33, '29a', 'Your AI system is subjected to the EU AI Act.', '2025-05-06 02:01:04'),
(161, 20, 33, '33b', 'Your system is NOT classified as a General Purpose AI model according to the EU AI Act.', '2025-05-06 02:01:04'),
(162, 20, 35, '33b', 'Your system is NOT classified as a General Purpose AI model according to the EU AI Act.', '2025-05-06 02:01:06');

-- --------------------------------------------------------

--
-- Table structure for table `genraloption`
--

CREATE TABLE `genraloption` (
  `id` int(11) NOT NULL,
  `quationid` varchar(255) NOT NULL,
  `optionnumber` varchar(255) NOT NULL,
  `goption` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `skiping` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genraloption`
--

INSERT INTO `genraloption` (`id`, `quationid`, `optionnumber`, `goption`, `comment`, `skiping`) VALUES
(299, '27', '27a', 'I develop or offer an AI system for others to use, either as a software product or service, under my own name either for free or for a fee.', 'According to the EU AI Act, you are a Provider.', '28'),
(300, '27', '27b', 'I use an AI system in my  business or organization activities, by incorporating a third-party AI tool into my organization’s operations (excluding personal use).', 'According to the EU AI Act, you are a Deployer.', '28'),
(301, '27', '27c', 'I make an AI system or use an AI system as a feature available in the EU that was originally created elsewhere.', 'According to the EU AI Act, you are a Distributor.', '28'),
(302, '27', '27d', 'I bring an AI system from a non-EU country and make it available for use within the EU.', 'According to the EU AI Act, you are an Importer.', '28'),
(303, '27', '27e', 'I create a product that relies on AI and offer it in the EU.', 'According to the EU AI Act, you are a Product Manufacturer.', '28'),
(304, '27', '27f', 'I am based in the EU and represent a company outside the EU that makes or sells AI products, to ensure they meet EU requirements.', 'According to the EU AI Act, you are an Autorized Representative.', '28'),
(413, '28', '28a', 'Rebranded your AI system (just changing the name or appearance without altering its core functions) and marketed it under your brand or a different name', 'Placing your name or trademark on the AI system may make you responsible for compliance as a provider under Article 25(1)(a) of the EU AI Act.', '29'),
(414, '28', '28b', 'Used the AI system in a new or different field from what it was originally made for or intended function', 'Changing the AI system’s intended use may reclassify it as high-risk, making you responsible for compliance under Article 25(1)(c) of the EU AI Act.', '29'),
(415, '28', '28c', 'Integrated the AI system with another tool, software, or AI model, which changed how it interacts with users or processes information.', ' Integration that alters system behavior may be a substantial modification, requiring compliance under Article 25(1)(b).', '29'),
(416, '28', '28d', 'Trained the AI system with new data that wasn’t part of the original setup', 'Retraining with new data may change risk levels or purpose, making compliance your responsibility under Article 25(1)(b)', '29'),
(417, '28', '28e', 'Added new features or functions, enabling the AI system to perform tasks it couldn\'t previously do.', 'Expanding system capabilities could impact compliance, requiring you to meet provider obligations under Article 25(1)(b).', '29'),
(418, '28', '28f', 'None of the above', 'No changes mean your role remains unchanged, but regular compliance checks are recommended.', '29'),
(419, '23', '23a', ' Advertising, Marketing, and Media', '', '24'),
(420, '23', '23b', ' Technology, Software, and Virtual Experiences', '', '24'),
(421, '23', '23c', 'Consulting', '', '24'),
(422, '23', '23d', ' Finance and Insurance', '', '24'),
(423, '23', '23e', ' Healthcare and Wellness', '', '24'),
(424, '23', '23f', ' Education and Learning', '', '24'),
(425, '23', '23g', ' Public Safety, Surveillance, and Law Enforcement', '', '24'),
(426, '23', '23h', ' Public Services, Governance, and Infrastructure', '', '24'),
(427, '23', '23i', ' Human Resources and Employment', '', '24'),
(428, '23', '23j', ' Retail, Events, and Entertainment', '', '24'),
(429, '23', '23k', ' Transport', '', '24'),
(430, '23', '23l', ' Energy, Electricity, Smart Grids', '', '24'),
(431, '23', '23m', 'Military ,Defense, National Security', '', '24'),
(432, '23', '23n', ' Production and manufacturing', '', '24'),
(449, '24', '24a', '1-10 employees', '', '27'),
(450, '24', '24b', '11-50 employees', '', '27'),
(451, '24', '24c', '51-200 employees', '', '27'),
(452, '24', '24d', '201-500 employees', '', '27'),
(453, '24', '24e', '501-1,000 employees', '', '27'),
(454, '24', '24f', '1,001+ employees', '', '27'),
(531, '29', '29a', 'The AI system is being placed on the market or put into service within the European Union, regardless of where your organization is based.', 'Your AI system is subjected to the EU AI Act.', '30'),
(532, '29', '29b', 'The outputs of the AI system are intended to be used within the European Union.', 'Your AI system is subjected to the EU AI Act.', '30'),
(533, '29', '29c', 'The AI system operates in a non-EU country but is subject to EU Member State laws under public international law.', 'Your AI system may be subject to the EU AI Act.', '30'),
(534, '29', '29d', 'The AI system falls under the category of prohibited systems (as defined in Article 5 of the EU AI Act) and is used by a party established within the European Union.', 'Your AI system could be in a high-risk or restricted category under the EU AI Act.', '30'),
(535, '29', '29e', 'None of the above', '', 'out'),
(554, '33', '33a', 'Yes ', 'Your system is classified as a General Purpose AI model according to the EU AI Act', '34'),
(555, '33', '33b', 'No', 'Your system is NOT classified as a General Purpose AI model according to the EU AI Act.', '35'),
(556, '34', '34a', 'AI systems developed by public authorities in non-EU countries or international organizations.', 'Based on your responses, it appears that your AI system is excluded from the EU AI Act and may not require our assessment at this stage.', 'out'),
(557, '34', '34b', 'AI systems used exclusively for military, defense, or national security purposes.', 'Based on your responses, it appears that your AI system is excluded from the EU AI Act and may not require our assessment at this stage.', 'out'),
(558, '34', '34c', 'AI systems developed solely for scientific research and development purposes.', 'Based on your responses, it appears that your AI system is excluded from the EU AI Act and may not require our assessment at this stage.', 'out'),
(559, '34', '34d', 'AI systems used by individuals for personal or non-commercial purposes.', 'Based on your responses, it appears that your AI system is excluded from the EU AI Act and may not require our assessment at this stage.', 'out'),
(560, '34', '34e', 'AI systems in the development and testing phase before being placed on the market or put into service.', 'Based on your responses, it appears that your AI system is excluded from the EU AI Act and may not require our assessment at this stage.', 'out'),
(561, '34', '34f', 'None of the above', 'Based on your responses, it appears that your AI system is subject to the EU AI Act and could benefit from our assessment.', 'submit'),
(564, '35', '35a', 'Yes ', 'As long as your AI system has not been placed on the market or put into service by a provider, it is likely excluded from the scope of the EU AI Act and not subject to regulatory obligations at this stage.', 'out'),
(565, '35', '35b', 'No', '', 'submit');

-- --------------------------------------------------------

--
-- Table structure for table `practices`
--

CREATE TABLE `practices` (
  `id` int(11) NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `discription` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `practices`
--

INSERT INTO `practices` (`id`, `tittle`, `discription`, `date`) VALUES
(15, 'Facial Recognition', '(e) the placing on the market, the putting into service for this specific purpose, or the use of AI systems that create or expand facial recognition databases through the untargeted scraping of facial images from the internet or CCTV footage;', '2025-01-29 12:20:07'),
(16, 'Manipulative AI Techniques', '(a) the placing on the market, the putting into service or the use of an AI system that deploys subliminal techniques beyond a person’s consciousness or purposefully manipulative or deceptive techniques, with the objective, or the effect of materially dis', '2025-01-29 12:40:12'),
(17, 'Exploitation Of Vulnerabilities', 'b) the placing on the market, the putting into service or the use of an AI system that exploits any of the vulnerabilities of a natural person or a specific group of persons due to their age, disability or a specific social or economic situation, with the', '2025-01-29 12:40:33'),
(20, 'Biometric Identification', '(h) the use of ‘real-time’ remote biometric identification systems in publicly accessible spaces for the purposes of law enforcement, unless and in so far as such use is strictly necessary for one of the following objectives:\n(i) the targeted search for s', '2025-01-29 12:42:58'),
(21, 'Social Scoring ', '(c) the placing on the market, the putting into service or the use of AI systems for the evaluation or classification of natural persons or groups of persons over a certain period of time based on their social behaviour or known, inferred or predicted per', '2025-01-29 12:46:56'),
(22, 'Criminal Risk Profiling', '(d) the placing on the market, the putting into service for this specific purpose, or the use of an AI system for making risk assessments of natural persons in order to assess or predict the risk of a natural person committing a criminal offence, based so', '2025-01-29 12:47:17'),
(23, 'Emotion Recognition', '(f) the placing on the market, the putting into service for this specific purpose, or the use of AI systems to infer emotions of a natural person in the areas of workplace and education institutions, except where the use of the AI system is intended to be', '2025-01-29 12:47:39'),
(25, 'Biometric Categorization', '(g) the placing on the market, the putting into service for this specific purpose, or the use of biometric categorisation systems that categorise individually natural persons based on their biometric data to deduce or infer their race, political opinions,', '2025-02-17 08:41:36');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `compliance_requirement` text DEFAULT NULL,
  `practice` varchar(255) DEFAULT NULL,
  `risk_level` varchar(50) DEFAULT NULL,
  `penalty` text DEFAULT NULL,
  `question_type` varchar(50) DEFAULT NULL,
  `practiceheading` varchar(255) DEFAULT NULL,
  `q` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `quiz_id`, `text`, `compliance_requirement`, `practice`, `risk_level`, `penalty`, `question_type`, `practiceheading`, `q`, `date`) VALUES
(358, 156, 'Does your AI system guess or figure out things about people, like their personality, behavior, likes and dislikes, or social traits (like their role in a group)?', NULL, 'Assessment - Social Scoring', NULL, NULL, 'Radio button', 'Assessment - Social Scoring', '', '2025-02-05 08:48:26'),
(359, 156, ' Does your AI system rate or score a person or group of  persons to produce a count, points, results or a score?', NULL, 'Assessment - Social Scoring', NULL, NULL, 'Radio button', 'Assessment - Social Scoring', '', '2025-02-05 08:48:26'),
(360, 156, 'How does your organization make sure end-users stay in control and understand what’s happening when they use your AI system? (Choose all that apply)', NULL, 'Assessment - Social Scoring', NULL, NULL, 'Check Box', 'Assessment - Social Scoring', '', '2025-02-05 08:48:26'),
(361, 156, ' What is your organizations\'s policy for using AI to evaluate a person/group of people?', NULL, 'Assessment - Social Scoring', NULL, NULL, 'Radio button', 'Assessment - Social Scoring', '', '2025-02-05 08:48:26'),
(362, 154, 'How does your AI system guide what people/groups of people do or decide? (Choose all that apply)', NULL, 'Assessment - Manipulative AI Techniques', NULL, NULL, 'Check Box', 'Assessment - Manipulative AI Techniques', '', '2025-02-05 08:49:56'),
(363, 154, 'How does your AI system show things like sounds, pictures, or videos to end users?', NULL, 'Assessment - Manipulative AI Techniques', NULL, NULL, 'Radio button', 'Assessment - Manipulative AI Techniques', '', '2025-02-05 08:49:56'),
(364, 154, 'Does your organization check how its decisions might affect people/groups of people? (Choose the best option)', NULL, 'Assessment - Manipulative AI Techniques', NULL, NULL, 'Radio button', 'Assessment - Manipulative AI Techniques', '', '2025-02-05 08:49:56'),
(365, 154, 'Does the AI system explain how it collects and users  data?', NULL, 'Assessment - Manipulative AI Techniques', NULL, NULL, 'Radio button', 'Assessment - Manipulative AI Techniques', '', '2025-02-05 08:49:56'),
(366, 154, 'Select your organization process for end-users to opt out of AI system data collection or use.', NULL, 'Assessment - Manipulative AI Techniques', NULL, NULL, 'Radio button', 'Assessment - Manipulative AI Techniques', '', '2025-02-05 08:49:57'),
(367, 154, 'Which of these actions shows your company is being responsible when using AI? (Choose all that you think apply.)', NULL, 'Assessment - Manipulative AI Techniques', NULL, NULL, 'Check Box', 'Assessment - Manipulative AI Techniques', '', '2025-02-05 08:49:57'),
(368, 154, 'Which of these practices does your AI system use?', NULL, 'Assessment - Manipulative AI Techniques', NULL, NULL, 'Check Box', 'Assessment - Manipulative AI Techniques', '', '2025-02-05 08:49:57'),
(369, 157, 'Does your AI system try to figure out things about people like how they behave, what they like, or their personality, either as individuals or in groups?', NULL, 'Assessment - Criminal Risk Profiling', NULL, NULL, 'Radio button', 'Assessment - Criminal Risk Profiling', '0', '2025-02-05 08:55:47'),
(370, 157, 'Does your AI system help with making decisions, studying patterns, or guessing outcomes that are applicable to the criminal justice system (like courts, police, or prisons)?', NULL, 'Assessment - Criminal Risk Profiling', NULL, NULL, 'Radio button', 'Assessment - Criminal Risk Profiling', '0', '2025-02-05 08:55:47'),
(371, 157, 'Does your AI system help to make decisions about crimes or criminals?', NULL, 'Assessment - Criminal Risk Profiling', NULL, NULL, 'Radio button', 'Assessment - Criminal Risk Profiling', '0', '2025-02-05 08:55:47'),
(372, 157, 'What type of data does your AI system primarily rely on for making assessments? (Select all that apply)', NULL, 'Assessment - Criminal Risk Profiling', NULL, NULL, 'Check Box', 'Assessment - Criminal Risk Profiling', '', '2025-02-05 08:55:47'),
(373, 155, 'Does your AI system use information about people\'s age, disabilities, or how much money they have?', NULL, 'Assessment - Exploitation of Vulnerabilities', NULL, NULL, 'Radio button', 'Assessment - Exploitation of Vulnerabilities', '', '2025-02-05 08:58:10'),
(374, 155, 'How does your AI system affect what people/groups of people do or decide? (Choose all that apply)', NULL, 'Assessment - Exploitation of Vulnerabilities', NULL, NULL, 'Check Box', 'Assessment - Exploitation of Vulnerabilities', '0', '2025-02-05 08:58:10'),
(375, 155, 'Does your organization check how its decisions might affect people/groups of people? (Choose the best option)', NULL, 'Assessment - Exploitation of Vulnerabilities', NULL, NULL, 'Radio button', 'Assessment - Exploitation of Vulnerabilities', '0', '2025-02-05 08:58:10'),
(376, 155, 'How does your AI system customize outputs for end-users from different backgrounds (like age, income, or disabilities)?', NULL, 'Assessment - Exploitation of Vulnerabilities', NULL, NULL, 'Radio button', 'Assessment - Exploitation of Vulnerabilities', '0', '2025-02-05 08:58:10'),
(377, 155, 'How does your AI system check for and fix problems/issues that happen because of its suggestions or decisions?', NULL, 'Assessment - Exploitation of Vulnerabilities', NULL, NULL, 'Radio button', 'Assessment - Exploitation of Vulnerabilities', '0', '2025-02-05 08:58:10'),
(383, 158, 'Choose the type of data your AI system primarily analyzes or infers from individuals: ', NULL, 'Assessment - Facial Recognition', NULL, NULL, 'Radio button', 'Assessment - Facial Recognition', '0', '2025-02-05 09:16:52'),
(384, 158, 'What is the source of your data for your AI System?', NULL, 'Assessment - Facial Recognition', NULL, NULL, 'Radio button', 'Assessment - Facial Recognition', '0', '2025-02-05 09:16:52'),
(385, 158, 'What is the primary method you use to collect facial images? Please select the most relevant option:', NULL, 'Assessment - Facial Recognition', NULL, NULL, 'Radio button', 'Assessment - Facial Recognition', '0', '2025-02-05 09:16:52'),
(386, 158, 'How does your AI system obtain facial images from external sources (e.g. internet or CCTV)?', NULL, 'Assessment - Facial Recognition', NULL, NULL, 'Radio button', 'Assessment - Facial Recognition', '0', '2025-02-05 09:16:52'),
(387, 158, 'Does you AI system contribute to building or creating facial databases?', NULL, 'Assessment - Facial Recognition', NULL, NULL, 'Radio button', 'Assessment - Facial Recognition', '0', '2025-02-05 09:16:52'),
(388, 158, 'How does your AI system check for and fix problems/issues that happen because of its suggestions or decisions?', NULL, 'Assessment - Facial Recognition', NULL, NULL, 'Radio button', 'Assessment - Facial Recognition', '0', '2025-02-05 09:16:52'),
(389, 159, 'Does your AI system identify, infer or assess data related to any of the following aspects of an individual or group? (select all that apply )', NULL, 'Assessment - Emotion Recognition', NULL, NULL, 'Check Box', 'Assessment - Emotion Recognition', '', '2025-02-05 09:29:10'),
(390, 159, 'Is your AI system used in any of the following environments? (Select all that apply)', NULL, 'Assessment - Emotion Recognition', NULL, NULL, 'Check Box', 'Assessment - Emotion Recognition', '', '2025-02-05 09:29:10'),
(391, 159, 'What is your AI system mainly used for? Pick the most important, applicable reason.', NULL, 'Assessment - Emotion Recognition', NULL, NULL, 'Radio button', 'Assessment - Emotion Recognition', '', '2025-02-05 09:29:10'),
(392, 159, 'Where does your AI system collect data?', NULL, 'Assessment - Emotion Recognition', NULL, NULL, 'Radio button', 'Assessment - Emotion Recognition', '', '2025-02-05 09:29:10'),
(393, 159, 'Which of the following best describes information that can be used to recognize or identify a person through unique traits or actions?', NULL, 'Assessment - Emotion Recognition', NULL, NULL, 'Radio button', 'Assessment - Emotion Recognition', '', '2025-02-05 09:29:10'),
(394, 159, 'Does your AI system include mechanisms to prevent the inference of sensitive characteristics from biometric data?', NULL, 'Assessment - Emotion Recognition', NULL, NULL, 'Radio button', 'Assessment - Emotion Recognition', '0', '2025-02-05 09:29:10'),
(397, 161, 'Where is your AI system most commonly used or applied?', NULL, 'Assessment - Biometric Identification', NULL, NULL, 'Radio button', 'Assessment - Biometric Identification', '', '2025-02-05 10:26:19'),
(398, 161, 'Does your AI system identify individuals without their active involvement, typically at a distance?', NULL, 'Assessment - Biometric Identification', NULL, NULL, 'Radio button', 'Assessment - Biometric Identification', '', '2025-02-05 10:26:19'),
(399, 161, 'When does the system collect and use information about people?', NULL, 'Assessment - Biometric Identification', NULL, NULL, 'Radio button', 'Assessment - Biometric Identification', '', '2025-02-05 10:26:20'),
(400, 161, 'What is the main goal or purpose of your AI system\'s work? ( Criminals here refer to a person who has committed a crime or has been legally convicted of a crime)', NULL, 'Assessment - Biometric Identification', NULL, NULL, 'Radio button', 'Assessment - Biometric Identification', '0', '2025-02-05 10:26:20'),
(418, 163, 'Which of the following best describes information that can be used to recognize or identify a person through unique traits or actions?', NULL, 'Assessment - Biometric Categorization', NULL, NULL, 'Radio button', 'Assessment - Biometric Categorization', '0', '2025-02-27 12:23:04'),
(419, 163, 'What is the primary function of your AI system?', NULL, 'Assessment - Biometric Categorization', NULL, NULL, 'Radio button', 'Assessment - Biometric Categorization', '0', '2025-02-27 12:23:04'),
(420, 163, 'Does your AI system categorize or group data to infer or deduce any of the following aspects of an individual or group? (select all that apply )', NULL, 'Assessment - Biometric Categorization', NULL, NULL, 'Check Box', 'Assessment - Biometric Categorization', '', '2025-02-27 12:23:04'),
(421, 163, 'What is the main goal or purpose of your AI system\'s work? ( Criminals here refer to a person who has committed a crime or has been legally convicted of a crime)', NULL, 'Assessment - Biometric Categorization', NULL, NULL, 'Radio button', 'Assessment - Biometric Categorization', '', '2025-02-27 12:23:04'),
(422, 163, 'How are the biometric datasets, such as images, based on biometric data acquired?', NULL, 'Assessment - Biometric Categorization', NULL, NULL, 'Radio button', 'Assessment - Biometric Categorization', '', '2025-02-27 12:23:04'),
(423, 161, 'Which among the following best describes the role of your organization?', NULL, 'Assessment - Biometric Identification', NULL, NULL, 'Radio button', 'Assessment - Biometric Identification', '0', '2025-03-26 08:29:41'),
(424, 161, 'Is your AI system used for any of the following purposes?', NULL, 'Assessment - Biometric Identification', NULL, NULL, 'Radio button', 'Assessment - Biometric Identification', '0', '2025-03-26 08:29:41'),
(425, 161, ' Select all the potential outcomes from the use of your biometric AI system.', NULL, 'Assessment - Biometric Identification', NULL, NULL, 'Check Box', 'Assessment - Biometric Identification', '', '2025-03-26 08:29:41'),
(426, 161, 'What could happen if your biometric AI system is not used for its intended purpose? ', NULL, 'Assessment - Biometric Identification', NULL, NULL, 'Radio button', 'Assessment - Biometric Identification', '', '2025-03-26 08:34:50'),
(427, 161, 'Was the deployment of biometric identification system initiated in response to an urgent situation?', NULL, 'Assessment - Biometric Identification', NULL, NULL, 'Radio button', 'Assessment - Biometric Identification', '0', '2025-03-26 08:34:50'),
(428, 161, 'Select all the ethical practices you follow  before deploying  biometric Identification AI system?', NULL, 'Assessment - Biometric Identification', NULL, NULL, 'Check Box', 'Assessment - Biometric Identification', '0', '2025-03-26 08:50:17'),
(429, 161, 'Who gives permission to use a biometric identification AI system before it is deployed?', NULL, 'Assessment - Biometric Identification', NULL, NULL, 'Radio button', 'Assessment - Biometric Identification', '0', '2025-03-26 08:50:17'),
(430, 161, 'When was authorization requested after urgent deployment?', NULL, 'Assessment - Biometric Identification', NULL, NULL, 'Radio button', 'Assessment - Biometric Identification', '0', '2025-03-26 08:50:17'),
(431, 161, 'Select all documentations provided when requesting authorisation to use the biometric AI system.', NULL, 'Assessment - Biometric Identification', NULL, NULL, 'Check Box', 'Assessment - Biometric Identification', '', '2025-03-26 08:50:17'),
(432, 161, 'Who is notified about using biometric AI systems after deployment? (Choose all that apply)', NULL, 'Assessment - Biometric Identification', NULL, NULL, 'Check Box', 'Assessment - Biometric Identification', '', '2025-03-26 08:50:17'),
(433, 161, 'What type of data is included in the notifications to the relevant authorities?', NULL, 'Assessment - Biometric Identification', NULL, NULL, 'Check Box', 'Assessment - Biometric Identification', '', '2025-03-26 08:50:17');

-- --------------------------------------------------------

--
-- Table structure for table `quizhistory`
--

CREATE TABLE `quizhistory` (
  `id` int(11) NOT NULL,
  `user_id` int(255) NOT NULL,
  `question_id` varchar(255) NOT NULL,
  `answer_ids` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `attempt_count` int(255) NOT NULL,
  `quiz_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quizhistory`
--

INSERT INTO `quizhistory` (`id`, `user_id`, `question_id`, `answer_ids`, `created_at`, `attempt_count`, `quiz_id`) VALUES
(120, 13, '358', '455', '2025-04-11 19:52:03', 0, 'Assessment - Social Scoring'),
(121, 13, '359', '458', '2025-04-11 19:52:03', 0, 'Assessment - Social Scoring'),
(122, 13, '360', '459,463,464', '2025-04-11 19:52:03', 0, 'Assessment - Social Scoring'),
(123, 13, '361', '468,467', '2025-04-11 19:52:03', 0, 'Assessment - Social Scoring');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `practice` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `date` varchar(255) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `title`, `practice`, `description`, `date`) VALUES
(154, 'Assessment - Manipulative AI Techniques', '16', 'This assessment evaluates whether an AI system employs Manipulative AI Techniques, as defined under the EU AI Act. The results will help identify potential compliance risks and provide recommendations to mitigate them.', '2025-02-05 08:10:47'),
(155, 'Assessment - Exploitation of Vulnerabilities', '17', 'This assessment evaluates whether an AI system exploits the vulnerabilities of individuals or groups, as defined under the EU AI Act. The results will help identify potential compliance risks and provide recommendations to mitigate them.', '2025-02-05 08:12:11'),
(156, 'Assessment - Social Scoring', '21', 'This assessment evaluates whether an AI system engages in Social Scoring practices, as defined under the EU AI Act. The results will help identify potential compliance risks and provide mitigation recommendations.', '2025-02-05 08:12:36'),
(157, 'Assessment - Criminal Risk Profiling', '22', 'This assessment evaluates whether an AI system engages in Criminal Risk Profiling, defined under the EU AI Act. The results will help identify potential compliance risks and provide mitigation recommendations.', '2025-02-05 08:13:20'),
(158, 'Assessment - Facial Recognition', '15', 'This assessment evaluates whether an AI system employs Facial Recognition technology, as defined under the EU AI Act. The results will help identify potential compliance risks and provide recommendations to mitigate them', '2025-02-05 08:14:00'),
(159, 'Assessment - Emotion Recognition', '23', 'This assessment evaluates whether an AI system utilizes Emotion Recognition, as defined under the EU AI Act. The results will help identify potential compliance risks and provide recommendations to mitigate them.', '2025-02-05 08:14:21'),
(161, 'Assessment - Biometric Identification', '20', 'This assessment evaluates whether an AI system employs Biometric Identification techniques, as defined under the EU AI Act. The results will help identify potential compliance risks and provide mitigation recommendations.', '2025-02-05 08:15:22'),
(163, 'Assessment - Biometric Categorization', '25', 'This assessment is to check whether AI systems are using biometric categorization, which is prohibited under EU AI Act', '2025-02-27 11:57:59');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_attempts`
--

CREATE TABLE `quiz_attempts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_ids` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `attempt_count` int(11) DEFAULT 0,
  `quiz_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_attempts`
--

INSERT INTO `quiz_attempts` (`id`, `user_id`, `question_id`, `answer_ids`, `created_at`, `attempt_count`, `quiz_id`) VALUES
(78, 13, 358, '455', '2025-04-11 14:22:03', 0, 'Assessment - Social Scoring'),
(79, 13, 359, '458', '2025-04-11 14:22:03', 0, 'Assessment - Social Scoring'),
(80, 13, 361, '468,467', '2025-04-11 14:22:03', 0, 'Assessment - Social Scoring'),
(81, 13, 360, '459,463,464', '2025-04-11 14:22:03', 0, 'Assessment - Social Scoring');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `otp` int(255) DEFAULT NULL,
  `otp_verify` enum('yes','no') NOT NULL DEFAULT 'no',
  `organization` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `verify` enum('Yes','No') NOT NULL DEFAULT 'No',
  `password` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `device_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `name`, `email`, `image`, `otp`, `otp_verify`, `organization`, `phone_number`, `gender`, `verify`, `password`, `date`, `device_id`) VALUES
(13, 'Rajat Chaudhary', 'rc8988293@gmail.com', '', 681896, 'yes', 'Developer', '', 'Male', 'Yes', 'f925916e2754e5e03f75dd58a5733251', '2025-04-11 19:50:03', '4f5a7d3fe1b64aee60795a0dd86a31c0'),
(14, 'test kumar', 'rajat8894964@gmail.com', '', 360872, 'yes', 'Developer', '', 'Male', 'Yes', 'f925916e2754e5e03f75dd58a5733251', '2025-04-22 20:20:31', '4f5a7d3fe1b64aee60795a0dd86a31c0'),
(20, 'Rajat Chaudhary', 'developerzone89@gmail.com', '', 298534, 'yes', 'Developer', '', 'Male', 'Yes', 'c4ca4238a0b923820dcc509a6f75849b', '2025-05-06 07:29:54', '4f5a7d3fe1b64aee60795a0dd86a31c0');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `stripe_session_id` varchar(255) NOT NULL,
  `amount_paid` varchar(255) NOT NULL,
  `days` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `selectedquiz` varchar(255) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`id`, `user_id`, `stripe_session_id`, `amount_paid`, `days`, `type`, `selectedquiz`, `start_date`, `end_date`) VALUES
(12, 'rc8988293@gmail.com', 'cs_test_a1senRT3sntVopMmOFzD0L1JO4UPCC3DbZqnry4fec1atsd3daS8UweHOO', '41.6', 30, 'PRO-month', '22', '2025-04-11', '2025-05-11'),
(13, 'rajat8894964@gmail.com', '', '', 30, 'Basic', '15', '2025-04-22', '2025-05-22'),
(20, 'developerzone89@gmail.com', 'cs_test_a1hXu0xgjUqnVEg3AY8TDJFfznm77hMFpABUCyQUydEgUQ0TcxMmRjH0x2', '149', 365, 'Basic', '15', '2025-05-06', '2026-05-06');

-- --------------------------------------------------------

--
-- Table structure for table `support_features`
--

CREATE TABLE `support_features` (
  `id` int(11) NOT NULL,
  `feature` varchar(255) DEFAULT NULL,
  `subheading` varchar(255) DEFAULT NULL,
  `plan` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `link` varchar(255) NOT NULL,
  `btnname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `support_features`
--

INSERT INTO `support_features` (`id`, `feature`, `subheading`, `plan`, `created_at`, `link`, `btnname`) VALUES
(1, 'yes', '1 Free Consultation', 'Basic', '2025-02-10 02:15:27', 'https://calendly.com/jayasri-a-getriskey/1-1-consultation-call', 'Book now'),
(11, 'yes', 'Self-Onboarding (Guides & Tutorials)', 'Basic', '2025-02-10 13:51:12', 'https://ethiai.io/contact-us-2/', 'Try now'),
(19, 'yes', 'One  Consultation per Report', 'Professional', '2025-02-10 16:07:41', 'https://calendly.com/jayasri-a-getriskey/1-1-consultation-call', 'Chat with us'),
(20, 'yes', 'Self  Onboarding Guides and Tutorials ', 'Professional', '2025-02-10 16:07:41', 'https://ethiai.io/contact-us-2/', 'Try Now'),
(21, 'yes', 'Video Guided Onboarding', 'Professional', '2025-02-10 16:07:41', 'https://ethiai.io/contact-us-2/', 'Watch Now'),
(28, 'no', 'No Video-Guided Onboarding', 'Basic', '2025-02-15 06:07:59', '', ''),
(29, 'no', 'No Personalized Assistance', 'Professional', '2025-02-17 08:19:51', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `support_main`
--

CREATE TABLE `support_main` (
  `id` int(11) NOT NULL,
  `main_heading` varchar(255) DEFAULT NULL,
  `plan` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `support_main`
--

INSERT INTO `support_main` (`id`, `main_heading`, `plan`, `created_at`) VALUES
(1, 'Enjoy AI Compliance insights with limited support and upgrade for more benefits ', 'Basic', '2025-02-10 02:12:01'),
(2, 'Access Premium support for better AI compliance guidance', 'Professional', '2025-02-10 16:07:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_user`
--
ALTER TABLE `active_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `dashboard`
--
ALTER TABLE `dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generalquiz`
--
ALTER TABLE `generalquiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genralattempt`
--
ALTER TABLE `genralattempt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genraloption`
--
ALTER TABLE `genraloption`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `practices`
--
ALTER TABLE `practices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `quizhistory`
--
ALTER TABLE `quizhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `fk_quiz` (`quiz_id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_features`
--
ALTER TABLE `support_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_main`
--
ALTER TABLE `support_main`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active_user`
--
ALTER TABLE `active_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=828;

--
-- AUTO_INCREMENT for table `dashboard`
--
ALTER TABLE `dashboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `generalquiz`
--
ALTER TABLE `generalquiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `genralattempt`
--
ALTER TABLE `genralattempt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `genraloption`
--
ALTER TABLE `genraloption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=566;

--
-- AUTO_INCREMENT for table `practices`
--
ALTER TABLE `practices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=434;

--
-- AUTO_INCREMENT for table `quizhistory`
--
ALTER TABLE `quizhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `support_features`
--
ALTER TABLE `support_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `support_main`
--
ALTER TABLE `support_main`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  ADD CONSTRAINT `quiz_attempts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `signup` (`id`),
  ADD CONSTRAINT `quiz_attempts_ibfk_3` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
