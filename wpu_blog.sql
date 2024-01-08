-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Des 2023 pada 12.01
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpu_blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2023-12-21 08:00:55', '2023-12-21 08:00:55'),
(2, 'Personal', 'personal', '2023-12-21 08:00:55', '2023-12-21 08:00:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_16_035939_create_posts_table', 1),
(6, '2023_12_21_021643_create_categories_table', 1),
(7, '2023_12_22_115601_create_books', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Cum est illum culpa et aut vel.', 'accusamus-officiis-soluta-consequatur', 'Suscipit corrupti quam nemo voluptas placeat. Perspiciatis laboriosam quo tempore. Ut sit beatae saepe soluta. Quibusdam nihil rem quis labore cupiditate voluptatem.', 'Autem non inventore nihil minima enim illum. Perspiciatis alias nisi exercitationem placeat nihil. Numquam dolor error molestiae qui optio. Distinctio ratione aliquam dicta quos non perferendis. Expedita natus quisquam repellendus placeat minima et nesciunt quidem. Animi incidunt saepe recusandae sit soluta totam.', NULL, '2023-12-21 08:00:55', '2023-12-21 08:00:55'),
(2, 1, 1, 'Id tempore quia quia voluptate sit.', 'nihil-id-ratione-et-voluptatem-iste-id', 'Omnis iure ratione facere sint dignissimos est. Quidem rerum enim amet qui. Sit et odio ea sint quos mollitia. Inventore perspiciatis eligendi soluta quidem repellendus natus quo.', 'Perferendis reiciendis a voluptatum unde. Repellat fugit et dolorem eos. Repudiandae aliquid aliquid aut repellendus molestiae reprehenderit aut. Doloremque nihil non temporibus doloremque accusamus. Blanditiis aut odit aut voluptatem. Unde aut consequuntur velit est.', NULL, '2023-12-21 08:00:55', '2023-12-21 08:00:55'),
(3, 2, 1, 'In aut deserunt autem quod voluptas ipsa et.', 'delectus-dolores-eligendi-doloremque', 'Ab delectus doloremque suscipit in. Est assumenda officia optio est facere quidem. Facilis soluta porro eos quo aut alias ad. Commodi animi provident autem voluptatem quo voluptas.', 'Dolorem fuga qui aut dolorem. Rerum et neque dolorum aliquam modi quod. Voluptas nulla quia culpa consectetur eligendi in. Modi fuga nisi voluptatem et quam autem. Ipsam ut vitae voluptatem aut magni repellendus eos. Laudantium dolor voluptatum est optio. Vel magnam ea et optio totam. Repudiandae magni facilis itaque unde odio distinctio ipsam animi. Aut qui architecto quam mollitia aperiam. Rerum sequi quaerat inventore reiciendis similique. In quas libero tempore soluta. Fugit sapiente impedit iure error eaque aliquam.', NULL, '2023-12-21 08:00:55', '2023-12-21 08:00:55'),
(4, 2, 2, 'Placeat voluptas maiores fuga corrupti.', 'accusantium-assumenda-in-et-quae', 'Libero dicta laborum sint ut. Doloremque ullam et laudantium et ipsam tempore autem. Voluptates illum sunt aut incidunt deleniti id.', 'Quia dolor eos sint quibusdam rerum ipsa. A nihil delectus ullam deleniti. Necessitatibus esse nulla qui qui. Consequatur repellat quae voluptatibus voluptatum eos cumque. Saepe qui corrupti iure. Libero dicta sint aliquid. Saepe inventore reiciendis distinctio perspiciatis sit ea et quis. Iure quia nesciunt amet numquam accusantium ut.', NULL, '2023-12-21 08:00:55', '2023-12-21 08:00:55'),
(5, 2, 2, 'Aut numquam et harum autem laboriosam at atque aut.', 'quas-fuga-culpa-est-qui', 'Enim aut doloremque qui voluptatum. A dolor nihil molestiae et ut architecto. Non nihil voluptatem quis nihil dolorum. Enim omnis quas repellat recusandae.', 'Ut qui quod incidunt. Quod minima voluptatibus commodi est deleniti non dolor et. Autem voluptatem et impedit totam. Fugiat molestiae dolore non ut nemo tenetur dolorem. Fugiat doloribus quidem magnam pariatur nisi magnam expedita. Incidunt tempora enim ut. Ab optio explicabo vel aspernatur et ex culpa.', NULL, '2023-12-21 08:00:55', '2023-12-21 08:00:55'),
(6, 1, 2, 'Labore deserunt repellendus voluptatibus totam corporis dolores.', 'ipsa-enim-et-eum-illum-quia-non', 'Illo quisquam voluptas autem consequatur voluptatem maxime ipsum animi. Inventore debitis dolores fugiat sunt assumenda voluptatem. Amet qui earum quaerat quia laboriosam at est. Autem voluptatibus accusamus magni vitae voluptas quaerat.', 'Qui vel ut et ea. Aut voluptatem at ducimus. Corrupti asperiores eum quibusdam nihil. Debitis ex voluptas est similique ut est. Ex aut tempore iusto dignissimos. Assumenda sit provident quia eum sequi molestiae. Saepe itaque illum blanditiis culpa voluptatem. Quod magnam nostrum maxime similique odit corporis. Dolores modi dignissimos praesentium sunt optio suscipit. Quas sit tenetur ut et.', NULL, '2023-12-21 08:00:55', '2023-12-21 08:00:55'),
(7, 2, 2, 'Repudiandae ipsam ut sed et consequatur tempore quae architecto.', 'aspernatur-voluptates-quo-tempore-iste', 'Nam placeat nobis deserunt voluptates sequi sit. Sit voluptatibus quia tempore maiores rem. Numquam consequatur omnis et tempore asperiores qui.', 'Quo eveniet nesciunt eligendi id. Temporibus aliquid eveniet aliquid omnis. Nobis soluta eos magni suscipit dolorem cupiditate. Quia animi eos sed. Delectus beatae quod hic aut saepe laborum necessitatibus. Et eaque et repellat. Nihil debitis sequi error pariatur non voluptas.', NULL, '2023-12-21 08:00:55', '2023-12-21 08:00:55'),
(8, 2, 2, 'Distinctio ea et iusto facilis sunt.', 'distinctio-et-facilis-blanditiis-laboriosam-ut-rem', 'Voluptatem ullam molestiae non veritatis eum. Doloribus sit accusantium nihil eum quo dolorem dolorum. Et earum exercitationem ut laborum. Et voluptatem molestiae reprehenderit non iusto rem. Nesciunt qui esse consequatur non animi in totam.', 'Quia voluptas id aut omnis inventore. Possimus tenetur ratione cumque fuga consequatur labore sint. Vel dolor vel et harum. Et quisquam voluptate qui nemo numquam aliquid unde fugiat. Earum odio sit voluptatum dolorem ut hic dolores culpa. Possimus minus aliquid enim. Vel exercitationem tempora ut iusto dolor quo. Illum rerum eos eos vel veniam. Dolorum explicabo omnis optio atque expedita mollitia.', NULL, '2023-12-21 08:00:55', '2023-12-21 08:00:55'),
(9, 2, 1, 'Eligendi beatae harum voluptatum illum vel sint eum odio.', 'ab-rerum-deleniti-sit-enim-vel-omnis', 'Natus optio consequatur accusantium quod vel occaecati eos. Harum iusto ducimus aliquid quidem hic. Harum quis et et. Qui alias dolor voluptatem.', 'Eos sint nam autem quod veritatis. Expedita laudantium est illum fuga aperiam magni tenetur. Laudantium omnis esse ratione dolore iusto laudantium quibusdam. Id voluptate dignissimos nisi. Non architecto unde quia voluptas et ut. Sed similique sint rerum repellendus perspiciatis sunt quia. Deleniti repudiandae adipisci nesciunt quisquam quas illum et debitis. Alias odio qui modi necessitatibus voluptas est vel. Consequatur beatae quam est ipsam dignissimos nesciunt. Iste sunt aut illo et aut similique nostrum exercitationem. Quia vel molestias aliquid earum ut culpa at.', NULL, '2023-12-21 08:00:55', '2023-12-21 08:00:55'),
(10, 2, 2, 'Illum corporis molestiae itaque dignissimos corporis suscipit.', 'sit-quia-sit-vel-quo-non', 'Consequatur quaerat aperiam quisquam eum quo. Sint mollitia praesentium aspernatur sit omnis soluta dicta ut. Distinctio exercitationem omnis eum omnis cupiditate. Harum rerum quisquam sit rerum dolor ad consequatur in.', 'Aliquam occaecati voluptas quis harum molestias voluptatem et. Corporis harum in molestias et consequuntur. Est placeat quos non consequatur officia ut excepturi. Animi dolores reprehenderit quibusdam eligendi dolorum eligendi. Blanditiis dolores voluptatem quia quasi et harum. Expedita tempore voluptatum velit. Error iure dolor sit. Cum beatae odio consectetur. Quis enim ut omnis autem aut debitis ut aspernatur. Praesentium est omnis dolorem perferendis.', NULL, '2023-12-21 08:00:55', '2023-12-21 08:00:55'),
(11, 2, 1, 'Vitae deleniti iure sed animi nihil nostrum ut voluptatum.', 'excepturi-excepturi-nulla-blanditiis-aut-perspiciatis-non-numquam', 'Molestiae et error nemo dolores ut quia praesentium. In ut totam sed et est. Et maiores et architecto fugit voluptas eveniet possimus voluptas.', 'Et perspiciatis doloremque doloribus culpa facilis magnam sed culpa. Quaerat dignissimos nihil ut ut ut. Sed quo aspernatur eveniet rem animi et nulla. Dicta maiores corrupti sed blanditiis non inventore consequatur. Qui quo vel nesciunt recusandae natus quos est illum. Harum facere laudantium voluptatem eligendi beatae voluptas aspernatur repellendus. Voluptate ducimus omnis itaque est voluptatem omnis. Deleniti consequatur nobis et minima et. Non molestiae neque vitae a in qui. Odio et animi aut quia quod amet. Consequuntur quo expedita perspiciatis ut occaecati qui. Accusantium voluptas accusantium blanditiis fugiat laborum vel non. Dignissimos velit aut et et voluptas distinctio.', NULL, '2023-12-21 08:00:55', '2023-12-21 08:00:55'),
(12, 1, 2, 'Sapiente amet aut.', 'eligendi-assumenda-aut-assumenda-et-recusandae', 'Enim magnam magnam asperiores numquam iure. Ducimus dolorum impedit deleniti vitae. Excepturi voluptatem nihil quasi voluptates eos.', 'Et dicta optio saepe molestias. Aspernatur et repellat amet delectus sed voluptas. Voluptates eveniet et vitae repellat. Non vel qui delectus est. Magni incidunt non nesciunt at ipsam enim non soluta. Et adipisci assumenda voluptas quia adipisci.', NULL, '2023-12-21 08:00:55', '2023-12-21 08:00:55'),
(13, 1, 2, 'Delectus eum veritatis amet omnis iste minima.', 'libero-qui-vel-atque-et-et-est-ut-nobis', 'Qui eos et totam enim. Dolor est ut optio dicta. Excepturi omnis fugit sint dolorum voluptas aut.', 'Omnis laudantium aut voluptas. Modi quisquam laborum a labore quo alias. Recusandae aliquam asperiores a est qui vero. Nihil provident dolores quis non.', NULL, '2023-12-21 08:00:55', '2023-12-21 08:00:55'),
(14, 1, 3, 'Praesentium molestiae eveniet ratione hic.', 'ullam-eos-est-maxime-quia-omnis-nemo-optio-fugiat', 'Est est maiores iure non facilis illo unde eius. Mollitia eum unde debitis necessitatibus. Eum aut doloribus odio eligendi dolorem animi.', 'Debitis recusandae dolore ipsa autem consectetur blanditiis provident. Sit ea et et tempore accusamus. Maiores harum ab quidem. Dolorem distinctio molestiae doloribus earum soluta itaque et. Necessitatibus voluptatem rem vero excepturi. Dolor neque quo fuga porro. Incidunt maxime id quae sunt pariatur est doloremque. Et veniam tempora nesciunt corporis eum. Sed doloremque officia dolor ut in aut repellat. Ipsa deserunt veniam perspiciatis atque sunt aspernatur. Rerum iusto quaerat voluptatem aut. Alias quam blanditiis quia ullam et qui voluptates.', NULL, '2023-12-21 08:00:55', '2023-12-21 08:00:55'),
(15, 2, 2, 'Ut nam repellat a quia.', 'nostrum-in-voluptatibus-tenetur-est-qui-ut-necessitatibus', 'Est distinctio vero ut eum ipsa dicta non. Adipisci dolorem magnam quas accusamus amet et sapiente. Sit voluptatem qui ex deleniti. Sunt tempora aut rem est et repellendus repellendus.', 'Deleniti eius pariatur aut. Vel possimus eos eum adipisci. Tenetur deleniti non a animi nihil. Iste incidunt vel ut autem adipisci. Eveniet voluptatem harum sunt consequuntur. Nam ab fugiat voluptatem autem. Et velit non doloribus. Dolores voluptatem expedita molestias officia et sit omnis atque. Autem voluptas corporis natus est. Sed sit corrupti minima nostrum cumque consequatur. Ullam perferendis sed amet. Sint reprehenderit eum odit et. Minima nihil corporis neque soluta.', NULL, '2023-12-21 08:00:55', '2023-12-21 08:00:55'),
(16, 2, 2, 'Et hic et exercitationem ut exercitationem.', 'inventore-nostrum-ipsum-omnis-autem', 'Fugiat dolorum saepe est quia. Nisi ex corporis ad aut tempora odit. Similique expedita sed dignissimos aut. Commodi alias libero aut repellendus laboriosam doloribus et iure.', 'Repellat expedita esse ut eligendi assumenda quo. Accusantium molestiae provident voluptas. Ad accusamus in quis ut et. Quod labore et minima a omnis. Et qui ut dolores ut. Eos quas voluptatem natus nulla et esse. Inventore magnam nobis qui reprehenderit blanditiis cupiditate quaerat. Ullam velit quia at ea. Aut ut excepturi cum excepturi dignissimos quia reprehenderit quod. Quos quis aut aliquid numquam quia dolor assumenda.', NULL, '2023-12-21 08:00:55', '2023-12-21 08:00:55'),
(17, 1, 3, 'Neque sint doloremque est corporis.', 'distinctio-quia-consequatur-nostrum-expedita-provident-asperiores-in', 'Iusto rem sunt earum ipsa repellendus eum. Incidunt delectus eum in sit corrupti. Dignissimos laudantium et molestiae beatae et et.', 'Qui ex aut consequatur libero. Fugiat laboriosam qui at incidunt laborum laboriosam. Amet quaerat eos aut consequatur incidunt laboriosam. Aut officiis et dicta ut. Est ut sunt ut.', NULL, '2023-12-21 08:00:55', '2023-12-21 08:00:55'),
(18, 2, 2, 'Sit dolor temporibus consequatur.', 'dolorem-et-voluptate-dolore-et-aut-itaque-unde-repellendus', 'Blanditiis itaque accusamus a doloribus maxime non non. Reiciendis tenetur et sint tempore ea ut libero possimus. Reprehenderit ea totam necessitatibus commodi officiis culpa praesentium blanditiis.', 'Nihil rem omnis in quo voluptatem qui. Repellendus ipsum illo ut odit quos voluptatum. Sit unde a possimus aut officia. Itaque similique facere nihil unde sit aspernatur. Quasi ea tenetur magni vel ut quos. Rerum deserunt aut sed dolores inventore. Ut nihil ad dolore. Facere sit consequatur porro nostrum est. Omnis culpa id incidunt. Rerum modi mollitia fugiat et facilis commodi. Qui dolorem excepturi quia aut et blanditiis molestiae. Libero vitae non et sed ea.', NULL, '2023-12-21 08:00:55', '2023-12-21 08:00:55'),
(19, 2, 1, 'Sed voluptatem sed harum excepturi mollitia quas.', 'laudantium-est-dolore-veniam-at-ut', 'Beatae et ut vero quibusdam nesciunt delectus. Consectetur et molestiae exercitationem. Et est quos minus quidem eos. Ullam incidunt est et facilis dolorem.', 'Vel quod non ratione voluptatum perspiciatis doloribus consequuntur repellendus. Dignissimos commodi rerum dolores quod. Aut eum eos unde quod neque. Dolor dignissimos perferendis officia et porro autem quia dolorem. Ipsam perferendis architecto molestiae. Perferendis dicta minima iure et veniam sapiente est est. Doloremque necessitatibus et ipsam et.', NULL, '2023-12-21 08:00:55', '2023-12-21 08:00:55'),
(20, 2, 1, 'Officia atque.', 'velit-debitis-sed-enim-ut-expedita-provident', 'Perspiciatis hic reiciendis magnam est rerum qui at. Accusamus culpa ea cumque nemo laboriosam ut sunt. Eos ut tenetur voluptas eaque.', 'Nisi odio ut omnis quibusdam. Ea voluptatum dignissimos dicta iure. Illo sunt quisquam culpa consectetur sed. Non odio quo corporis aliquid rerum. Et quia unde qui dolorem dolorem voluptas.', NULL, '2023-12-21 08:00:55', '2023-12-21 08:00:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_books`
--

CREATE TABLE `tb_books` (
  `id_book` bigint(20) UNSIGNED NOT NULL,
  `author` varchar(255) NOT NULL,
  `nama_book` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_books`
--

INSERT INTO `tb_books` (`id_book`, `author`, `nama_book`, `created_at`, `updated_at`) VALUES
(1, 'Raihan S.I', 'Software Enginering', NULL, NULL),
(2, 'Dr. Raihan', 'Laravel 8', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kamila Handayani', 'amansur12', 'ayu.prakasa@example.net', '2023-12-21 08:00:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rLCKwVw8gX', '2023-12-21 08:00:54', '2023-12-22 00:28:04'),
(2, 'Pandu Nashiruddin M.Kom.', 'kusmawati.iriana', 'alestari@example.org', '2023-12-21 08:00:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'w81caa2jMU', '2023-12-21 08:00:54', '2023-12-21 08:00:54'),
(3, 'Rahmi Susanti', 'gmandasari', 'cahyono.melani@example.net', '2023-12-21 08:00:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kMmVO0hsth', '2023-12-21 08:00:54', '2023-12-21 08:00:54'),
(8, 'Raihan', 'raihan', 'raihanafadilah.18@gmail.com', NULL, '$2y$10$a08GhA58TnWzaV89UvE.VesGFA2sC8P6V7s.oDzIkw2z3hxLobOlq', NULL, '2023-12-21 08:37:09', '2023-12-24 19:42:09');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `tb_books`
--
ALTER TABLE `tb_books`
  ADD PRIMARY KEY (`id_book`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `tb_books`
--
ALTER TABLE `tb_books`
  MODIFY `id_book` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
