-- --------------------------------------------------
-- AUTO DATABASE BACKUP
-- Database : gaji
-- Dibuat   : 2026-04-10 05:34:01
-- --------------------------------------------------

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for absensi_rekaps
-- ----------------------------
DROP TABLE IF EXISTS `absensi_rekaps`;
CREATE TABLE `absensi_rekaps` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `karyawan_id` bigint(20) unsigned DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `periode_awal` date NOT NULL,
  `periode_akhir` date NOT NULL,
  `sj` decimal(5,2) NOT NULL DEFAULT 0.00,
  `sabtu` decimal(5,2) NOT NULL DEFAULT 0.00,
  `minggu` decimal(5,2) NOT NULL DEFAULT 0.00,
  `hari_besar` decimal(5,2) NOT NULL DEFAULT 0.00,
  `tidak_masuk` decimal(5,2) NOT NULL DEFAULT 0.00,
  `sisa_jam` decimal(5,2) NOT NULL DEFAULT 0.00,
  `sisa_sj` decimal(5,2) NOT NULL DEFAULT 0.00,
  `sisa_sabtu` decimal(5,2) NOT NULL DEFAULT 0.00,
  `sisa_minggu` decimal(5,2) NOT NULL DEFAULT 0.00,
  `sisa_hari_besar` decimal(5,2) NOT NULL DEFAULT 0.00,
  `total_jam` decimal(5,2) NOT NULL DEFAULT 0.00,
  `jumlah_hari` decimal(5,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `absensi_rekaps_karyawan_id_periode_awal_periode_akhir_unique` (`karyawan_id`,`periode_awal`,`periode_akhir`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of absensi_rekaps
-- ----------------------------
INSERT INTO `absensi_rekaps` (`id`, `karyawan_id`, `nama`, `periode_awal`, `periode_akhir`, `sj`, `sabtu`, `minggu`, `hari_besar`, `tidak_masuk`, `sisa_jam`, `sisa_sj`, `sisa_sabtu`, `sisa_minggu`, `sisa_hari_besar`, `total_jam`, `jumlah_hari`, `created_at`, `updated_at`) VALUES
(2, 1, 'sutiandi wijaya', '2026-03-26', '2026-03-30', '0.00', '0.00', '0.00', '0.00', '0.00', '24.00', '24.00', '0.00', '0.00', '0.00', '0.00', '0.50', '2026-04-02 14:15:09', '2026-04-02 14:15:09');

-- ----------------------------
-- Table structure for absensis
-- ----------------------------
DROP TABLE IF EXISTS `absensis`;
CREATE TABLE `absensis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `lat` decimal(10,7) DEFAULT NULL,
  `lng` decimal(10,7) DEFAULT NULL,
  `accuracy` double DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `masuk_pagi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat_masuk_pagi` decimal(10,7) DEFAULT NULL,
  `lng_masuk_pagi` decimal(10,7) DEFAULT NULL,
  `accuracy_masuk_pagi` double DEFAULT NULL,
  `address_masuk_pagi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_path_masuk_pagi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keluar_siang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat_keluar_siang` decimal(10,7) DEFAULT NULL,
  `lng_keluar_siang` decimal(10,7) DEFAULT NULL,
  `accuracy_keluar_siang` double DEFAULT NULL,
  `address_keluar_siang` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_path_keluar_siang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `masuk_siang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat_masuk_siang` decimal(10,7) DEFAULT NULL,
  `lng_masuk_siang` decimal(10,7) DEFAULT NULL,
  `accuracy_masuk_siang` double DEFAULT NULL,
  `address_masuk_siang` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_path_masuk_siang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pulang_kerja` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat_pulang_kerja` decimal(10,7) DEFAULT NULL,
  `lng_pulang_kerja` decimal(10,7) DEFAULT NULL,
  `accuracy_pulang_kerja` double DEFAULT NULL,
  `address_pulang_kerja` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_path_pulang_kerja` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `masuk_lembur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat_masuk_lembur` decimal(10,7) DEFAULT NULL,
  `lng_masuk_lembur` decimal(10,7) DEFAULT NULL,
  `accuracy_masuk_lembur` double DEFAULT NULL,
  `address_masuk_lembur` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_path_masuk_lembur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pulang_lembur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat_pulang_lembur` decimal(10,7) DEFAULT NULL,
  `lng_pulang_lembur` decimal(10,7) DEFAULT NULL,
  `accuracy_pulang_lembur` double DEFAULT NULL,
  `address_pulang_lembur` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_path_pulang_lembur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `is_declined` tinyint(1) NOT NULL DEFAULT 0,
  `declined_reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `declined_by` bigint(20) unsigned DEFAULT NULL,
  `declined_at` timestamp NULL DEFAULT NULL,
  `approved_by` bigint(20) unsigned DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `absensis_approved_by_foreign` (`approved_by`) USING BTREE,
  CONSTRAINT `absensis_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of absensis
-- ----------------------------
INSERT INTO `absensis` (`id`, `name`, `tanggal`, `lat`, `lng`, `accuracy`, `address`, `photo_path`, `masuk_pagi`, `lat_masuk_pagi`, `lng_masuk_pagi`, `accuracy_masuk_pagi`, `address_masuk_pagi`, `photo_path_masuk_pagi`, `keluar_siang`, `lat_keluar_siang`, `lng_keluar_siang`, `accuracy_keluar_siang`, `address_keluar_siang`, `photo_path_keluar_siang`, `masuk_siang`, `lat_masuk_siang`, `lng_masuk_siang`, `accuracy_masuk_siang`, `address_masuk_siang`, `photo_path_masuk_siang`, `pulang_kerja`, `lat_pulang_kerja`, `lng_pulang_kerja`, `accuracy_pulang_kerja`, `address_pulang_kerja`, `photo_path_pulang_kerja`, `masuk_lembur`, `lat_masuk_lembur`, `lng_masuk_lembur`, `accuracy_masuk_lembur`, `address_masuk_lembur`, `photo_path_masuk_lembur`, `pulang_lembur`, `lat_pulang_lembur`, `lng_pulang_lembur`, `accuracy_pulang_lembur`, `address_pulang_lembur`, `photo_path_pulang_lembur`, `created_at`, `updated_at`, `is_approved`, `is_declined`, `declined_reason`, `declined_by`, `declined_at`, `approved_by`, `approved_at`) VALUES
(1, 'sutiandi wijaya', '2026-03-26', '-6.2350113', '106.5228538', 16.642403076901, NULL, 'absensi/112/2026-03-26_masuk_pagi_1774515025.jpg', '15:50:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-26 15:50:25', '2026-03-26 16:17:11', 1, 0, NULL, NULL, NULL, 1, '2026-03-26 16:17:11'),
(2, 'sutiandi wijaya', '2026-03-27', '-6.3281811', '106.4582278', 20.920000076294, NULL, 'absensi/112/2026-03-27_keluar_siang_1774549017.jpg', '01:15:45', NULL, NULL, NULL, NULL, NULL, '01:16:57', NULL, NULL, NULL, NULL, NULL, '01:59:00', '-6.3280227', '106.4578498', 20, 'Tenjo', 'absensi/112/2026-03-27_masuk_siang_1774551540.jpg', '02:04:26', '-6.3280228', '106.4578498', 20, 'Tenjo', 'absensi/112/2026-03-27_pulang_kerja_1774551866.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-27 01:15:45', '2026-04-02 14:10:08', 1, 0, NULL, NULL, NULL, 1, '2026-04-02 14:10:08'),
(3, 'sutiandi wijaya', '2026-03-30', NULL, NULL, NULL, NULL, NULL, '21:38:19', '-6.3280279', '106.4578236', 22.5, 'Tenjo', 'absensi/112/2026-03-30_masuk_pagi_1774881499.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-30 21:38:19', '2026-04-02 14:10:13', 1, 0, NULL, NULL, NULL, 1, '2026-04-02 14:10:13'),
(5, 'sutiandi wijaya', '2026-04-02', NULL, NULL, NULL, NULL, NULL, '16:25:54', '-6.2350121', '106.5228534', 13.159415161481, 'Cikupa', 'absensi/112/2026-04-02_masuk_pagi_1775121954.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-04-02 16:25:54', '2026-04-02 16:28:12', 0, 1, 'skem', 1, '2026-04-02 16:28:12', NULL, NULL);

-- ----------------------------
-- Table structure for activity_log
-- ----------------------------
DROP TABLE IF EXISTS `activity_log`;
CREATE TABLE `activity_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) unsigned DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) unsigned DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `batch_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `subject` (`subject_type`,`subject_id`) USING BTREE,
  KEY `causer` (`causer_type`,`causer_id`) USING BTREE,
  KEY `activity_log_log_name_index` (`log_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=554 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of activity_log
-- ----------------------------
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'Resource', 'Role Created', 'App\\Models\\Role', 'Created', 1, NULL, NULL, '{\"guard_name\":\"web\",\"name\":\"super_admin\",\"updated_at\":\"2026-03-25 00:01:20\",\"created_at\":\"2026-03-25 00:01:20\",\"id\":1}', NULL, '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(2, 'Resource', 'Role Created', 'App\\Models\\Role', 'Created', 4, NULL, NULL, '{\"guard_name\":\"web\",\"name\":\"karyawan\",\"level\":1,\"parent_id\":null,\"updated_at\":\"2026-03-25 00:01:22\",\"created_at\":\"2026-03-25 00:01:22\",\"id\":4}', NULL, '2026-03-25 00:01:22', '2026-03-25 00:01:22'),
(3, 'Resource', 'Role Created', 'App\\Models\\Role', 'Created', 5, NULL, NULL, '{\"guard_name\":\"web\",\"name\":\"staff_administrasi\",\"level\":2,\"parent_id\":4,\"updated_at\":\"2026-03-25 00:01:22\",\"created_at\":\"2026-03-25 00:01:22\",\"id\":5}', NULL, '2026-03-25 00:01:22', '2026-03-25 00:01:22'),
(4, 'Resource', 'Role Created', 'App\\Models\\Role', 'Created', 6, NULL, NULL, '{\"guard_name\":\"web\",\"name\":\"staff_kasbon\",\"level\":2,\"parent_id\":4,\"updated_at\":\"2026-03-25 00:01:22\",\"created_at\":\"2026-03-25 00:01:22\",\"id\":6}', NULL, '2026-03-25 00:01:22', '2026-03-25 00:01:22'),
(5, 'Resource', 'Role Created', 'App\\Models\\Role', 'Created', 7, NULL, NULL, '{\"guard_name\":\"web\",\"name\":\"direktur_operasional\",\"level\":3,\"parent_id\":null,\"updated_at\":\"2026-03-25 00:01:22\",\"created_at\":\"2026-03-25 00:01:22\",\"id\":7}', NULL, '2026-03-25 00:01:22', '2026-03-25 00:01:22'),
(6, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 1, NULL, NULL, '{\"email\":\"admin@admin.com\",\"name\":\"Admin\",\"updated_at\":\"2026-03-25 00:01:22\",\"created_at\":\"2026-03-25 00:01:22\",\"id\":1}', NULL, '2026-03-25 00:01:22', '2026-03-25 00:01:22'),
(7, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 2, NULL, NULL, '{\"email\":\"staffadmin@demo.com\",\"name\":\"Staff Administrasi\",\"updated_at\":\"2026-03-25 00:01:22\",\"created_at\":\"2026-03-25 00:01:22\",\"id\":2}', NULL, '2026-03-25 00:01:22', '2026-03-25 00:01:22'),
(8, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 3, NULL, NULL, '{\"email\":\"kasbon@demo.com\",\"name\":\"Staff Kasbon\",\"updated_at\":\"2026-03-25 00:01:22\",\"created_at\":\"2026-03-25 00:01:22\",\"id\":3}', NULL, '2026-03-25 00:01:22', '2026-03-25 00:01:22'),
(9, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 4, NULL, NULL, '{\"email\":\"direktur@demo.com\",\"name\":\"Direktur Operasional\",\"updated_at\":\"2026-03-25 00:01:22\",\"created_at\":\"2026-03-25 00:01:22\",\"id\":4}', NULL, '2026-03-25 00:01:22', '2026-03-25 00:01:22'),
(10, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 5, NULL, NULL, '{\"email\":\"karyawan@demo.com\",\"name\":\"Karyawan\",\"updated_at\":\"2026-03-25 00:01:22\",\"created_at\":\"2026-03-25 00:01:22\",\"id\":5}', NULL, '2026-03-25 00:01:22', '2026-03-25 00:01:22'),
(11, 'Access', 'Admin logged in', NULL, 'Login', NULL, 'App\\Models\\User', 1, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/146.0.0.0 Safari\\/537.36\"}', NULL, '2026-03-25 00:02:17', '2026-03-25 00:02:17'),
(12, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 6, NULL, NULL, '{\"name\":\"sutiandi wijaya\",\"email\":\"112@absensi.test\",\"updated_at\":\"2026-03-25 00:11:47\",\"created_at\":\"2026-03-25 00:11:47\",\"id\":6}', NULL, '2026-03-25 00:11:47', '2026-03-25 00:11:47'),
(13, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 6, NULL, NULL, '{\"karyawan_id\":1}', NULL, '2026-03-25 00:11:47', '2026-03-25 00:11:47'),
(14, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 1, NULL, NULL, '{\"user_id\":6,\"updated_at\":\"2026-03-25 00:11:47\"}', NULL, '2026-03-25 00:11:47', '2026-03-25 00:11:47'),
(15, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 7, NULL, NULL, '{\"name\":\"agus suhaedi\",\"email\":\"152@absensi.test\",\"updated_at\":\"2026-03-25 00:11:47\",\"created_at\":\"2026-03-25 00:11:47\",\"id\":7}', NULL, '2026-03-25 00:11:47', '2026-03-25 00:11:47'),
(16, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 7, NULL, NULL, '{\"karyawan_id\":2}', NULL, '2026-03-25 00:11:47', '2026-03-25 00:11:47'),
(17, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 2, NULL, NULL, '{\"user_id\":7,\"updated_at\":\"2026-03-25 00:11:47\"}', NULL, '2026-03-25 00:11:48', '2026-03-25 00:11:48'),
(18, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 8, NULL, NULL, '{\"name\":\"ahmad haerul fadlan\",\"email\":\"185@absensi.test\",\"updated_at\":\"2026-03-25 00:11:48\",\"created_at\":\"2026-03-25 00:11:48\",\"id\":8}', NULL, '2026-03-25 00:11:48', '2026-03-25 00:11:48'),
(19, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 8, NULL, NULL, '{\"karyawan_id\":3}', NULL, '2026-03-25 00:11:48', '2026-03-25 00:11:48'),
(20, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 3, NULL, NULL, '{\"user_id\":8,\"updated_at\":\"2026-03-25 00:11:48\"}', NULL, '2026-03-25 00:11:48', '2026-03-25 00:11:48'),
(21, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 9, NULL, NULL, '{\"name\":\"rian adriansyah\",\"email\":\"148@absensi.test\",\"updated_at\":\"2026-03-25 00:11:48\",\"created_at\":\"2026-03-25 00:11:48\",\"id\":9}', NULL, '2026-03-25 00:11:48', '2026-03-25 00:11:48'),
(22, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 9, NULL, NULL, '{\"karyawan_id\":4}', NULL, '2026-03-25 00:11:48', '2026-03-25 00:11:48'),
(23, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 4, NULL, NULL, '{\"user_id\":9,\"updated_at\":\"2026-03-25 00:11:48\"}', NULL, '2026-03-25 00:11:48', '2026-03-25 00:11:48'),
(24, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 10, NULL, NULL, '{\"name\":\"satibi\",\"email\":\"261@absensi.test\",\"updated_at\":\"2026-03-25 00:11:48\",\"created_at\":\"2026-03-25 00:11:48\",\"id\":10}', NULL, '2026-03-25 00:11:48', '2026-03-25 00:11:48'),
(25, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 10, NULL, NULL, '{\"karyawan_id\":5}', NULL, '2026-03-25 00:11:48', '2026-03-25 00:11:48'),
(26, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 5, NULL, NULL, '{\"user_id\":10,\"updated_at\":\"2026-03-25 00:11:48\"}', NULL, '2026-03-25 00:11:48', '2026-03-25 00:11:48'),
(27, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 11, NULL, NULL, '{\"name\":\"rosikin\",\"email\":\"137@absensi.test\",\"updated_at\":\"2026-03-25 00:11:49\",\"created_at\":\"2026-03-25 00:11:49\",\"id\":11}', NULL, '2026-03-25 00:11:49', '2026-03-25 00:11:49'),
(28, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 11, NULL, NULL, '{\"karyawan_id\":6}', NULL, '2026-03-25 00:11:49', '2026-03-25 00:11:49'),
(29, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 6, NULL, NULL, '{\"user_id\":11,\"updated_at\":\"2026-03-25 00:11:49\"}', NULL, '2026-03-25 00:11:49', '2026-03-25 00:11:49'),
(30, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 12, NULL, NULL, '{\"name\":\"ardiansyah\",\"email\":\"256@absensi.test\",\"updated_at\":\"2026-03-25 00:11:49\",\"created_at\":\"2026-03-25 00:11:49\",\"id\":12}', NULL, '2026-03-25 00:11:49', '2026-03-25 00:11:49'),
(31, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 12, NULL, NULL, '{\"karyawan_id\":7}', NULL, '2026-03-25 00:11:49', '2026-03-25 00:11:49'),
(32, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 7, NULL, NULL, '{\"user_id\":12,\"updated_at\":\"2026-03-25 00:11:49\"}', NULL, '2026-03-25 00:11:49', '2026-03-25 00:11:49'),
(33, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 13, NULL, NULL, '{\"name\":\"rismanto\",\"email\":\"440@absensi.test\",\"updated_at\":\"2026-03-25 00:11:49\",\"created_at\":\"2026-03-25 00:11:49\",\"id\":13}', NULL, '2026-03-25 00:11:49', '2026-03-25 00:11:49'),
(34, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 13, NULL, NULL, '{\"karyawan_id\":8}', NULL, '2026-03-25 00:11:49', '2026-03-25 00:11:49'),
(35, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 8, NULL, NULL, '{\"user_id\":13,\"updated_at\":\"2026-03-25 00:11:49\"}', NULL, '2026-03-25 00:11:49', '2026-03-25 00:11:49'),
(36, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 14, NULL, NULL, '{\"name\":\"abdul hamid\",\"email\":\"726@absensi.test\",\"updated_at\":\"2026-03-25 00:11:50\",\"created_at\":\"2026-03-25 00:11:50\",\"id\":14}', NULL, '2026-03-25 00:11:50', '2026-03-25 00:11:50'),
(37, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 14, NULL, NULL, '{\"karyawan_id\":9}', NULL, '2026-03-25 00:11:50', '2026-03-25 00:11:50'),
(38, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 9, NULL, NULL, '{\"user_id\":14,\"updated_at\":\"2026-03-25 00:11:50\"}', NULL, '2026-03-25 00:11:50', '2026-03-25 00:11:50'),
(39, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 15, NULL, NULL, '{\"name\":\"andri maulana\",\"email\":\"451@absensi.test\",\"updated_at\":\"2026-03-25 00:11:50\",\"created_at\":\"2026-03-25 00:11:50\",\"id\":15}', NULL, '2026-03-25 00:11:50', '2026-03-25 00:11:50'),
(40, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 15, NULL, NULL, '{\"karyawan_id\":10}', NULL, '2026-03-25 00:11:50', '2026-03-25 00:11:50'),
(41, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 10, NULL, NULL, '{\"user_id\":15,\"updated_at\":\"2026-03-25 00:11:50\"}', NULL, '2026-03-25 00:11:50', '2026-03-25 00:11:50'),
(42, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 16, NULL, NULL, '{\"name\":\"badrusalam\",\"email\":\"68@absensi.test\",\"updated_at\":\"2026-03-25 00:11:50\",\"created_at\":\"2026-03-25 00:11:50\",\"id\":16}', NULL, '2026-03-25 00:11:50', '2026-03-25 00:11:50'),
(43, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 16, NULL, NULL, '{\"karyawan_id\":11}', NULL, '2026-03-25 00:11:50', '2026-03-25 00:11:50'),
(44, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 11, NULL, NULL, '{\"user_id\":16,\"updated_at\":\"2026-03-25 00:11:50\"}', NULL, '2026-03-25 00:11:50', '2026-03-25 00:11:50'),
(45, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 17, NULL, NULL, '{\"name\":\"dede amung sunarya\",\"email\":\"442@absensi.test\",\"updated_at\":\"2026-03-25 00:11:51\",\"created_at\":\"2026-03-25 00:11:51\",\"id\":17}', NULL, '2026-03-25 00:11:51', '2026-03-25 00:11:51'),
(46, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 17, NULL, NULL, '{\"karyawan_id\":12}', NULL, '2026-03-25 00:11:51', '2026-03-25 00:11:51'),
(47, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 12, NULL, NULL, '{\"user_id\":17,\"updated_at\":\"2026-03-25 00:11:51\"}', NULL, '2026-03-25 00:11:51', '2026-03-25 00:11:51'),
(48, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 18, NULL, NULL, '{\"name\":\"agus\",\"email\":\"121@absensi.test\",\"updated_at\":\"2026-03-25 00:11:51\",\"created_at\":\"2026-03-25 00:11:51\",\"id\":18}', NULL, '2026-03-25 00:11:51', '2026-03-25 00:11:51'),
(49, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 18, NULL, NULL, '{\"karyawan_id\":13}', NULL, '2026-03-25 00:11:51', '2026-03-25 00:11:51'),
(50, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 13, NULL, NULL, '{\"user_id\":18,\"updated_at\":\"2026-03-25 00:11:51\"}', NULL, '2026-03-25 00:11:51', '2026-03-25 00:11:51'),
(51, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 19, NULL, NULL, '{\"name\":\"feri ardiansah\",\"email\":\"642@absensi.test\",\"updated_at\":\"2026-03-25 00:11:51\",\"created_at\":\"2026-03-25 00:11:51\",\"id\":19}', NULL, '2026-03-25 00:11:51', '2026-03-25 00:11:51'),
(52, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 19, NULL, NULL, '{\"karyawan_id\":14}', NULL, '2026-03-25 00:11:51', '2026-03-25 00:11:51'),
(53, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 14, NULL, NULL, '{\"user_id\":19,\"updated_at\":\"2026-03-25 00:11:51\"}', NULL, '2026-03-25 00:11:51', '2026-03-25 00:11:51'),
(54, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 20, NULL, NULL, '{\"name\":\"muhamad yunus\",\"email\":\"86@absensi.test\",\"updated_at\":\"2026-03-25 00:11:52\",\"created_at\":\"2026-03-25 00:11:52\",\"id\":20}', NULL, '2026-03-25 00:11:52', '2026-03-25 00:11:52'),
(55, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 20, NULL, NULL, '{\"karyawan_id\":15}', NULL, '2026-03-25 00:11:52', '2026-03-25 00:11:52'),
(56, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 15, NULL, NULL, '{\"user_id\":20,\"updated_at\":\"2026-03-25 00:11:52\"}', NULL, '2026-03-25 00:11:52', '2026-03-25 00:11:52'),
(57, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 21, NULL, NULL, '{\"name\":\"subekhi\",\"email\":\"106@absensi.test\",\"updated_at\":\"2026-03-25 00:11:52\",\"created_at\":\"2026-03-25 00:11:52\",\"id\":21}', NULL, '2026-03-25 00:11:52', '2026-03-25 00:11:52'),
(58, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 21, NULL, NULL, '{\"karyawan_id\":16}', NULL, '2026-03-25 00:11:52', '2026-03-25 00:11:52'),
(59, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 16, NULL, NULL, '{\"user_id\":21,\"updated_at\":\"2026-03-25 00:11:52\"}', NULL, '2026-03-25 00:11:52', '2026-03-25 00:11:52'),
(60, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 22, NULL, NULL, '{\"name\":\"yaman\",\"email\":\"116@absensi.test\",\"updated_at\":\"2026-03-25 00:11:52\",\"created_at\":\"2026-03-25 00:11:52\",\"id\":22}', NULL, '2026-03-25 00:11:52', '2026-03-25 00:11:52'),
(61, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 22, NULL, NULL, '{\"karyawan_id\":17}', NULL, '2026-03-25 00:11:52', '2026-03-25 00:11:52'),
(62, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 17, NULL, NULL, '{\"user_id\":22,\"updated_at\":\"2026-03-25 00:11:52\"}', NULL, '2026-03-25 00:11:52', '2026-03-25 00:11:52'),
(63, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 23, NULL, NULL, '{\"name\":\"eko hariyanto\",\"email\":\"124@absensi.test\",\"updated_at\":\"2026-03-25 00:11:53\",\"created_at\":\"2026-03-25 00:11:53\",\"id\":23}', NULL, '2026-03-25 00:11:53', '2026-03-25 00:11:53'),
(64, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 23, NULL, NULL, '{\"karyawan_id\":18}', NULL, '2026-03-25 00:11:53', '2026-03-25 00:11:53'),
(65, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 18, NULL, NULL, '{\"user_id\":23,\"updated_at\":\"2026-03-25 00:11:53\"}', NULL, '2026-03-25 00:11:53', '2026-03-25 00:11:53'),
(66, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 24, NULL, NULL, '{\"name\":\"hadi suryanto\",\"email\":\"223@absensi.test\",\"updated_at\":\"2026-03-25 00:11:53\",\"created_at\":\"2026-03-25 00:11:53\",\"id\":24}', NULL, '2026-03-25 00:11:53', '2026-03-25 00:11:53'),
(67, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 24, NULL, NULL, '{\"karyawan_id\":19}', NULL, '2026-03-25 00:11:53', '2026-03-25 00:11:53'),
(68, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 19, NULL, NULL, '{\"user_id\":24,\"updated_at\":\"2026-03-25 00:11:53\"}', NULL, '2026-03-25 00:11:53', '2026-03-25 00:11:53'),
(69, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 25, NULL, NULL, '{\"name\":\"ade sutrisna\",\"email\":\"439@absensi.test\",\"updated_at\":\"2026-03-25 00:11:54\",\"created_at\":\"2026-03-25 00:11:54\",\"id\":25}', NULL, '2026-03-25 00:11:54', '2026-03-25 00:11:54'),
(70, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 25, NULL, NULL, '{\"karyawan_id\":20}', NULL, '2026-03-25 00:11:54', '2026-03-25 00:11:54'),
(71, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 20, NULL, NULL, '{\"user_id\":25,\"updated_at\":\"2026-03-25 00:11:54\"}', NULL, '2026-03-25 00:11:54', '2026-03-25 00:11:54'),
(72, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 26, NULL, NULL, '{\"name\":\"didin nurjayadi\",\"email\":\"881@absensi.test\",\"updated_at\":\"2026-03-25 00:11:54\",\"created_at\":\"2026-03-25 00:11:54\",\"id\":26}', NULL, '2026-03-25 00:11:54', '2026-03-25 00:11:54'),
(73, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 26, NULL, NULL, '{\"karyawan_id\":21}', NULL, '2026-03-25 00:11:54', '2026-03-25 00:11:54'),
(74, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 21, NULL, NULL, '{\"user_id\":26,\"updated_at\":\"2026-03-25 00:11:54\"}', NULL, '2026-03-25 00:11:54', '2026-03-25 00:11:54'),
(75, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 27, NULL, NULL, '{\"name\":\"chairul amin\",\"email\":\"874@absensi.test\",\"updated_at\":\"2026-03-25 00:11:54\",\"created_at\":\"2026-03-25 00:11:54\",\"id\":27}', NULL, '2026-03-25 00:11:54', '2026-03-25 00:11:54'),
(76, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 27, NULL, NULL, '{\"karyawan_id\":22}', NULL, '2026-03-25 00:11:54', '2026-03-25 00:11:54'),
(77, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 22, NULL, NULL, '{\"user_id\":27,\"updated_at\":\"2026-03-25 00:11:54\"}', NULL, '2026-03-25 00:11:54', '2026-03-25 00:11:54'),
(78, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 28, NULL, NULL, '{\"name\":\"rusyana\",\"email\":\"96@absensi.test\",\"updated_at\":\"2026-03-25 00:11:55\",\"created_at\":\"2026-03-25 00:11:55\",\"id\":28}', NULL, '2026-03-25 00:11:55', '2026-03-25 00:11:55'),
(79, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 28, NULL, NULL, '{\"karyawan_id\":23}', NULL, '2026-03-25 00:11:55', '2026-03-25 00:11:55'),
(80, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 23, NULL, NULL, '{\"user_id\":28,\"updated_at\":\"2026-03-25 00:11:55\"}', NULL, '2026-03-25 00:11:55', '2026-03-25 00:11:55'),
(81, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 29, NULL, NULL, '{\"name\":\"muhamad toha\",\"email\":\"132@absensi.test\",\"updated_at\":\"2026-03-25 00:11:55\",\"created_at\":\"2026-03-25 00:11:55\",\"id\":29}', NULL, '2026-03-25 00:11:55', '2026-03-25 00:11:55'),
(82, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 29, NULL, NULL, '{\"karyawan_id\":24}', NULL, '2026-03-25 00:11:55', '2026-03-25 00:11:55'),
(83, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 24, NULL, NULL, '{\"user_id\":29,\"updated_at\":\"2026-03-25 00:11:55\"}', NULL, '2026-03-25 00:11:55', '2026-03-25 00:11:55'),
(84, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 30, NULL, NULL, '{\"name\":\"daud maulana\",\"email\":\"441@absensi.test\",\"updated_at\":\"2026-03-25 00:11:55\",\"created_at\":\"2026-03-25 00:11:55\",\"id\":30}', NULL, '2026-03-25 00:11:55', '2026-03-25 00:11:55'),
(85, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 30, NULL, NULL, '{\"karyawan_id\":25}', NULL, '2026-03-25 00:11:55', '2026-03-25 00:11:55'),
(86, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 25, NULL, NULL, '{\"user_id\":30,\"updated_at\":\"2026-03-25 00:11:55\"}', NULL, '2026-03-25 00:11:55', '2026-03-25 00:11:55'),
(87, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 31, NULL, NULL, '{\"name\":\"ujang\",\"email\":\"443@absensi.test\",\"updated_at\":\"2026-03-25 00:11:56\",\"created_at\":\"2026-03-25 00:11:56\",\"id\":31}', NULL, '2026-03-25 00:11:56', '2026-03-25 00:11:56'),
(88, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 31, NULL, NULL, '{\"karyawan_id\":26}', NULL, '2026-03-25 00:11:56', '2026-03-25 00:11:56'),
(89, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 26, NULL, NULL, '{\"user_id\":31,\"updated_at\":\"2026-03-25 00:11:56\"}', NULL, '2026-03-25 00:11:56', '2026-03-25 00:11:56'),
(90, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 32, NULL, NULL, '{\"name\":\"dedi eta suryana\",\"email\":\"877@absensi.test\",\"updated_at\":\"2026-03-25 00:11:56\",\"created_at\":\"2026-03-25 00:11:56\",\"id\":32}', NULL, '2026-03-25 00:11:56', '2026-03-25 00:11:56'),
(91, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 32, NULL, NULL, '{\"karyawan_id\":27}', NULL, '2026-03-25 00:11:56', '2026-03-25 00:11:56'),
(92, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 27, NULL, NULL, '{\"user_id\":32,\"updated_at\":\"2026-03-25 00:11:56\"}', NULL, '2026-03-25 00:11:56', '2026-03-25 00:11:56'),
(93, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 33, NULL, NULL, '{\"name\":\"herman setiawan\",\"email\":\"892@absensi.test\",\"updated_at\":\"2026-03-25 00:11:56\",\"created_at\":\"2026-03-25 00:11:56\",\"id\":33}', NULL, '2026-03-25 00:11:56', '2026-03-25 00:11:56'),
(94, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 33, NULL, NULL, '{\"karyawan_id\":28}', NULL, '2026-03-25 00:11:56', '2026-03-25 00:11:56'),
(95, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 28, NULL, NULL, '{\"user_id\":33,\"updated_at\":\"2026-03-25 00:11:56\"}', NULL, '2026-03-25 00:11:56', '2026-03-25 00:11:56'),
(96, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 34, NULL, NULL, '{\"name\":\"nurhadi saputra\",\"email\":\"157@absensi.test\",\"updated_at\":\"2026-03-25 00:11:56\",\"created_at\":\"2026-03-25 00:11:56\",\"id\":34}', NULL, '2026-03-25 00:11:56', '2026-03-25 00:11:56'),
(97, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 34, NULL, NULL, '{\"updated_at\":\"2026-03-25 00:11:57\",\"karyawan_id\":29}', NULL, '2026-03-25 00:11:57', '2026-03-25 00:11:57'),
(98, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 29, NULL, NULL, '{\"user_id\":34,\"updated_at\":\"2026-03-25 00:11:57\"}', NULL, '2026-03-25 00:11:57', '2026-03-25 00:11:57'),
(99, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 35, NULL, NULL, '{\"name\":\"santo\",\"email\":\"905@absensi.test\",\"updated_at\":\"2026-03-25 00:11:57\",\"created_at\":\"2026-03-25 00:11:57\",\"id\":35}', NULL, '2026-03-25 00:11:57', '2026-03-25 00:11:57'),
(100, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 35, NULL, NULL, '{\"karyawan_id\":30}', NULL, '2026-03-25 00:11:57', '2026-03-25 00:11:57'),
(101, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 30, NULL, NULL, '{\"user_id\":35,\"updated_at\":\"2026-03-25 00:11:57\"}', NULL, '2026-03-25 00:11:57', '2026-03-25 00:11:57'),
(102, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 36, NULL, NULL, '{\"name\":\"ajiteguh suparto\",\"email\":\"906@absensi.test\",\"updated_at\":\"2026-03-25 00:11:57\",\"created_at\":\"2026-03-25 00:11:57\",\"id\":36}', NULL, '2026-03-25 00:11:57', '2026-03-25 00:11:57'),
(103, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 36, NULL, NULL, '{\"karyawan_id\":31}', NULL, '2026-03-25 00:11:57', '2026-03-25 00:11:57'),
(104, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 31, NULL, NULL, '{\"user_id\":36,\"updated_at\":\"2026-03-25 00:11:57\"}', NULL, '2026-03-25 00:11:57', '2026-03-25 00:11:57'),
(105, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 37, NULL, NULL, '{\"name\":\"sunarto\",\"email\":\"993@absensi.test\",\"updated_at\":\"2026-03-25 00:11:57\",\"created_at\":\"2026-03-25 00:11:57\",\"id\":37}', NULL, '2026-03-25 00:11:57', '2026-03-25 00:11:57'),
(106, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 37, NULL, NULL, '{\"karyawan_id\":32}', NULL, '2026-03-25 00:11:57', '2026-03-25 00:11:57'),
(107, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 32, NULL, NULL, '{\"user_id\":37,\"updated_at\":\"2026-03-25 00:11:57\"}', NULL, '2026-03-25 00:11:57', '2026-03-25 00:11:57'),
(108, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 38, NULL, NULL, '{\"name\":\"endi\",\"email\":\"994@absensi.test\",\"updated_at\":\"2026-03-25 00:11:58\",\"created_at\":\"2026-03-25 00:11:58\",\"id\":38}', NULL, '2026-03-25 00:11:58', '2026-03-25 00:11:58'),
(109, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 38, NULL, NULL, '{\"karyawan_id\":33}', NULL, '2026-03-25 00:11:58', '2026-03-25 00:11:58'),
(110, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 33, NULL, NULL, '{\"user_id\":38,\"updated_at\":\"2026-03-25 00:11:58\"}', NULL, '2026-03-25 00:11:58', '2026-03-25 00:11:58'),
(111, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 39, NULL, NULL, '{\"name\":\"ros fitriana\",\"email\":\"996@absensi.test\",\"updated_at\":\"2026-03-25 00:11:58\",\"created_at\":\"2026-03-25 00:11:58\",\"id\":39}', NULL, '2026-03-25 00:11:58', '2026-03-25 00:11:58'),
(112, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 39, NULL, NULL, '{\"karyawan_id\":34}', NULL, '2026-03-25 00:11:58', '2026-03-25 00:11:58'),
(113, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 34, NULL, NULL, '{\"user_id\":39,\"updated_at\":\"2026-03-25 00:11:58\"}', NULL, '2026-03-25 00:11:58', '2026-03-25 00:11:58'),
(114, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 40, NULL, NULL, '{\"name\":\"javar afat\",\"email\":\"1000@absensi.test\",\"updated_at\":\"2026-03-25 00:11:58\",\"created_at\":\"2026-03-25 00:11:58\",\"id\":40}', NULL, '2026-03-25 00:11:58', '2026-03-25 00:11:58'),
(115, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 40, NULL, NULL, '{\"karyawan_id\":35}', NULL, '2026-03-25 00:11:58', '2026-03-25 00:11:58'),
(116, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 35, NULL, NULL, '{\"user_id\":40,\"updated_at\":\"2026-03-25 00:11:58\"}', NULL, '2026-03-25 00:11:58', '2026-03-25 00:11:58'),
(117, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 41, NULL, NULL, '{\"name\":\"warim\",\"email\":\"1001@absensi.test\",\"updated_at\":\"2026-03-25 00:11:59\",\"created_at\":\"2026-03-25 00:11:59\",\"id\":41}', NULL, '2026-03-25 00:11:59', '2026-03-25 00:11:59'),
(118, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 41, NULL, NULL, '{\"karyawan_id\":36}', NULL, '2026-03-25 00:11:59', '2026-03-25 00:11:59'),
(119, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 36, NULL, NULL, '{\"user_id\":41,\"updated_at\":\"2026-03-25 00:11:59\"}', NULL, '2026-03-25 00:11:59', '2026-03-25 00:11:59'),
(120, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 42, NULL, NULL, '{\"name\":\"dede rahmat\",\"email\":\"1002@absensi.test\",\"updated_at\":\"2026-03-25 00:11:59\",\"created_at\":\"2026-03-25 00:11:59\",\"id\":42}', NULL, '2026-03-25 00:11:59', '2026-03-25 00:11:59'),
(121, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 42, NULL, NULL, '{\"karyawan_id\":37}', NULL, '2026-03-25 00:11:59', '2026-03-25 00:11:59'),
(122, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 37, NULL, NULL, '{\"user_id\":42,\"updated_at\":\"2026-03-25 00:11:59\"}', NULL, '2026-03-25 00:11:59', '2026-03-25 00:11:59'),
(123, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 43, NULL, NULL, '{\"name\":\"bayu atar arrafli\",\"email\":\"1003@absensi.test\",\"updated_at\":\"2026-03-25 00:11:59\",\"created_at\":\"2026-03-25 00:11:59\",\"id\":43}', NULL, '2026-03-25 00:11:59', '2026-03-25 00:11:59'),
(124, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 43, NULL, NULL, '{\"karyawan_id\":38}', NULL, '2026-03-25 00:11:59', '2026-03-25 00:11:59'),
(125, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 38, NULL, NULL, '{\"user_id\":43,\"updated_at\":\"2026-03-25 00:11:59\"}', NULL, '2026-03-25 00:11:59', '2026-03-25 00:11:59'),
(126, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 44, NULL, NULL, '{\"name\":\"triyono\",\"email\":\"1005@absensi.test\",\"updated_at\":\"2026-03-25 00:12:00\",\"created_at\":\"2026-03-25 00:12:00\",\"id\":44}', NULL, '2026-03-25 00:12:00', '2026-03-25 00:12:00'),
(127, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 44, NULL, NULL, '{\"karyawan_id\":39}', NULL, '2026-03-25 00:12:00', '2026-03-25 00:12:00'),
(128, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 39, NULL, NULL, '{\"user_id\":44,\"updated_at\":\"2026-03-25 00:12:00\"}', NULL, '2026-03-25 00:12:00', '2026-03-25 00:12:00'),
(129, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 45, NULL, NULL, '{\"name\":\"asep saefudin\",\"email\":\"1013@absensi.test\",\"updated_at\":\"2026-03-25 00:12:00\",\"created_at\":\"2026-03-25 00:12:00\",\"id\":45}', NULL, '2026-03-25 00:12:00', '2026-03-25 00:12:00'),
(130, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 45, NULL, NULL, '{\"karyawan_id\":40}', NULL, '2026-03-25 00:12:00', '2026-03-25 00:12:00'),
(131, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 40, NULL, NULL, '{\"user_id\":45,\"updated_at\":\"2026-03-25 00:12:00\"}', NULL, '2026-03-25 00:12:00', '2026-03-25 00:12:00'),
(132, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 46, NULL, NULL, '{\"name\":\"casmito\",\"email\":\"71@absensi.test\",\"updated_at\":\"2026-03-25 00:12:00\",\"created_at\":\"2026-03-25 00:12:00\",\"id\":46}', NULL, '2026-03-25 00:12:00', '2026-03-25 00:12:00'),
(133, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 46, NULL, NULL, '{\"karyawan_id\":41}', NULL, '2026-03-25 00:12:00', '2026-03-25 00:12:00'),
(134, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 41, NULL, NULL, '{\"user_id\":46,\"updated_at\":\"2026-03-25 00:12:00\"}', NULL, '2026-03-25 00:12:00', '2026-03-25 00:12:00'),
(135, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 47, NULL, NULL, '{\"name\":\"fatakun\",\"email\":\"75@absensi.test\",\"updated_at\":\"2026-03-25 00:12:00\",\"created_at\":\"2026-03-25 00:12:00\",\"id\":47}', NULL, '2026-03-25 00:12:00', '2026-03-25 00:12:00'),
(136, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 47, NULL, NULL, '{\"karyawan_id\":42}', NULL, '2026-03-25 00:12:00', '2026-03-25 00:12:00'),
(137, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 42, NULL, NULL, '{\"user_id\":47,\"updated_at\":\"2026-03-25 00:12:00\"}', NULL, '2026-03-25 00:12:00', '2026-03-25 00:12:00'),
(138, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 48, NULL, NULL, '{\"name\":\"mundor\",\"email\":\"87@absensi.test\",\"updated_at\":\"2026-03-25 00:12:01\",\"created_at\":\"2026-03-25 00:12:01\",\"id\":48}', NULL, '2026-03-25 00:12:01', '2026-03-25 00:12:01'),
(139, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 48, NULL, NULL, '{\"karyawan_id\":43}', NULL, '2026-03-25 00:12:01', '2026-03-25 00:12:01'),
(140, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 43, NULL, NULL, '{\"user_id\":48,\"updated_at\":\"2026-03-25 00:12:01\"}', NULL, '2026-03-25 00:12:01', '2026-03-25 00:12:01'),
(141, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 49, NULL, NULL, '{\"name\":\"rojin\",\"email\":\"93@absensi.test\",\"updated_at\":\"2026-03-25 00:12:01\",\"created_at\":\"2026-03-25 00:12:01\",\"id\":49}', NULL, '2026-03-25 00:12:01', '2026-03-25 00:12:01'),
(142, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 49, NULL, NULL, '{\"karyawan_id\":44}', NULL, '2026-03-25 00:12:01', '2026-03-25 00:12:01'),
(143, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 44, NULL, NULL, '{\"user_id\":49,\"updated_at\":\"2026-03-25 00:12:01\"}', NULL, '2026-03-25 00:12:01', '2026-03-25 00:12:01'),
(144, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 50, NULL, NULL, '{\"name\":\"sukardi\",\"email\":\"109@absensi.test\",\"updated_at\":\"2026-03-25 00:12:01\",\"created_at\":\"2026-03-25 00:12:01\",\"id\":50}', NULL, '2026-03-25 00:12:01', '2026-03-25 00:12:01'),
(145, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 50, NULL, NULL, '{\"karyawan_id\":45}', NULL, '2026-03-25 00:12:01', '2026-03-25 00:12:01'),
(146, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 45, NULL, NULL, '{\"user_id\":50,\"updated_at\":\"2026-03-25 00:12:01\"}', NULL, '2026-03-25 00:12:01', '2026-03-25 00:12:01'),
(147, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 51, NULL, NULL, '{\"name\":\"wiwid sawidi\",\"email\":\"115@absensi.test\",\"updated_at\":\"2026-03-25 00:12:02\",\"created_at\":\"2026-03-25 00:12:02\",\"id\":51}', NULL, '2026-03-25 00:12:02', '2026-03-25 00:12:02'),
(148, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 51, NULL, NULL, '{\"karyawan_id\":46}', NULL, '2026-03-25 00:12:02', '2026-03-25 00:12:02'),
(149, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 46, NULL, NULL, '{\"user_id\":51,\"updated_at\":\"2026-03-25 00:12:02\"}', NULL, '2026-03-25 00:12:02', '2026-03-25 00:12:02'),
(150, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 52, NULL, NULL, '{\"name\":\"riom choiri\",\"email\":\"118@absensi.test\",\"updated_at\":\"2026-03-25 00:12:02\",\"created_at\":\"2026-03-25 00:12:02\",\"id\":52}', NULL, '2026-03-25 00:12:02', '2026-03-25 00:12:02'),
(151, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 52, NULL, NULL, '{\"karyawan_id\":47}', NULL, '2026-03-25 00:12:02', '2026-03-25 00:12:02'),
(152, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 47, NULL, NULL, '{\"user_id\":52,\"updated_at\":\"2026-03-25 00:12:02\"}', NULL, '2026-03-25 00:12:02', '2026-03-25 00:12:02'),
(153, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 53, NULL, NULL, '{\"name\":\"mastur\",\"email\":\"129@absensi.test\",\"updated_at\":\"2026-03-25 00:12:02\",\"created_at\":\"2026-03-25 00:12:02\",\"id\":53}', NULL, '2026-03-25 00:12:02', '2026-03-25 00:12:02'),
(154, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 53, NULL, NULL, '{\"karyawan_id\":48}', NULL, '2026-03-25 00:12:02', '2026-03-25 00:12:02'),
(155, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 48, NULL, NULL, '{\"user_id\":53,\"updated_at\":\"2026-03-25 00:12:02\"}', NULL, '2026-03-25 00:12:02', '2026-03-25 00:12:02'),
(156, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 54, NULL, NULL, '{\"name\":\"siroy\",\"email\":\"139@absensi.test\",\"updated_at\":\"2026-03-25 00:12:03\",\"created_at\":\"2026-03-25 00:12:03\",\"id\":54}', NULL, '2026-03-25 00:12:03', '2026-03-25 00:12:03'),
(157, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 54, NULL, NULL, '{\"karyawan_id\":49}', NULL, '2026-03-25 00:12:03', '2026-03-25 00:12:03'),
(158, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 49, NULL, NULL, '{\"user_id\":54,\"updated_at\":\"2026-03-25 00:12:03\"}', NULL, '2026-03-25 00:12:03', '2026-03-25 00:12:03'),
(159, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 55, NULL, NULL, '{\"name\":\"alan kusumo\",\"email\":\"172@absensi.test\",\"updated_at\":\"2026-03-25 00:12:03\",\"created_at\":\"2026-03-25 00:12:03\",\"id\":55}', NULL, '2026-03-25 00:12:03', '2026-03-25 00:12:03'),
(160, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 55, NULL, NULL, '{\"karyawan_id\":50}', NULL, '2026-03-25 00:12:03', '2026-03-25 00:12:03'),
(161, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 50, NULL, NULL, '{\"user_id\":55,\"updated_at\":\"2026-03-25 00:12:03\"}', NULL, '2026-03-25 00:12:03', '2026-03-25 00:12:03'),
(162, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 56, NULL, NULL, '{\"name\":\"camo\",\"email\":\"202@absensi.test\",\"updated_at\":\"2026-03-25 00:12:03\",\"created_at\":\"2026-03-25 00:12:03\",\"id\":56}', NULL, '2026-03-25 00:12:03', '2026-03-25 00:12:03'),
(163, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 56, NULL, NULL, '{\"karyawan_id\":51}', NULL, '2026-03-25 00:12:03', '2026-03-25 00:12:03'),
(164, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 51, NULL, NULL, '{\"user_id\":56,\"updated_at\":\"2026-03-25 00:12:03\"}', NULL, '2026-03-25 00:12:03', '2026-03-25 00:12:03'),
(165, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 57, NULL, NULL, '{\"name\":\"supardi\",\"email\":\"110@absensi.test\",\"updated_at\":\"2026-03-25 00:12:04\",\"created_at\":\"2026-03-25 00:12:04\",\"id\":57}', NULL, '2026-03-25 00:12:04', '2026-03-25 00:12:04'),
(166, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 57, NULL, NULL, '{\"karyawan_id\":52}', NULL, '2026-03-25 00:12:04', '2026-03-25 00:12:04'),
(167, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 52, NULL, NULL, '{\"user_id\":57,\"updated_at\":\"2026-03-25 00:12:04\"}', NULL, '2026-03-25 00:12:04', '2026-03-25 00:12:04'),
(168, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 58, NULL, NULL, '{\"name\":\"ahmadi\",\"email\":\"61@absensi.test\",\"updated_at\":\"2026-03-25 00:12:04\",\"created_at\":\"2026-03-25 00:12:04\",\"id\":58}', NULL, '2026-03-25 00:12:04', '2026-03-25 00:12:04'),
(169, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 58, NULL, NULL, '{\"karyawan_id\":53}', NULL, '2026-03-25 00:12:04', '2026-03-25 00:12:04'),
(170, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 53, NULL, NULL, '{\"user_id\":58,\"updated_at\":\"2026-03-25 00:12:04\"}', NULL, '2026-03-25 00:12:04', '2026-03-25 00:12:04'),
(171, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 59, NULL, NULL, '{\"name\":\"edi sanir\",\"email\":\"74@absensi.test\",\"updated_at\":\"2026-03-25 00:12:04\",\"created_at\":\"2026-03-25 00:12:04\",\"id\":59}', NULL, '2026-03-25 00:12:04', '2026-03-25 00:12:04'),
(172, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 59, NULL, NULL, '{\"karyawan_id\":54}', NULL, '2026-03-25 00:12:04', '2026-03-25 00:12:04'),
(173, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 54, NULL, NULL, '{\"user_id\":59,\"updated_at\":\"2026-03-25 00:12:04\"}', NULL, '2026-03-25 00:12:04', '2026-03-25 00:12:04'),
(174, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 60, NULL, NULL, '{\"name\":\"hasim bin deung\",\"email\":\"77@absensi.test\",\"updated_at\":\"2026-03-25 00:12:05\",\"created_at\":\"2026-03-25 00:12:05\",\"id\":60}', NULL, '2026-03-25 00:12:05', '2026-03-25 00:12:05'),
(175, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 60, NULL, NULL, '{\"karyawan_id\":55}', NULL, '2026-03-25 00:12:05', '2026-03-25 00:12:05'),
(176, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 55, NULL, NULL, '{\"user_id\":60,\"updated_at\":\"2026-03-25 00:12:05\"}', NULL, '2026-03-25 00:12:05', '2026-03-25 00:12:05'),
(177, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 61, NULL, NULL, '{\"name\":\"nandang\",\"email\":\"88@absensi.test\",\"updated_at\":\"2026-03-25 00:12:05\",\"created_at\":\"2026-03-25 00:12:05\",\"id\":61}', NULL, '2026-03-25 00:12:05', '2026-03-25 00:12:05'),
(178, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 61, NULL, NULL, '{\"karyawan_id\":56}', NULL, '2026-03-25 00:12:05', '2026-03-25 00:12:05'),
(179, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 56, NULL, NULL, '{\"user_id\":61,\"updated_at\":\"2026-03-25 00:12:05\"}', NULL, '2026-03-25 00:12:05', '2026-03-25 00:12:05'),
(180, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 62, NULL, NULL, '{\"name\":\"ohim\",\"email\":\"90@absensi.test\",\"updated_at\":\"2026-03-25 00:12:05\",\"created_at\":\"2026-03-25 00:12:05\",\"id\":62}', NULL, '2026-03-25 00:12:05', '2026-03-25 00:12:05'),
(181, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 62, NULL, NULL, '{\"karyawan_id\":57}', NULL, '2026-03-25 00:12:05', '2026-03-25 00:12:05'),
(182, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 57, NULL, NULL, '{\"user_id\":62,\"updated_at\":\"2026-03-25 00:12:05\"}', NULL, '2026-03-25 00:12:05', '2026-03-25 00:12:05'),
(183, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 63, NULL, NULL, '{\"name\":\"sahri\",\"email\":\"99@absensi.test\",\"updated_at\":\"2026-03-25 00:12:06\",\"created_at\":\"2026-03-25 00:12:06\",\"id\":63}', NULL, '2026-03-25 00:12:06', '2026-03-25 00:12:06'),
(184, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 63, NULL, NULL, '{\"karyawan_id\":58}', NULL, '2026-03-25 00:12:06', '2026-03-25 00:12:06'),
(185, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 58, NULL, NULL, '{\"user_id\":63,\"updated_at\":\"2026-03-25 00:12:06\"}', NULL, '2026-03-25 00:12:06', '2026-03-25 00:12:06'),
(186, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 64, NULL, NULL, '{\"name\":\"solihin\",\"email\":\"104@absensi.test\",\"updated_at\":\"2026-03-25 00:12:06\",\"created_at\":\"2026-03-25 00:12:06\",\"id\":64}', NULL, '2026-03-25 00:12:06', '2026-03-25 00:12:06'),
(187, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 64, NULL, NULL, '{\"karyawan_id\":59}', NULL, '2026-03-25 00:12:06', '2026-03-25 00:12:06'),
(188, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 59, NULL, NULL, '{\"user_id\":64,\"updated_at\":\"2026-03-25 00:12:06\"}', NULL, '2026-03-25 00:12:06', '2026-03-25 00:12:06'),
(189, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 65, NULL, NULL, '{\"name\":\"sopian\",\"email\":\"105@absensi.test\",\"updated_at\":\"2026-03-25 00:12:06\",\"created_at\":\"2026-03-25 00:12:06\",\"id\":65}', NULL, '2026-03-25 00:12:06', '2026-03-25 00:12:06'),
(190, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 65, NULL, NULL, '{\"karyawan_id\":60}', NULL, '2026-03-25 00:12:06', '2026-03-25 00:12:06'),
(191, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 60, NULL, NULL, '{\"user_id\":65,\"updated_at\":\"2026-03-25 00:12:06\"}', NULL, '2026-03-25 00:12:06', '2026-03-25 00:12:06'),
(192, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 66, NULL, NULL, '{\"name\":\"muhammad nur romdon\",\"email\":\"133@absensi.test\",\"updated_at\":\"2026-03-25 00:12:07\",\"created_at\":\"2026-03-25 00:12:07\",\"id\":66}', NULL, '2026-03-25 00:12:07', '2026-03-25 00:12:07'),
(193, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 66, NULL, NULL, '{\"karyawan_id\":61}', NULL, '2026-03-25 00:12:07', '2026-03-25 00:12:07'),
(194, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 61, NULL, NULL, '{\"user_id\":66,\"updated_at\":\"2026-03-25 00:12:07\"}', NULL, '2026-03-25 00:12:07', '2026-03-25 00:12:07'),
(195, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 67, NULL, NULL, '{\"name\":\"angga kusuma\",\"email\":\"269@absensi.test\",\"updated_at\":\"2026-03-25 00:12:07\",\"created_at\":\"2026-03-25 00:12:07\",\"id\":67}', NULL, '2026-03-25 00:12:07', '2026-03-25 00:12:07'),
(196, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 67, NULL, NULL, '{\"karyawan_id\":62}', NULL, '2026-03-25 00:12:07', '2026-03-25 00:12:07'),
(197, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 62, NULL, NULL, '{\"user_id\":67,\"updated_at\":\"2026-03-25 00:12:07\"}', NULL, '2026-03-25 00:12:07', '2026-03-25 00:12:07'),
(198, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 68, NULL, NULL, '{\"name\":\"yayat sudrajat\",\"email\":\"421@absensi.test\",\"updated_at\":\"2026-03-25 00:12:07\",\"created_at\":\"2026-03-25 00:12:07\",\"id\":68}', NULL, '2026-03-25 00:12:07', '2026-03-25 00:12:07'),
(199, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 68, NULL, NULL, '{\"karyawan_id\":63}', NULL, '2026-03-25 00:12:07', '2026-03-25 00:12:07'),
(200, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 63, NULL, NULL, '{\"user_id\":68,\"updated_at\":\"2026-03-25 00:12:07\"}', NULL, '2026-03-25 00:12:07', '2026-03-25 00:12:07');

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(201, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 69, NULL, NULL, '{\"name\":\"muhdi\",\"email\":\"534@absensi.test\",\"updated_at\":\"2026-03-25 00:12:08\",\"created_at\":\"2026-03-25 00:12:08\",\"id\":69}', NULL, '2026-03-25 00:12:08', '2026-03-25 00:12:08'),
(202, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 69, NULL, NULL, '{\"karyawan_id\":64}', NULL, '2026-03-25 00:12:08', '2026-03-25 00:12:08'),
(203, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 64, NULL, NULL, '{\"user_id\":69,\"updated_at\":\"2026-03-25 00:12:08\"}', NULL, '2026-03-25 00:12:08', '2026-03-25 00:12:08'),
(204, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 70, NULL, NULL, '{\"name\":\"tajudin\",\"email\":\"844@absensi.test\",\"updated_at\":\"2026-03-25 00:12:08\",\"created_at\":\"2026-03-25 00:12:08\",\"id\":70}', NULL, '2026-03-25 00:12:08', '2026-03-25 00:12:08'),
(205, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 70, NULL, NULL, '{\"karyawan_id\":65}', NULL, '2026-03-25 00:12:08', '2026-03-25 00:12:08'),
(206, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 65, NULL, NULL, '{\"user_id\":70,\"updated_at\":\"2026-03-25 00:12:08\"}', NULL, '2026-03-25 00:12:08', '2026-03-25 00:12:08'),
(207, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 71, NULL, NULL, '{\"name\":\"abdul rohman\",\"email\":\"58@absensi.test\",\"updated_at\":\"2026-03-25 00:12:08\",\"created_at\":\"2026-03-25 00:12:08\",\"id\":71}', NULL, '2026-03-25 00:12:08', '2026-03-25 00:12:08'),
(208, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 71, NULL, NULL, '{\"karyawan_id\":66}', NULL, '2026-03-25 00:12:08', '2026-03-25 00:12:08'),
(209, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 66, NULL, NULL, '{\"user_id\":71,\"updated_at\":\"2026-03-25 00:12:08\"}', NULL, '2026-03-25 00:12:08', '2026-03-25 00:12:08'),
(210, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 72, NULL, NULL, '{\"name\":\"mardi\",\"email\":\"83@absensi.test\",\"updated_at\":\"2026-03-25 00:12:08\",\"created_at\":\"2026-03-25 00:12:08\",\"id\":72}', NULL, '2026-03-25 00:12:08', '2026-03-25 00:12:08'),
(211, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 72, NULL, NULL, '{\"karyawan_id\":67}', NULL, '2026-03-25 00:12:08', '2026-03-25 00:12:08'),
(212, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 67, NULL, NULL, '{\"user_id\":72,\"updated_at\":\"2026-03-25 00:12:08\"}', NULL, '2026-03-25 00:12:08', '2026-03-25 00:12:08'),
(213, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 73, NULL, NULL, '{\"name\":\"saepul bahri\",\"email\":\"97@absensi.test\",\"updated_at\":\"2026-03-25 00:12:09\",\"created_at\":\"2026-03-25 00:12:09\",\"id\":73}', NULL, '2026-03-25 00:12:09', '2026-03-25 00:12:09'),
(214, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 73, NULL, NULL, '{\"karyawan_id\":68}', NULL, '2026-03-25 00:12:09', '2026-03-25 00:12:09'),
(215, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 68, NULL, NULL, '{\"user_id\":73,\"updated_at\":\"2026-03-25 00:12:09\"}', NULL, '2026-03-25 00:12:09', '2026-03-25 00:12:09'),
(216, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 74, NULL, NULL, '{\"name\":\"sobirin\",\"email\":\"103@absensi.test\",\"updated_at\":\"2026-03-25 00:12:09\",\"created_at\":\"2026-03-25 00:12:09\",\"id\":74}', NULL, '2026-03-25 00:12:09', '2026-03-25 00:12:09'),
(217, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 74, NULL, NULL, '{\"karyawan_id\":69}', NULL, '2026-03-25 00:12:09', '2026-03-25 00:12:09'),
(218, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 69, NULL, NULL, '{\"user_id\":74,\"updated_at\":\"2026-03-25 00:12:09\"}', NULL, '2026-03-25 00:12:09', '2026-03-25 00:12:09'),
(219, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 75, NULL, NULL, '{\"name\":\"muhammad saeful basri\",\"email\":\"134@absensi.test\",\"updated_at\":\"2026-03-25 00:12:09\",\"created_at\":\"2026-03-25 00:12:09\",\"id\":75}', NULL, '2026-03-25 00:12:09', '2026-03-25 00:12:09'),
(220, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 75, NULL, NULL, '{\"karyawan_id\":70}', NULL, '2026-03-25 00:12:10', '2026-03-25 00:12:10'),
(221, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 70, NULL, NULL, '{\"user_id\":75,\"updated_at\":\"2026-03-25 00:12:10\"}', NULL, '2026-03-25 00:12:10', '2026-03-25 00:12:10'),
(222, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 76, NULL, NULL, '{\"name\":\"ahmad syahroni\",\"email\":\"382@absensi.test\",\"updated_at\":\"2026-03-25 00:12:10\",\"created_at\":\"2026-03-25 00:12:10\",\"id\":76}', NULL, '2026-03-25 00:12:10', '2026-03-25 00:12:10'),
(223, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 76, NULL, NULL, '{\"karyawan_id\":71}', NULL, '2026-03-25 00:12:10', '2026-03-25 00:12:10'),
(224, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 71, NULL, NULL, '{\"user_id\":76,\"updated_at\":\"2026-03-25 00:12:10\"}', NULL, '2026-03-25 00:12:10', '2026-03-25 00:12:10'),
(225, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 77, NULL, NULL, '{\"name\":\"nurdin\",\"email\":\"657@absensi.test\",\"updated_at\":\"2026-03-25 00:12:10\",\"created_at\":\"2026-03-25 00:12:10\",\"id\":77}', NULL, '2026-03-25 00:12:10', '2026-03-25 00:12:10'),
(226, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 77, NULL, NULL, '{\"karyawan_id\":72}', NULL, '2026-03-25 00:12:10', '2026-03-25 00:12:10'),
(227, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 72, NULL, NULL, '{\"user_id\":77,\"updated_at\":\"2026-03-25 00:12:10\"}', NULL, '2026-03-25 00:12:10', '2026-03-25 00:12:10'),
(228, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 78, NULL, NULL, '{\"name\":\"sanian\",\"email\":\"658@absensi.test\",\"updated_at\":\"2026-03-25 00:12:10\",\"created_at\":\"2026-03-25 00:12:10\",\"id\":78}', NULL, '2026-03-25 00:12:10', '2026-03-25 00:12:10'),
(229, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 78, NULL, NULL, '{\"karyawan_id\":73}', NULL, '2026-03-25 00:12:10', '2026-03-25 00:12:10'),
(230, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 73, NULL, NULL, '{\"user_id\":78,\"updated_at\":\"2026-03-25 00:12:10\"}', NULL, '2026-03-25 00:12:10', '2026-03-25 00:12:10'),
(231, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 79, NULL, NULL, '{\"name\":\"ali usman\",\"email\":\"62@absensi.test\",\"updated_at\":\"2026-03-25 00:12:11\",\"created_at\":\"2026-03-25 00:12:11\",\"id\":79}', NULL, '2026-03-25 00:12:11', '2026-03-25 00:12:11'),
(232, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 79, NULL, NULL, '{\"karyawan_id\":74}', NULL, '2026-03-25 00:12:11', '2026-03-25 00:12:11'),
(233, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 74, NULL, NULL, '{\"user_id\":79,\"updated_at\":\"2026-03-25 00:12:11\"}', NULL, '2026-03-25 00:12:11', '2026-03-25 00:12:11'),
(234, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 80, NULL, NULL, '{\"name\":\"saepudin\",\"email\":\"227@absensi.test\",\"updated_at\":\"2026-03-25 00:12:11\",\"created_at\":\"2026-03-25 00:12:11\",\"id\":80}', NULL, '2026-03-25 00:12:11', '2026-03-25 00:12:11'),
(235, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 80, NULL, NULL, '{\"karyawan_id\":75}', NULL, '2026-03-25 00:12:11', '2026-03-25 00:12:11'),
(236, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 75, NULL, NULL, '{\"user_id\":80,\"updated_at\":\"2026-03-25 00:12:11\"}', NULL, '2026-03-25 00:12:11', '2026-03-25 00:12:11'),
(237, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 81, NULL, NULL, '{\"name\":\"asjono\",\"email\":\"66@absensi.test\",\"updated_at\":\"2026-03-25 00:12:11\",\"created_at\":\"2026-03-25 00:12:11\",\"id\":81}', NULL, '2026-03-25 00:12:11', '2026-03-25 00:12:11'),
(238, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 81, NULL, NULL, '{\"karyawan_id\":76}', NULL, '2026-03-25 00:12:11', '2026-03-25 00:12:11'),
(239, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 76, NULL, NULL, '{\"user_id\":81,\"updated_at\":\"2026-03-25 00:12:11\"}', NULL, '2026-03-25 00:12:11', '2026-03-25 00:12:11'),
(240, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 82, NULL, NULL, '{\"name\":\"rohmat\",\"email\":\"136@absensi.test\",\"updated_at\":\"2026-03-25 00:12:12\",\"created_at\":\"2026-03-25 00:12:12\",\"id\":82}', NULL, '2026-03-25 00:12:12', '2026-03-25 00:12:12'),
(241, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 82, NULL, NULL, '{\"karyawan_id\":77}', NULL, '2026-03-25 00:12:12', '2026-03-25 00:12:12'),
(242, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 77, NULL, NULL, '{\"user_id\":82,\"updated_at\":\"2026-03-25 00:12:12\"}', NULL, '2026-03-25 00:12:12', '2026-03-25 00:12:12'),
(243, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 83, NULL, NULL, '{\"name\":\"soleman\",\"email\":\"141@absensi.test\",\"updated_at\":\"2026-03-25 00:12:12\",\"created_at\":\"2026-03-25 00:12:12\",\"id\":83}', NULL, '2026-03-25 00:12:12', '2026-03-25 00:12:12'),
(244, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 83, NULL, NULL, '{\"karyawan_id\":78}', NULL, '2026-03-25 00:12:12', '2026-03-25 00:12:12'),
(245, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 78, NULL, NULL, '{\"user_id\":83,\"updated_at\":\"2026-03-25 00:12:12\"}', NULL, '2026-03-25 00:12:12', '2026-03-25 00:12:12'),
(246, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 84, NULL, NULL, '{\"name\":\"mad tohir\",\"email\":\"260@absensi.test\",\"updated_at\":\"2026-03-25 00:12:12\",\"created_at\":\"2026-03-25 00:12:12\",\"id\":84}', NULL, '2026-03-25 00:12:12', '2026-03-25 00:12:12'),
(247, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 84, NULL, NULL, '{\"karyawan_id\":79}', NULL, '2026-03-25 00:12:12', '2026-03-25 00:12:12'),
(248, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 79, NULL, NULL, '{\"user_id\":84,\"updated_at\":\"2026-03-25 00:12:12\"}', NULL, '2026-03-25 00:12:12', '2026-03-25 00:12:12'),
(249, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 85, NULL, NULL, '{\"name\":\"asmuni\",\"email\":\"262@absensi.test\",\"updated_at\":\"2026-03-25 00:12:13\",\"created_at\":\"2026-03-25 00:12:13\",\"id\":85}', NULL, '2026-03-25 00:12:13', '2026-03-25 00:12:13'),
(250, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 85, NULL, NULL, '{\"karyawan_id\":80}', NULL, '2026-03-25 00:12:13', '2026-03-25 00:12:13'),
(251, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 80, NULL, NULL, '{\"user_id\":85,\"updated_at\":\"2026-03-25 00:12:13\"}', NULL, '2026-03-25 00:12:13', '2026-03-25 00:12:13'),
(252, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 86, NULL, NULL, '{\"name\":\"hasim\",\"email\":\"365@absensi.test\",\"updated_at\":\"2026-03-25 00:12:13\",\"created_at\":\"2026-03-25 00:12:13\",\"id\":86}', NULL, '2026-03-25 00:12:13', '2026-03-25 00:12:13'),
(253, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 86, NULL, NULL, '{\"karyawan_id\":81}', NULL, '2026-03-25 00:12:13', '2026-03-25 00:12:13'),
(254, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 81, NULL, NULL, '{\"user_id\":86,\"updated_at\":\"2026-03-25 00:12:13\"}', NULL, '2026-03-25 00:12:13', '2026-03-25 00:12:13'),
(255, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 87, NULL, NULL, '{\"name\":\"andi\",\"email\":\"182@absensi.test\",\"updated_at\":\"2026-03-25 00:12:13\",\"created_at\":\"2026-03-25 00:12:13\",\"id\":87}', NULL, '2026-03-25 00:12:13', '2026-03-25 00:12:13'),
(256, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 87, NULL, NULL, '{\"karyawan_id\":82}', NULL, '2026-03-25 00:12:13', '2026-03-25 00:12:13'),
(257, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 82, NULL, NULL, '{\"user_id\":87,\"updated_at\":\"2026-03-25 00:12:13\"}', NULL, '2026-03-25 00:12:13', '2026-03-25 00:12:13'),
(258, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 88, NULL, NULL, '{\"name\":\"iman\",\"email\":\"1007@absensi.test\",\"updated_at\":\"2026-03-25 00:12:14\",\"created_at\":\"2026-03-25 00:12:14\",\"id\":88}', NULL, '2026-03-25 00:12:14', '2026-03-25 00:12:14'),
(259, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 88, NULL, NULL, '{\"karyawan_id\":83}', NULL, '2026-03-25 00:12:14', '2026-03-25 00:12:14'),
(260, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 83, NULL, NULL, '{\"user_id\":88,\"updated_at\":\"2026-03-25 00:12:14\"}', NULL, '2026-03-25 00:12:14', '2026-03-25 00:12:14'),
(261, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 89, NULL, NULL, '{\"name\":\"siti muhibah\",\"email\":\"1009@absensi.test\",\"updated_at\":\"2026-03-25 00:12:14\",\"created_at\":\"2026-03-25 00:12:14\",\"id\":89}', NULL, '2026-03-25 00:12:14', '2026-03-25 00:12:14'),
(262, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 89, NULL, NULL, '{\"karyawan_id\":84}', NULL, '2026-03-25 00:12:14', '2026-03-25 00:12:14'),
(263, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 84, NULL, NULL, '{\"user_id\":89,\"updated_at\":\"2026-03-25 00:12:14\"}', NULL, '2026-03-25 00:12:14', '2026-03-25 00:12:14'),
(264, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 90, NULL, NULL, '{\"name\":\"andi\",\"email\":\"280@absensi.test\",\"updated_at\":\"2026-03-25 00:12:14\",\"created_at\":\"2026-03-25 00:12:14\",\"id\":90}', NULL, '2026-03-25 00:12:14', '2026-03-25 00:12:14'),
(265, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 90, NULL, NULL, '{\"karyawan_id\":85}', NULL, '2026-03-25 00:12:14', '2026-03-25 00:12:14'),
(266, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 85, NULL, NULL, '{\"user_id\":90,\"updated_at\":\"2026-03-25 00:12:14\"}', NULL, '2026-03-25 00:12:14', '2026-03-25 00:12:14'),
(267, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 91, NULL, NULL, '{\"name\":\"haerul fahmi\",\"email\":\"423@absensi.test\",\"updated_at\":\"2026-03-25 00:12:15\",\"created_at\":\"2026-03-25 00:12:15\",\"id\":91}', NULL, '2026-03-25 00:12:15', '2026-03-25 00:12:15'),
(268, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 91, NULL, NULL, '{\"karyawan_id\":86}', NULL, '2026-03-25 00:12:15', '2026-03-25 00:12:15'),
(269, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 86, NULL, NULL, '{\"user_id\":91,\"updated_at\":\"2026-03-25 00:12:15\"}', NULL, '2026-03-25 00:12:15', '2026-03-25 00:12:15'),
(270, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 92, NULL, NULL, '{\"name\":\"asman\",\"email\":\"639@absensi.test\",\"updated_at\":\"2026-03-25 00:12:15\",\"created_at\":\"2026-03-25 00:12:15\",\"id\":92}', NULL, '2026-03-25 00:12:15', '2026-03-25 00:12:15'),
(271, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 92, NULL, NULL, '{\"karyawan_id\":87}', NULL, '2026-03-25 00:12:15', '2026-03-25 00:12:15'),
(272, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 87, NULL, NULL, '{\"user_id\":92,\"updated_at\":\"2026-03-25 00:12:15\"}', NULL, '2026-03-25 00:12:15', '2026-03-25 00:12:15'),
(273, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 93, NULL, NULL, '{\"name\":\"hendrik\",\"email\":\"78@absensi.test\",\"updated_at\":\"2026-03-25 00:12:15\",\"created_at\":\"2026-03-25 00:12:15\",\"id\":93}', NULL, '2026-03-25 00:12:15', '2026-03-25 00:12:15'),
(274, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 93, NULL, NULL, '{\"karyawan_id\":88}', NULL, '2026-03-25 00:12:15', '2026-03-25 00:12:15'),
(275, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 88, NULL, NULL, '{\"user_id\":93,\"updated_at\":\"2026-03-25 00:12:15\"}', NULL, '2026-03-25 00:12:15', '2026-03-25 00:12:15'),
(276, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 94, NULL, NULL, '{\"name\":\"nursaleh\",\"email\":\"634@absensi.test\",\"updated_at\":\"2026-03-25 00:12:16\",\"created_at\":\"2026-03-25 00:12:16\",\"id\":94}', NULL, '2026-03-25 00:12:16', '2026-03-25 00:12:16'),
(277, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 94, NULL, NULL, '{\"karyawan_id\":89}', NULL, '2026-03-25 00:12:16', '2026-03-25 00:12:16'),
(278, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 89, NULL, NULL, '{\"user_id\":94,\"updated_at\":\"2026-03-25 00:12:16\"}', NULL, '2026-03-25 00:12:16', '2026-03-25 00:12:16'),
(279, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 95, NULL, NULL, '{\"name\":\"rusli\",\"email\":\"95@absensi.test\",\"updated_at\":\"2026-03-25 00:12:16\",\"created_at\":\"2026-03-25 00:12:16\",\"id\":95}', NULL, '2026-03-25 00:12:16', '2026-03-25 00:12:16'),
(280, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 95, NULL, NULL, '{\"karyawan_id\":90}', NULL, '2026-03-25 00:12:16', '2026-03-25 00:12:16'),
(281, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 90, NULL, NULL, '{\"user_id\":95,\"updated_at\":\"2026-03-25 00:12:16\"}', NULL, '2026-03-25 00:12:16', '2026-03-25 00:12:16'),
(282, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 96, NULL, NULL, '{\"name\":\"novanda syahru siamana putra\",\"email\":\"814@absensi.test\",\"updated_at\":\"2026-03-25 00:12:16\",\"created_at\":\"2026-03-25 00:12:16\",\"id\":96}', NULL, '2026-03-25 00:12:16', '2026-03-25 00:12:16'),
(283, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 96, NULL, NULL, '{\"karyawan_id\":91}', NULL, '2026-03-25 00:12:16', '2026-03-25 00:12:16'),
(284, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 91, NULL, NULL, '{\"user_id\":96,\"updated_at\":\"2026-03-25 00:12:16\"}', NULL, '2026-03-25 00:12:16', '2026-03-25 00:12:16'),
(285, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 97, NULL, NULL, '{\"name\":\"nurdin\",\"email\":\"229@absensi.test\",\"updated_at\":\"2026-03-25 00:12:17\",\"created_at\":\"2026-03-25 00:12:17\",\"id\":97}', NULL, '2026-03-25 00:12:17', '2026-03-25 00:12:17'),
(286, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 97, NULL, NULL, '{\"karyawan_id\":92}', NULL, '2026-03-25 00:12:17', '2026-03-25 00:12:17'),
(287, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 92, NULL, NULL, '{\"user_id\":97,\"updated_at\":\"2026-03-25 00:12:17\"}', NULL, '2026-03-25 00:12:17', '2026-03-25 00:12:17'),
(288, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 98, NULL, NULL, '{\"name\":\"ronal\",\"email\":\"326@absensi.test\",\"updated_at\":\"2026-03-25 00:12:17\",\"created_at\":\"2026-03-25 00:12:17\",\"id\":98}', NULL, '2026-03-25 00:12:17', '2026-03-25 00:12:17'),
(289, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 98, NULL, NULL, '{\"karyawan_id\":93}', NULL, '2026-03-25 00:12:17', '2026-03-25 00:12:17'),
(290, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 93, NULL, NULL, '{\"user_id\":98,\"updated_at\":\"2026-03-25 00:12:17\"}', NULL, '2026-03-25 00:12:17', '2026-03-25 00:12:17'),
(291, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 99, NULL, NULL, '{\"name\":\"ahmad subandi\",\"email\":\"153@absensi.test\",\"updated_at\":\"2026-03-25 00:12:17\",\"created_at\":\"2026-03-25 00:12:17\",\"id\":99}', NULL, '2026-03-25 00:12:17', '2026-03-25 00:12:17'),
(292, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 99, NULL, NULL, '{\"karyawan_id\":94}', NULL, '2026-03-25 00:12:17', '2026-03-25 00:12:17'),
(293, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 94, NULL, NULL, '{\"user_id\":99,\"updated_at\":\"2026-03-25 00:12:17\"}', NULL, '2026-03-25 00:12:17', '2026-03-25 00:12:17'),
(294, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 100, NULL, NULL, '{\"name\":\"muhamad ikhsan\",\"email\":\"154@absensi.test\",\"updated_at\":\"2026-03-25 00:12:18\",\"created_at\":\"2026-03-25 00:12:18\",\"id\":100}', NULL, '2026-03-25 00:12:18', '2026-03-25 00:12:18'),
(295, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 100, NULL, NULL, '{\"karyawan_id\":95}', NULL, '2026-03-25 00:12:18', '2026-03-25 00:12:18'),
(296, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 95, NULL, NULL, '{\"user_id\":100,\"updated_at\":\"2026-03-25 00:12:18\"}', NULL, '2026-03-25 00:12:18', '2026-03-25 00:12:18'),
(297, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 101, NULL, NULL, '{\"name\":\"syariffudin\",\"email\":\"143@absensi.test\",\"updated_at\":\"2026-03-25 00:12:18\",\"created_at\":\"2026-03-25 00:12:18\",\"id\":101}', NULL, '2026-03-25 00:12:18', '2026-03-25 00:12:18'),
(298, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 101, NULL, NULL, '{\"karyawan_id\":96}', NULL, '2026-03-25 00:12:18', '2026-03-25 00:12:18'),
(299, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 96, NULL, NULL, '{\"user_id\":101,\"updated_at\":\"2026-03-25 00:12:18\"}', NULL, '2026-03-25 00:12:18', '2026-03-25 00:12:18'),
(300, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 102, NULL, NULL, '{\"name\":\"abdul hasan\",\"email\":\"640@absensi.test\",\"updated_at\":\"2026-03-25 00:12:18\",\"created_at\":\"2026-03-25 00:12:18\",\"id\":102}', NULL, '2026-03-25 00:12:18', '2026-03-25 00:12:18'),
(301, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 102, NULL, NULL, '{\"karyawan_id\":97}', NULL, '2026-03-25 00:12:18', '2026-03-25 00:12:18'),
(302, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 97, NULL, NULL, '{\"user_id\":102,\"updated_at\":\"2026-03-25 00:12:18\"}', NULL, '2026-03-25 00:12:18', '2026-03-25 00:12:18'),
(303, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 103, NULL, NULL, '{\"name\":\"sutarno\",\"email\":\"111@absensi.test\",\"updated_at\":\"2026-03-25 00:12:18\",\"created_at\":\"2026-03-25 00:12:18\",\"id\":103}', NULL, '2026-03-25 00:12:18', '2026-03-25 00:12:18'),
(304, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 103, NULL, NULL, '{\"karyawan_id\":98}', NULL, '2026-03-25 00:12:18', '2026-03-25 00:12:18'),
(305, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 98, NULL, NULL, '{\"user_id\":103,\"updated_at\":\"2026-03-25 00:12:18\"}', NULL, '2026-03-25 00:12:18', '2026-03-25 00:12:18'),
(306, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 104, NULL, NULL, '{\"name\":\"murna irawan\",\"email\":\"458@absensi.test\",\"updated_at\":\"2026-03-25 00:12:19\",\"created_at\":\"2026-03-25 00:12:19\",\"id\":104}', NULL, '2026-03-25 00:12:19', '2026-03-25 00:12:19'),
(307, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 104, NULL, NULL, '{\"karyawan_id\":99}', NULL, '2026-03-25 00:12:19', '2026-03-25 00:12:19'),
(308, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 99, NULL, NULL, '{\"user_id\":104,\"updated_at\":\"2026-03-25 00:12:19\"}', NULL, '2026-03-25 00:12:19', '2026-03-25 00:12:19'),
(309, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 105, NULL, NULL, '{\"name\":\"alpi gunawan\",\"email\":\"638@absensi.test\",\"updated_at\":\"2026-03-25 00:12:19\",\"created_at\":\"2026-03-25 00:12:19\",\"id\":105}', NULL, '2026-03-25 00:12:19', '2026-03-25 00:12:19'),
(310, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 105, NULL, NULL, '{\"karyawan_id\":100}', NULL, '2026-03-25 00:12:19', '2026-03-25 00:12:19'),
(311, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 100, NULL, NULL, '{\"user_id\":105,\"updated_at\":\"2026-03-25 00:12:19\"}', NULL, '2026-03-25 00:12:19', '2026-03-25 00:12:19'),
(312, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 106, NULL, NULL, '{\"name\":\"nur padzar\",\"email\":\"633@absensi.test\",\"updated_at\":\"2026-03-25 00:12:19\",\"created_at\":\"2026-03-25 00:12:19\",\"id\":106}', NULL, '2026-03-25 00:12:19', '2026-03-25 00:12:19'),
(313, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 106, NULL, NULL, '{\"karyawan_id\":101}', NULL, '2026-03-25 00:12:19', '2026-03-25 00:12:19'),
(314, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 101, NULL, NULL, '{\"user_id\":106,\"updated_at\":\"2026-03-25 00:12:19\"}', NULL, '2026-03-25 00:12:19', '2026-03-25 00:12:19'),
(315, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 107, NULL, NULL, '{\"name\":\"hotib muhaemin majid\",\"email\":\"79@absensi.test\",\"updated_at\":\"2026-03-25 00:12:20\",\"created_at\":\"2026-03-25 00:12:20\",\"id\":107}', NULL, '2026-03-25 00:12:20', '2026-03-25 00:12:20'),
(316, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 107, NULL, NULL, '{\"karyawan_id\":102}', NULL, '2026-03-25 00:12:20', '2026-03-25 00:12:20'),
(317, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 102, NULL, NULL, '{\"user_id\":107,\"updated_at\":\"2026-03-25 00:12:20\"}', NULL, '2026-03-25 00:12:20', '2026-03-25 00:12:20'),
(318, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 108, NULL, NULL, '{\"name\":\"muhamad maulana\",\"email\":\"281@absensi.test\",\"updated_at\":\"2026-03-25 00:12:20\",\"created_at\":\"2026-03-25 00:12:20\",\"id\":108}', NULL, '2026-03-25 00:12:20', '2026-03-25 00:12:20'),
(319, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 108, NULL, NULL, '{\"karyawan_id\":103}', NULL, '2026-03-25 00:12:20', '2026-03-25 00:12:20'),
(320, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 103, NULL, NULL, '{\"user_id\":108,\"updated_at\":\"2026-03-25 00:12:20\"}', NULL, '2026-03-25 00:12:20', '2026-03-25 00:12:20'),
(321, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 109, NULL, NULL, '{\"name\":\"hebi eroviko\",\"email\":\"323@absensi.test\",\"updated_at\":\"2026-03-25 00:12:20\",\"created_at\":\"2026-03-25 00:12:20\",\"id\":109}', NULL, '2026-03-25 00:12:20', '2026-03-25 00:12:20'),
(322, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 109, NULL, NULL, '{\"karyawan_id\":104}', NULL, '2026-03-25 00:12:20', '2026-03-25 00:12:20'),
(323, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 104, NULL, NULL, '{\"user_id\":109,\"updated_at\":\"2026-03-25 00:12:20\"}', NULL, '2026-03-25 00:12:20', '2026-03-25 00:12:20'),
(324, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 110, NULL, NULL, '{\"name\":\"ahmad munajat\",\"email\":\"324@absensi.test\",\"updated_at\":\"2026-03-25 00:12:21\",\"created_at\":\"2026-03-25 00:12:21\",\"id\":110}', NULL, '2026-03-25 00:12:21', '2026-03-25 00:12:21'),
(325, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 110, NULL, NULL, '{\"karyawan_id\":105}', NULL, '2026-03-25 00:12:21', '2026-03-25 00:12:21'),
(326, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 105, NULL, NULL, '{\"user_id\":110,\"updated_at\":\"2026-03-25 00:12:21\"}', NULL, '2026-03-25 00:12:21', '2026-03-25 00:12:21'),
(327, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 111, NULL, NULL, '{\"name\":\"muhamad paridus salam\",\"email\":\"325@absensi.test\",\"updated_at\":\"2026-03-25 00:12:21\",\"created_at\":\"2026-03-25 00:12:21\",\"id\":111}', NULL, '2026-03-25 00:12:21', '2026-03-25 00:12:21'),
(328, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 111, NULL, NULL, '{\"karyawan_id\":106}', NULL, '2026-03-25 00:12:21', '2026-03-25 00:12:21'),
(329, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 106, NULL, NULL, '{\"user_id\":111,\"updated_at\":\"2026-03-25 00:12:21\"}', NULL, '2026-03-25 00:12:21', '2026-03-25 00:12:21'),
(330, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 112, NULL, NULL, '{\"name\":\"muhamad wahyudin\",\"email\":\"632@absensi.test\",\"updated_at\":\"2026-03-25 00:12:21\",\"created_at\":\"2026-03-25 00:12:21\",\"id\":112}', NULL, '2026-03-25 00:12:21', '2026-03-25 00:12:21'),
(331, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 112, NULL, NULL, '{\"karyawan_id\":107}', NULL, '2026-03-25 00:12:21', '2026-03-25 00:12:21'),
(332, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 107, NULL, NULL, '{\"user_id\":112,\"updated_at\":\"2026-03-25 00:12:22\"}', NULL, '2026-03-25 00:12:22', '2026-03-25 00:12:22'),
(333, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 113, NULL, NULL, '{\"name\":\"abdul ajis\",\"email\":\"652@absensi.test\",\"updated_at\":\"2026-03-25 00:12:22\",\"created_at\":\"2026-03-25 00:12:22\",\"id\":113}', NULL, '2026-03-25 00:12:22', '2026-03-25 00:12:22'),
(334, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 113, NULL, NULL, '{\"karyawan_id\":108}', NULL, '2026-03-25 00:12:22', '2026-03-25 00:12:22'),
(335, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 108, NULL, NULL, '{\"user_id\":113,\"updated_at\":\"2026-03-25 00:12:22\"}', NULL, '2026-03-25 00:12:22', '2026-03-25 00:12:22'),
(336, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 114, NULL, NULL, '{\"name\":\"muhamad toni\",\"email\":\"656@absensi.test\",\"updated_at\":\"2026-03-25 00:12:22\",\"created_at\":\"2026-03-25 00:12:22\",\"id\":114}', NULL, '2026-03-25 00:12:22', '2026-03-25 00:12:22'),
(337, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 114, NULL, NULL, '{\"karyawan_id\":109}', NULL, '2026-03-25 00:12:22', '2026-03-25 00:12:22'),
(338, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 109, NULL, NULL, '{\"user_id\":114,\"updated_at\":\"2026-03-25 00:12:22\"}', NULL, '2026-03-25 00:12:22', '2026-03-25 00:12:22'),
(339, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 115, NULL, NULL, '{\"name\":\"rifhaldi hakiki\",\"email\":\"836@absensi.test\",\"updated_at\":\"2026-03-25 00:12:23\",\"created_at\":\"2026-03-25 00:12:23\",\"id\":115}', NULL, '2026-03-25 00:12:23', '2026-03-25 00:12:23'),
(340, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 115, NULL, NULL, '{\"karyawan_id\":110}', NULL, '2026-03-25 00:12:23', '2026-03-25 00:12:23'),
(341, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 110, NULL, NULL, '{\"user_id\":115,\"updated_at\":\"2026-03-25 00:12:23\"}', NULL, '2026-03-25 00:12:23', '2026-03-25 00:12:23'),
(342, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 116, NULL, NULL, '{\"name\":\"muhamad pirman nuralim\",\"email\":\"838@absensi.test\",\"updated_at\":\"2026-03-25 00:12:23\",\"created_at\":\"2026-03-25 00:12:23\",\"id\":116}', NULL, '2026-03-25 00:12:23', '2026-03-25 00:12:23'),
(343, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 116, NULL, NULL, '{\"karyawan_id\":111}', NULL, '2026-03-25 00:12:23', '2026-03-25 00:12:23'),
(344, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 111, NULL, NULL, '{\"user_id\":116,\"updated_at\":\"2026-03-25 00:12:23\"}', NULL, '2026-03-25 00:12:23', '2026-03-25 00:12:23'),
(345, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 117, NULL, NULL, '{\"name\":\"inang\",\"email\":\"913@absensi.test\",\"updated_at\":\"2026-03-25 00:12:23\",\"created_at\":\"2026-03-25 00:12:23\",\"id\":117}', NULL, '2026-03-25 00:12:23', '2026-03-25 00:12:23'),
(346, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 117, NULL, NULL, '{\"karyawan_id\":112}', NULL, '2026-03-25 00:12:23', '2026-03-25 00:12:23'),
(347, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 112, NULL, NULL, '{\"user_id\":117,\"updated_at\":\"2026-03-25 00:12:23\"}', NULL, '2026-03-25 00:12:23', '2026-03-25 00:12:23'),
(348, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 118, NULL, NULL, '{\"name\":\"solahudin\",\"email\":\"745@absensi.test\",\"updated_at\":\"2026-03-25 00:12:24\",\"created_at\":\"2026-03-25 00:12:24\",\"id\":118}', NULL, '2026-03-25 00:12:24', '2026-03-25 00:12:24'),
(349, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 118, NULL, NULL, '{\"karyawan_id\":113}', NULL, '2026-03-25 00:12:24', '2026-03-25 00:12:24'),
(350, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 113, NULL, NULL, '{\"user_id\":118,\"updated_at\":\"2026-03-25 00:12:24\"}', NULL, '2026-03-25 00:12:24', '2026-03-25 00:12:24'),
(351, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 119, NULL, NULL, '{\"name\":\"bimo andriansyah\",\"email\":\"980@absensi.test\",\"updated_at\":\"2026-03-25 00:12:24\",\"created_at\":\"2026-03-25 00:12:24\",\"id\":119}', NULL, '2026-03-25 00:12:24', '2026-03-25 00:12:24'),
(352, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 119, NULL, NULL, '{\"karyawan_id\":114}', NULL, '2026-03-25 00:12:24', '2026-03-25 00:12:24'),
(353, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 114, NULL, NULL, '{\"user_id\":119,\"updated_at\":\"2026-03-25 00:12:24\"}', NULL, '2026-03-25 00:12:24', '2026-03-25 00:12:24'),
(354, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 120, NULL, NULL, '{\"name\":\"mansur\",\"email\":\"128@absensi.test\",\"updated_at\":\"2026-03-25 00:12:25\",\"created_at\":\"2026-03-25 00:12:25\",\"id\":120}', NULL, '2026-03-25 00:12:25', '2026-03-25 00:12:25'),
(355, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 120, NULL, NULL, '{\"karyawan_id\":115}', NULL, '2026-03-25 00:12:25', '2026-03-25 00:12:25'),
(356, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 115, NULL, NULL, '{\"user_id\":120,\"updated_at\":\"2026-03-25 00:12:25\"}', NULL, '2026-03-25 00:12:25', '2026-03-25 00:12:25'),
(357, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 121, NULL, NULL, '{\"name\":\"udin sarudin\",\"email\":\"605@absensi.test\",\"updated_at\":\"2026-03-25 00:12:25\",\"created_at\":\"2026-03-25 00:12:25\",\"id\":121}', NULL, '2026-03-25 00:12:25', '2026-03-25 00:12:25'),
(358, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 121, NULL, NULL, '{\"karyawan_id\":116}', NULL, '2026-03-25 00:12:25', '2026-03-25 00:12:25'),
(359, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 116, NULL, NULL, '{\"user_id\":121,\"updated_at\":\"2026-03-25 00:12:25\"}', NULL, '2026-03-25 00:12:25', '2026-03-25 00:12:25'),
(360, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 122, NULL, NULL, '{\"name\":\"badru tamami\",\"email\":\"635@absensi.test\",\"updated_at\":\"2026-03-25 00:12:25\",\"created_at\":\"2026-03-25 00:12:25\",\"id\":122}', NULL, '2026-03-25 00:12:25', '2026-03-25 00:12:25'),
(361, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 122, NULL, NULL, '{\"karyawan_id\":117}', NULL, '2026-03-25 00:12:25', '2026-03-25 00:12:25'),
(362, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 117, NULL, NULL, '{\"user_id\":122,\"updated_at\":\"2026-03-25 00:12:25\"}', NULL, '2026-03-25 00:12:25', '2026-03-25 00:12:25'),
(363, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 123, NULL, NULL, '{\"name\":\"muhamad nurjen\",\"email\":\"659@absensi.test\",\"updated_at\":\"2026-03-25 00:12:26\",\"created_at\":\"2026-03-25 00:12:26\",\"id\":123}', NULL, '2026-03-25 00:12:26', '2026-03-25 00:12:26'),
(364, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 123, NULL, NULL, '{\"karyawan_id\":118}', NULL, '2026-03-25 00:12:26', '2026-03-25 00:12:26'),
(365, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 118, NULL, NULL, '{\"user_id\":123,\"updated_at\":\"2026-03-25 00:12:26\"}', NULL, '2026-03-25 00:12:26', '2026-03-25 00:12:26'),
(366, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 124, NULL, NULL, '{\"name\":\"toat priyatna\",\"email\":\"785@absensi.test\",\"updated_at\":\"2026-03-25 00:12:26\",\"created_at\":\"2026-03-25 00:12:26\",\"id\":124}', NULL, '2026-03-25 00:12:26', '2026-03-25 00:12:26'),
(367, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 124, NULL, NULL, '{\"karyawan_id\":119}', NULL, '2026-03-25 00:12:26', '2026-03-25 00:12:26'),
(368, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 119, NULL, NULL, '{\"user_id\":124,\"updated_at\":\"2026-03-25 00:12:26\"}', NULL, '2026-03-25 00:12:26', '2026-03-25 00:12:26'),
(369, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 125, NULL, NULL, '{\"name\":\"awan sutiana\",\"email\":\"813@absensi.test\",\"updated_at\":\"2026-03-25 00:12:26\",\"created_at\":\"2026-03-25 00:12:26\",\"id\":125}', NULL, '2026-03-25 00:12:26', '2026-03-25 00:12:26'),
(370, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 125, NULL, NULL, '{\"karyawan_id\":120}', NULL, '2026-03-25 00:12:26', '2026-03-25 00:12:26'),
(371, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 120, NULL, NULL, '{\"user_id\":125,\"updated_at\":\"2026-03-25 00:12:26\"}', NULL, '2026-03-25 00:12:26', '2026-03-25 00:12:26'),
(372, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 126, NULL, NULL, '{\"name\":\"herdiyanto\",\"email\":\"837@absensi.test\",\"updated_at\":\"2026-03-25 00:12:27\",\"created_at\":\"2026-03-25 00:12:27\",\"id\":126}', NULL, '2026-03-25 00:12:27', '2026-03-25 00:12:27'),
(373, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 126, NULL, NULL, '{\"karyawan_id\":121}', NULL, '2026-03-25 00:12:27', '2026-03-25 00:12:27'),
(374, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 121, NULL, NULL, '{\"user_id\":126,\"updated_at\":\"2026-03-25 00:12:27\"}', NULL, '2026-03-25 00:12:27', '2026-03-25 00:12:27'),
(375, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 127, NULL, NULL, '{\"name\":\"dana\",\"email\":\"854@absensi.test\",\"updated_at\":\"2026-03-25 00:12:27\",\"created_at\":\"2026-03-25 00:12:27\",\"id\":127}', NULL, '2026-03-25 00:12:27', '2026-03-25 00:12:27'),
(376, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 127, NULL, NULL, '{\"karyawan_id\":122}', NULL, '2026-03-25 00:12:27', '2026-03-25 00:12:27'),
(377, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 122, NULL, NULL, '{\"user_id\":127,\"updated_at\":\"2026-03-25 00:12:27\"}', NULL, '2026-03-25 00:12:27', '2026-03-25 00:12:27'),
(378, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 128, NULL, NULL, '{\"name\":\"mulyadi\",\"email\":\"873@absensi.test\",\"updated_at\":\"2026-03-25 00:12:27\",\"created_at\":\"2026-03-25 00:12:27\",\"id\":128}', NULL, '2026-03-25 00:12:27', '2026-03-25 00:12:27'),
(379, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 128, NULL, NULL, '{\"karyawan_id\":123}', NULL, '2026-03-25 00:12:27', '2026-03-25 00:12:27'),
(380, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 123, NULL, NULL, '{\"user_id\":128,\"updated_at\":\"2026-03-25 00:12:27\"}', NULL, '2026-03-25 00:12:27', '2026-03-25 00:12:27'),
(381, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 129, NULL, NULL, '{\"name\":\"ahyadi\",\"email\":\"898@absensi.test\",\"updated_at\":\"2026-03-25 00:12:28\",\"created_at\":\"2026-03-25 00:12:28\",\"id\":129}', NULL, '2026-03-25 00:12:28', '2026-03-25 00:12:28'),
(382, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 129, NULL, NULL, '{\"karyawan_id\":124}', NULL, '2026-03-25 00:12:28', '2026-03-25 00:12:28'),
(383, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 124, NULL, NULL, '{\"user_id\":129,\"updated_at\":\"2026-03-25 00:12:28\"}', NULL, '2026-03-25 00:12:28', '2026-03-25 00:12:28'),
(384, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 130, NULL, NULL, '{\"name\":\"muhamad haerul anwar\",\"email\":\"922@absensi.test\",\"updated_at\":\"2026-03-25 00:12:28\",\"created_at\":\"2026-03-25 00:12:28\",\"id\":130}', NULL, '2026-03-25 00:12:28', '2026-03-25 00:12:28'),
(385, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 130, NULL, NULL, '{\"karyawan_id\":125}', NULL, '2026-03-25 00:12:28', '2026-03-25 00:12:28'),
(386, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 125, NULL, NULL, '{\"user_id\":130,\"updated_at\":\"2026-03-25 00:12:28\"}', NULL, '2026-03-25 00:12:28', '2026-03-25 00:12:28'),
(387, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 131, NULL, NULL, '{\"name\":\"rusmawan\",\"email\":\"923@absensi.test\",\"updated_at\":\"2026-03-25 00:12:28\",\"created_at\":\"2026-03-25 00:12:28\",\"id\":131}', NULL, '2026-03-25 00:12:28', '2026-03-25 00:12:28'),
(388, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 131, NULL, NULL, '{\"karyawan_id\":126}', NULL, '2026-03-25 00:12:28', '2026-03-25 00:12:28'),
(389, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 126, NULL, NULL, '{\"user_id\":131,\"updated_at\":\"2026-03-25 00:12:28\"}', NULL, '2026-03-25 00:12:28', '2026-03-25 00:12:28'),
(390, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 132, NULL, NULL, '{\"name\":\"rasta\",\"email\":\"924@absensi.test\",\"updated_at\":\"2026-03-25 00:12:29\",\"created_at\":\"2026-03-25 00:12:29\",\"id\":132}', NULL, '2026-03-25 00:12:29', '2026-03-25 00:12:29'),
(391, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 132, NULL, NULL, '{\"karyawan_id\":127}', NULL, '2026-03-25 00:12:29', '2026-03-25 00:12:29'),
(392, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 127, NULL, NULL, '{\"user_id\":132,\"updated_at\":\"2026-03-25 00:12:29\"}', NULL, '2026-03-25 00:12:29', '2026-03-25 00:12:29'),
(393, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 133, NULL, NULL, '{\"name\":\"hasani sutisna\",\"email\":\"989@absensi.test\",\"updated_at\":\"2026-03-25 00:12:29\",\"created_at\":\"2026-03-25 00:12:29\",\"id\":133}', NULL, '2026-03-25 00:12:29', '2026-03-25 00:12:29'),
(394, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 133, NULL, NULL, '{\"karyawan_id\":128}', NULL, '2026-03-25 00:12:29', '2026-03-25 00:12:29'),
(395, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 128, NULL, NULL, '{\"user_id\":133,\"updated_at\":\"2026-03-25 00:12:29\"}', NULL, '2026-03-25 00:12:29', '2026-03-25 00:12:29'),
(396, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 134, NULL, NULL, '{\"name\":\"septa ryanda putra\",\"email\":\"990@absensi.test\",\"updated_at\":\"2026-03-25 00:12:29\",\"created_at\":\"2026-03-25 00:12:29\",\"id\":134}', NULL, '2026-03-25 00:12:29', '2026-03-25 00:12:29'),
(397, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 134, NULL, NULL, '{\"karyawan_id\":129}', NULL, '2026-03-25 00:12:29', '2026-03-25 00:12:29'),
(398, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 129, NULL, NULL, '{\"user_id\":134,\"updated_at\":\"2026-03-25 00:12:29\"}', NULL, '2026-03-25 00:12:29', '2026-03-25 00:12:29'),
(399, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 135, NULL, NULL, '{\"name\":\"darmanto\",\"email\":\"72@absensi.test\",\"updated_at\":\"2026-03-25 00:12:29\",\"created_at\":\"2026-03-25 00:12:29\",\"id\":135}', NULL, '2026-03-25 00:12:29', '2026-03-25 00:12:29'),
(400, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 135, NULL, NULL, '{\"karyawan_id\":130}', NULL, '2026-03-25 00:12:29', '2026-03-25 00:12:29');

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(401, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 130, NULL, NULL, '{\"user_id\":135,\"updated_at\":\"2026-03-25 00:12:29\"}', NULL, '2026-03-25 00:12:29', '2026-03-25 00:12:29'),
(402, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 136, NULL, NULL, '{\"name\":\"dwi lanto\",\"email\":\"73@absensi.test\",\"updated_at\":\"2026-03-25 00:12:30\",\"created_at\":\"2026-03-25 00:12:30\",\"id\":136}', NULL, '2026-03-25 00:12:30', '2026-03-25 00:12:30'),
(403, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 136, NULL, NULL, '{\"karyawan_id\":131}', NULL, '2026-03-25 00:12:30', '2026-03-25 00:12:30'),
(404, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 131, NULL, NULL, '{\"user_id\":136,\"updated_at\":\"2026-03-25 00:12:30\"}', NULL, '2026-03-25 00:12:30', '2026-03-25 00:12:30'),
(405, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 137, NULL, NULL, '{\"name\":\"rosikin\",\"email\":\"94@absensi.test\",\"updated_at\":\"2026-03-25 00:12:30\",\"created_at\":\"2026-03-25 00:12:30\",\"id\":137}', NULL, '2026-03-25 00:12:30', '2026-03-25 00:12:30'),
(406, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 137, NULL, NULL, '{\"karyawan_id\":132}', NULL, '2026-03-25 00:12:30', '2026-03-25 00:12:30'),
(407, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 132, NULL, NULL, '{\"user_id\":137,\"updated_at\":\"2026-03-25 00:12:30\"}', NULL, '2026-03-25 00:12:30', '2026-03-25 00:12:30'),
(408, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 138, NULL, NULL, '{\"name\":\"suhendi\",\"email\":\"108@absensi.test\",\"updated_at\":\"2026-03-25 00:12:30\",\"created_at\":\"2026-03-25 00:12:30\",\"id\":138}', NULL, '2026-03-25 00:12:30', '2026-03-25 00:12:30'),
(409, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 138, NULL, NULL, '{\"karyawan_id\":133}', NULL, '2026-03-25 00:12:30', '2026-03-25 00:12:30'),
(410, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 133, NULL, NULL, '{\"user_id\":138,\"updated_at\":\"2026-03-25 00:12:30\"}', NULL, '2026-03-25 00:12:30', '2026-03-25 00:12:30'),
(411, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 139, NULL, NULL, '{\"name\":\"nursalim\",\"email\":\"291@absensi.test\",\"updated_at\":\"2026-03-25 00:12:31\",\"created_at\":\"2026-03-25 00:12:31\",\"id\":139}', NULL, '2026-03-25 00:12:31', '2026-03-25 00:12:31'),
(412, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 139, NULL, NULL, '{\"karyawan_id\":134}', NULL, '2026-03-25 00:12:31', '2026-03-25 00:12:31'),
(413, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 134, NULL, NULL, '{\"user_id\":139,\"updated_at\":\"2026-03-25 00:12:31\"}', NULL, '2026-03-25 00:12:31', '2026-03-25 00:12:31'),
(414, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 140, NULL, NULL, '{\"name\":\"hermawan\",\"email\":\"292@absensi.test\",\"updated_at\":\"2026-03-25 00:12:31\",\"created_at\":\"2026-03-25 00:12:31\",\"id\":140}', NULL, '2026-03-25 00:12:31', '2026-03-25 00:12:31'),
(415, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 140, NULL, NULL, '{\"karyawan_id\":135}', NULL, '2026-03-25 00:12:31', '2026-03-25 00:12:31'),
(416, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 135, NULL, NULL, '{\"user_id\":140,\"updated_at\":\"2026-03-25 00:12:31\"}', NULL, '2026-03-25 00:12:31', '2026-03-25 00:12:31'),
(417, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 141, NULL, NULL, '{\"name\":\"rimanto\",\"email\":\"492@absensi.test\",\"updated_at\":\"2026-03-25 00:12:31\",\"created_at\":\"2026-03-25 00:12:31\",\"id\":141}', NULL, '2026-03-25 00:12:31', '2026-03-25 00:12:31'),
(418, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 141, NULL, NULL, '{\"karyawan_id\":136}', NULL, '2026-03-25 00:12:31', '2026-03-25 00:12:31'),
(419, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 136, NULL, NULL, '{\"user_id\":141,\"updated_at\":\"2026-03-25 00:12:31\"}', NULL, '2026-03-25 00:12:31', '2026-03-25 00:12:31'),
(420, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 142, NULL, NULL, '{\"name\":\"fiki handika putra\",\"email\":\"748@absensi.test\",\"updated_at\":\"2026-03-25 00:12:32\",\"created_at\":\"2026-03-25 00:12:32\",\"id\":142}', NULL, '2026-03-25 00:12:32', '2026-03-25 00:12:32'),
(421, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 142, NULL, NULL, '{\"karyawan_id\":137}', NULL, '2026-03-25 00:12:32', '2026-03-25 00:12:32'),
(422, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 137, NULL, NULL, '{\"user_id\":142,\"updated_at\":\"2026-03-25 00:12:32\"}', NULL, '2026-03-25 00:12:32', '2026-03-25 00:12:32'),
(423, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 143, NULL, NULL, '{\"name\":\"muhammad muklis\",\"email\":\"918@absensi.test\",\"updated_at\":\"2026-03-25 00:12:32\",\"created_at\":\"2026-03-25 00:12:32\",\"id\":143}', NULL, '2026-03-25 00:12:32', '2026-03-25 00:12:32'),
(424, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 143, NULL, NULL, '{\"karyawan_id\":138}', NULL, '2026-03-25 00:12:32', '2026-03-25 00:12:32'),
(425, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 138, NULL, NULL, '{\"user_id\":143,\"updated_at\":\"2026-03-25 00:12:32\"}', NULL, '2026-03-25 00:12:32', '2026-03-25 00:12:32'),
(426, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 144, NULL, NULL, '{\"name\":\"m yoga putra pratama\",\"email\":\"919@absensi.test\",\"updated_at\":\"2026-03-25 00:12:32\",\"created_at\":\"2026-03-25 00:12:32\",\"id\":144}', NULL, '2026-03-25 00:12:32', '2026-03-25 00:12:32'),
(427, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 144, NULL, NULL, '{\"karyawan_id\":139}', NULL, '2026-03-25 00:12:32', '2026-03-25 00:12:32'),
(428, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 139, NULL, NULL, '{\"user_id\":144,\"updated_at\":\"2026-03-25 00:12:32\"}', NULL, '2026-03-25 00:12:32', '2026-03-25 00:12:32'),
(429, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 145, NULL, NULL, '{\"name\":\"saepul\",\"email\":\"98@absensi.test\",\"updated_at\":\"2026-03-25 00:12:32\",\"created_at\":\"2026-03-25 00:12:32\",\"id\":145}', NULL, '2026-03-25 00:12:32', '2026-03-25 00:12:32'),
(430, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 145, NULL, NULL, '{\"karyawan_id\":140}', NULL, '2026-03-25 00:12:32', '2026-03-25 00:12:32'),
(431, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 140, NULL, NULL, '{\"user_id\":145,\"updated_at\":\"2026-03-25 00:12:32\"}', NULL, '2026-03-25 00:12:32', '2026-03-25 00:12:32'),
(432, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 146, NULL, NULL, '{\"name\":\"arif sugianto\",\"email\":\"122@absensi.test\",\"updated_at\":\"2026-03-25 00:12:33\",\"created_at\":\"2026-03-25 00:12:33\",\"id\":146}', NULL, '2026-03-25 00:12:33', '2026-03-25 00:12:33'),
(433, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 146, NULL, NULL, '{\"karyawan_id\":141}', NULL, '2026-03-25 00:12:33', '2026-03-25 00:12:33'),
(434, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 141, NULL, NULL, '{\"user_id\":146,\"updated_at\":\"2026-03-25 00:12:33\"}', NULL, '2026-03-25 00:12:33', '2026-03-25 00:12:33'),
(435, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 147, NULL, NULL, '{\"name\":\"latip\",\"email\":\"303@absensi.test\",\"updated_at\":\"2026-03-25 00:12:33\",\"created_at\":\"2026-03-25 00:12:33\",\"id\":147}', NULL, '2026-03-25 00:12:33', '2026-03-25 00:12:33'),
(436, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 147, NULL, NULL, '{\"karyawan_id\":142}', NULL, '2026-03-25 00:12:33', '2026-03-25 00:12:33'),
(437, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 142, NULL, NULL, '{\"user_id\":147,\"updated_at\":\"2026-03-25 00:12:33\"}', NULL, '2026-03-25 00:12:33', '2026-03-25 00:12:33'),
(438, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 148, NULL, NULL, '{\"name\":\"suheriyansyah\",\"email\":\"311@absensi.test\",\"updated_at\":\"2026-03-25 00:12:33\",\"created_at\":\"2026-03-25 00:12:33\",\"id\":148}', NULL, '2026-03-25 00:12:33', '2026-03-25 00:12:33'),
(439, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 148, NULL, NULL, '{\"karyawan_id\":143}', NULL, '2026-03-25 00:12:33', '2026-03-25 00:12:33'),
(440, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 143, NULL, NULL, '{\"user_id\":148,\"updated_at\":\"2026-03-25 00:12:33\"}', NULL, '2026-03-25 00:12:33', '2026-03-25 00:12:33'),
(441, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 149, NULL, NULL, '{\"name\":\"supriatna\",\"email\":\"604@absensi.test\",\"updated_at\":\"2026-03-25 00:12:34\",\"created_at\":\"2026-03-25 00:12:34\",\"id\":149}', NULL, '2026-03-25 00:12:34', '2026-03-25 00:12:34'),
(442, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 149, NULL, NULL, '{\"karyawan_id\":144}', NULL, '2026-03-25 00:12:34', '2026-03-25 00:12:34'),
(443, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 144, NULL, NULL, '{\"user_id\":149,\"updated_at\":\"2026-03-25 00:12:34\"}', NULL, '2026-03-25 00:12:34', '2026-03-25 00:12:34'),
(444, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 150, NULL, NULL, '{\"name\":\"lambar\",\"email\":\"887@absensi.test\",\"updated_at\":\"2026-03-25 00:12:34\",\"created_at\":\"2026-03-25 00:12:34\",\"id\":150}', NULL, '2026-03-25 00:12:34', '2026-03-25 00:12:34'),
(445, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 150, NULL, NULL, '{\"karyawan_id\":145}', NULL, '2026-03-25 00:12:34', '2026-03-25 00:12:34'),
(446, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 145, NULL, NULL, '{\"user_id\":150,\"updated_at\":\"2026-03-25 00:12:34\"}', NULL, '2026-03-25 00:12:34', '2026-03-25 00:12:34'),
(447, 'Resource', 'User Created', 'App\\Models\\User', 'Created', 151, NULL, NULL, '{\"name\":\"muhamad sopian\",\"email\":\"888@absensi.test\",\"updated_at\":\"2026-03-25 00:12:34\",\"created_at\":\"2026-03-25 00:12:34\",\"id\":151}', NULL, '2026-03-25 00:12:34', '2026-03-25 00:12:34'),
(448, 'Resource', 'User Updated', 'App\\Models\\User', 'Updated', 151, NULL, NULL, '{\"karyawan_id\":146}', NULL, '2026-03-25 00:12:34', '2026-03-25 00:12:34'),
(449, 'Resource', 'Karyawan Updated', 'App\\Models\\Karyawan', 'Updated', 146, NULL, NULL, '{\"user_id\":151,\"updated_at\":\"2026-03-25 00:12:34\"}', NULL, '2026-03-25 00:12:34', '2026-03-25 00:12:34'),
(450, 'Access', 'sutiandi wijaya logged in', NULL, 'Login', NULL, 'App\\Models\\User', 6, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/146.0.0.0 Safari\\/537.36 Edg\\/146.0.0.0\"}', NULL, '2026-03-25 00:19:53', '2026-03-25 00:19:53'),
(451, 'Resource', 'User Updated by sutiandi wijaya', 'App\\Models\\User', 'Updated', 6, 'App\\Models\\User', 6, '{\"last_login_at\":\"2026-03-25 00:19:53\",\"updated_at\":\"2026-03-25 00:19:53\"}', NULL, '2026-03-25 00:19:53', '2026-03-25 00:19:53'),
(452, 'Access', 'ade sutrisna logged in', NULL, 'Login', NULL, 'App\\Models\\User', 25, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/146.0.0.0 Safari\\/537.36\"}', NULL, '2026-03-25 00:21:34', '2026-03-25 00:21:34'),
(453, 'Resource', 'User Updated by ade sutrisna', 'App\\Models\\User', 'Updated', 25, 'App\\Models\\User', 25, '{\"last_login_at\":\"2026-03-25 00:21:34\",\"updated_at\":\"2026-03-25 00:21:34\"}', NULL, '2026-03-25 00:21:34', '2026-03-25 00:21:34'),
(454, 'Access', 'satibi logged in', NULL, 'Login', NULL, 'App\\Models\\User', 10, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/146.0.0.0 Safari\\/537.36\"}', NULL, '2026-03-25 01:09:14', '2026-03-25 01:09:14'),
(455, 'Resource', 'User Updated by satibi', 'App\\Models\\User', 'Updated', 10, 'App\\Models\\User', 10, '{\"last_login_at\":\"2026-03-25 01:09:14\",\"updated_at\":\"2026-03-25 01:09:14\"}', NULL, '2026-03-25 01:09:14', '2026-03-25 01:09:14'),
(456, 'Resource', 'User Updated by Admin', 'App\\Models\\User', 'Updated', 25, 'App\\Models\\User', 1, '{\"updated_at\":\"2026-03-25 01:12:44\"}', NULL, '2026-03-25 01:12:44', '2026-03-25 01:12:44'),
(457, 'Access', 'ade sutrisna logged in', NULL, 'Login', NULL, 'App\\Models\\User', 25, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/146.0.0.0 Safari\\/537.36\"}', NULL, '2026-03-25 01:14:20', '2026-03-25 01:14:20'),
(458, 'Resource', 'User Updated by ade sutrisna', 'App\\Models\\User', 'Updated', 25, 'App\\Models\\User', 25, '{\"last_login_at\":\"2026-03-25 01:14:20\",\"updated_at\":\"2026-03-25 01:14:20\"}', NULL, '2026-03-25 01:14:20', '2026-03-25 01:14:20'),
(459, 'Access', 'Admin logged in', NULL, 'Login', NULL, 'App\\Models\\User', 1, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/146.0.0.0 Safari\\/537.36\"}', NULL, '2026-03-26 14:48:44', '2026-03-26 14:48:44'),
(460, 'Access', 'Staff Administrasi logged in', NULL, 'Login', NULL, 'App\\Models\\User', 2, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/146.0.0.0 Safari\\/537.36\"}', NULL, '2026-03-26 14:50:07', '2026-03-26 14:50:07'),
(461, 'Access', 'sutiandi wijaya logged in', NULL, 'Login', NULL, 'App\\Models\\User', 6, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/26.2 Mobile\\/15E148 Safari\\/604.1\"}', NULL, '2026-03-26 14:56:43', '2026-03-26 14:56:43'),
(462, 'Resource', 'User Updated by sutiandi wijaya', 'App\\Models\\User', 'Updated', 6, 'App\\Models\\User', 6, '{\"last_login_at\":\"2026-03-26 14:56:43\",\"updated_at\":\"2026-03-26 14:56:43\"}', NULL, '2026-03-26 14:56:43', '2026-03-26 14:56:43'),
(463, 'Access', 'Staff Kasbon logged in', NULL, 'Login', NULL, 'App\\Models\\User', 3, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/146.0.0.0 Safari\\/537.36\"}', NULL, '2026-03-26 14:59:55', '2026-03-26 14:59:55'),
(464, 'Access', 'Admin logged in', NULL, 'Login', NULL, 'App\\Models\\User', 1, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/146.0.0.0 Safari\\/537.36\"}', NULL, '2026-03-26 15:28:54', '2026-03-26 15:28:54'),
(465, 'Access', 'sutiandi wijaya logged in', NULL, 'Login', NULL, 'App\\Models\\User', 6, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/26.2 Mobile\\/15E148 Safari\\/604.1\"}', NULL, '2026-03-26 15:42:17', '2026-03-26 15:42:17'),
(466, 'Resource', 'User Updated by sutiandi wijaya', 'App\\Models\\User', 'Updated', 6, 'App\\Models\\User', 6, '{\"last_login_at\":\"2026-03-26 15:42:17\",\"updated_at\":\"2026-03-26 15:42:17\"}', NULL, '2026-03-26 15:42:17', '2026-03-26 15:42:17'),
(467, 'Access', 'agus suhaedi logged in', NULL, 'Login', NULL, 'App\\Models\\User', 7, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/26.3 Safari\\/605.1.15\"}', NULL, '2026-03-26 15:46:42', '2026-03-26 15:46:42'),
(468, 'Resource', 'User Updated by agus suhaedi', 'App\\Models\\User', 'Updated', 7, 'App\\Models\\User', 7, '{\"last_login_at\":\"2026-03-26 15:46:42\",\"updated_at\":\"2026-03-26 15:46:42\"}', NULL, '2026-03-26 15:46:42', '2026-03-26 15:46:42'),
(469, 'Access', 'agus suhaedi logged in', NULL, 'Login', NULL, 'App\\Models\\User', 7, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/26.2 Mobile\\/15E148 Safari\\/604.1\"}', NULL, '2026-03-26 15:48:29', '2026-03-26 15:48:29'),
(470, 'Resource', 'User Updated by agus suhaedi', 'App\\Models\\User', 'Updated', 7, 'App\\Models\\User', 7, '{\"last_login_at\":\"2026-03-26 15:48:29\",\"updated_at\":\"2026-03-26 15:48:29\"}', NULL, '2026-03-26 15:48:29', '2026-03-26 15:48:29'),
(471, 'Access', 'sutiandi wijaya logged in', NULL, 'Login', NULL, 'App\\Models\\User', 6, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/26.3 Safari\\/605.1.15\"}', NULL, '2026-03-26 15:48:47', '2026-03-26 15:48:47'),
(472, 'Resource', 'User Updated by sutiandi wijaya', 'App\\Models\\User', 'Updated', 6, 'App\\Models\\User', 6, '{\"last_login_at\":\"2026-03-26 15:48:47\",\"updated_at\":\"2026-03-26 15:48:47\"}', NULL, '2026-03-26 15:48:47', '2026-03-26 15:48:47'),
(473, 'Resource', 'Absensi Created by sutiandi wijaya', 'App\\Models\\Absensi', 'Created', 1, 'App\\Models\\User', 6, '{\"name\":\"sutiandi wijaya\",\"tanggal\":\"2026-03-26\",\"updated_at\":\"2026-03-26 15:50:25\",\"created_at\":\"2026-03-26 15:50:25\",\"id\":1}', NULL, '2026-03-26 15:50:25', '2026-03-26 15:50:25'),
(474, 'Resource', 'Absensi Updated by sutiandi wijaya', 'App\\Models\\Absensi', 'Updated', 1, 'App\\Models\\User', 6, '{\"masuk_pagi\":\"15:50:25\",\"lat\":-6.235011315284277,\"lng\":106.52285379577803,\"accuracy\":16.642403076900514,\"photo_path\":\"absensi\\/112\\/2026-03-26_masuk_pagi_1774515025.jpg\"}', NULL, '2026-03-26 15:50:25', '2026-03-26 15:50:25'),
(475, 'Resource', 'Absensi Updated by Admin', 'App\\Models\\Absensi', 'Updated', 1, 'App\\Models\\User', 1, '{\"updated_at\":\"2026-03-26 16:17:11\",\"is_approved\":true,\"approved_by\":1,\"approved_at\":\"2026-03-26T09:17:11.456239Z\"}', NULL, '2026-03-26 16:17:11', '2026-03-26 16:17:11'),
(476, 'Resource', 'User Updated by sutiandi wijaya', 'App\\Models\\User', 'Updated', 6, 'App\\Models\\User', 6, '{\"updated_at\":\"2026-03-26 16:23:17\"}', NULL, '2026-03-26 16:23:17', '2026-03-26 16:23:17'),
(477, 'Access', 'sutiandi wijaya logged in', NULL, 'Login', NULL, 'App\\Models\\User', 6, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/26.3 Safari\\/605.1.15\"}', NULL, '2026-03-26 16:23:39', '2026-03-26 16:23:39'),
(478, 'Resource', 'User Updated by sutiandi wijaya', 'App\\Models\\User', 'Updated', 6, 'App\\Models\\User', 6, '{\"last_login_at\":\"2026-03-26 16:23:39\",\"updated_at\":\"2026-03-26 16:23:39\"}', NULL, '2026-03-26 16:23:39', '2026-03-26 16:23:39'),
(479, 'Access', 'sutiandi wijaya logged in', NULL, 'Login', NULL, 'App\\Models\\User', 6, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/146.0.0.0 Safari\\/537.36\"}', NULL, '2026-03-26 16:25:14', '2026-03-26 16:25:14'),
(480, 'Resource', 'User Updated by sutiandi wijaya', 'App\\Models\\User', 'Updated', 6, 'App\\Models\\User', 6, '{\"last_login_at\":\"2026-03-26 16:25:14\",\"updated_at\":\"2026-03-26 16:25:14\"}', NULL, '2026-03-26 16:25:14', '2026-03-26 16:25:14'),
(481, 'Access', 'sutiandi wijaya logged in', NULL, 'Login', NULL, 'App\\Models\\User', 6, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/26.2 Mobile\\/15E148 Safari\\/604.1\"}', NULL, '2026-03-26 17:37:06', '2026-03-26 17:37:06'),
(482, 'Resource', 'User Updated by sutiandi wijaya', 'App\\Models\\User', 'Updated', 6, 'App\\Models\\User', 6, '{\"last_login_at\":\"2026-03-26 17:37:06\",\"updated_at\":\"2026-03-26 17:37:06\"}', NULL, '2026-03-26 17:37:06', '2026-03-26 17:37:06'),
(483, 'Access', 'sutiandi wijaya logged in', NULL, 'Login', NULL, 'App\\Models\\User', 6, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/146.0.0.0 Safari\\/537.36\"}', NULL, '2026-03-26 18:05:07', '2026-03-26 18:05:07'),
(484, 'Resource', 'User Updated by sutiandi wijaya', 'App\\Models\\User', 'Updated', 6, 'App\\Models\\User', 6, '{\"last_login_at\":\"2026-03-26 18:05:07\",\"updated_at\":\"2026-03-26 18:05:07\"}', NULL, '2026-03-26 18:05:07', '2026-03-26 18:05:07'),
(485, 'Resource', 'Perizinan Created by sutiandi wijaya', 'App\\Models\\Perizinan', 'Created', 1, 'App\\Models\\User', 6, '{\"karyawan_id\":\"112\",\"jenis\":\"sakit\",\"tanggal_mulai\":\"2026-03-26\",\"tanggal_selesai\":\"2026-03-27\",\"keterangan\":\"bapil\",\"bukti_path\":null,\"is_approved\":false,\"updated_at\":\"2026-03-26 18:15:49\",\"created_at\":\"2026-03-26 18:15:49\",\"id\":1}', NULL, '2026-03-26 18:15:49', '2026-03-26 18:15:49'),
(486, 'Resource', 'Perizinan Updated by Admin', 'App\\Models\\Perizinan', 'Updated', 1, 'App\\Models\\User', 1, '{\"is_approved\":true,\"approved_by\":1,\"approved_at\":\"2026-03-26T11:16:24.839144Z\",\"updated_at\":\"2026-03-26 18:16:24\"}', NULL, '2026-03-26 18:16:24', '2026-03-26 18:16:24'),
(487, 'Resource', 'Perizinan Deleted by Admin', 'App\\Models\\Perizinan', 'Deleted', 1, 'App\\Models\\User', 1, '[]', NULL, '2026-03-26 18:34:13', '2026-03-26 18:34:13'),
(488, 'Resource', 'Perizinan Created by sutiandi wijaya', 'App\\Models\\Perizinan', 'Created', 2, 'App\\Models\\User', 6, '{\"karyawan_id\":1,\"jenis\":\"sakit\",\"tanggal_mulai\":\"2026-03-26\",\"tanggal_selesai\":\"2026-03-27\",\"keterangan\":\"bapil\",\"bukti_path\":null,\"is_approved\":false,\"updated_at\":\"2026-03-26 18:34:33\",\"created_at\":\"2026-03-26 18:34:33\",\"id\":2}', NULL, '2026-03-26 18:34:33', '2026-03-26 18:34:33'),
(489, 'Resource', 'Perizinan Updated by Admin', 'App\\Models\\Perizinan', 'Updated', 2, 'App\\Models\\User', 1, '{\"is_approved\":true,\"approved_by\":1,\"approved_at\":\"2026-03-26T11:34:58.941944Z\",\"updated_at\":\"2026-03-26 18:34:58\"}', NULL, '2026-03-26 18:34:58', '2026-03-26 18:34:58'),
(490, 'Access', 'sutiandi wijaya logged in', NULL, 'Login', NULL, 'App\\Models\\User', 6, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Linux; Android 10; K) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/135.0.0.0 Mobile Safari\\/537.36\"}', NULL, '2026-03-27 00:00:34', '2026-03-27 00:00:34'),
(491, 'Resource', 'User Updated by sutiandi wijaya', 'App\\Models\\User', 'Updated', 6, 'App\\Models\\User', 6, '{\"last_login_at\":\"2026-03-27 00:00:34\",\"updated_at\":\"2026-03-27 00:00:34\"}', NULL, '2026-03-27 00:00:34', '2026-03-27 00:00:34'),
(492, 'Access', 'sutiandi wijaya logged in', NULL, 'Login', NULL, 'App\\Models\\User', 6, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Linux; Android 10; K) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/135.0.0.0 Mobile Safari\\/537.36\"}', NULL, '2026-03-27 00:04:59', '2026-03-27 00:04:59'),
(493, 'Resource', 'User Updated by sutiandi wijaya', 'App\\Models\\User', 'Updated', 6, 'App\\Models\\User', 6, '{\"last_login_at\":\"2026-03-27 00:04:59\",\"updated_at\":\"2026-03-27 00:04:59\"}', NULL, '2026-03-27 00:04:59', '2026-03-27 00:04:59'),
(494, 'Access', 'sutiandi wijaya logged in', NULL, 'Login', NULL, 'App\\Models\\User', 6, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Linux; Android 10; K) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/135.0.0.0 Mobile Safari\\/537.36\"}', NULL, '2026-03-27 00:14:26', '2026-03-27 00:14:26'),
(495, 'Resource', 'User Updated by sutiandi wijaya', 'App\\Models\\User', 'Updated', 6, 'App\\Models\\User', 6, '{\"last_login_at\":\"2026-03-27 00:14:26\",\"updated_at\":\"2026-03-27 00:14:26\"}', NULL, '2026-03-27 00:14:26', '2026-03-27 00:14:26'),
(496, 'Access', 'sutiandi wijaya logged in', NULL, 'Login', NULL, 'App\\Models\\User', 6, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Linux; Android 10; K) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/135.0.0.0 Mobile Safari\\/537.36\"}', NULL, '2026-03-27 00:32:16', '2026-03-27 00:32:16'),
(497, 'Resource', 'User Updated by sutiandi wijaya', 'App\\Models\\User', 'Updated', 6, 'App\\Models\\User', 6, '{\"last_login_at\":\"2026-03-27 00:32:16\",\"updated_at\":\"2026-03-27 00:32:16\"}', NULL, '2026-03-27 00:32:16', '2026-03-27 00:32:16'),
(498, 'Access', 'sutiandi wijaya logged in', NULL, 'Login', NULL, 'App\\Models\\User', 6, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Linux; Android 10; K) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/135.0.0.0 Mobile Safari\\/537.36\"}', NULL, '2026-03-27 00:36:09', '2026-03-27 00:36:09'),
(499, 'Resource', 'User Updated by sutiandi wijaya', 'App\\Models\\User', 'Updated', 6, 'App\\Models\\User', 6, '{\"last_login_at\":\"2026-03-27 00:36:09\",\"updated_at\":\"2026-03-27 00:36:09\"}', NULL, '2026-03-27 00:36:09', '2026-03-27 00:36:09'),
(500, 'Resource', 'Perizinan Created by sutiandi wijaya', 'App\\Models\\Perizinan', 'Created', 3, 'App\\Models\\User', 6, '{\"karyawan_id\":1,\"jenis\":\"cuti\",\"tanggal_mulai\":\"2026-03-27\",\"tanggal_selesai\":\"2026-03-31\",\"keterangan\":\"holiday\",\"bukti_path\":null,\"is_approved\":false,\"updated_at\":\"2026-03-27 01:02:53\",\"created_at\":\"2026-03-27 01:02:53\",\"id\":3}', NULL, '2026-03-27 01:02:53', '2026-03-27 01:02:53'),
(501, 'Resource', 'Perizinan Created by sutiandi wijaya', 'App\\Models\\Perizinan', 'Created', 4, 'App\\Models\\User', 6, '{\"karyawan_id\":1,\"jenis\":\"berduka\",\"tanggal_mulai\":\"2026-03-27\",\"tanggal_selesai\":\"2026-03-30\",\"keterangan\":null,\"bukti_path\":null,\"is_approved\":false,\"updated_at\":\"2026-03-27 01:06:44\",\"created_at\":\"2026-03-27 01:06:44\",\"id\":4}', NULL, '2026-03-27 01:06:44', '2026-03-27 01:06:44'),
(502, 'Resource', 'Absensi Created by sutiandi wijaya', 'App\\Models\\Absensi', 'Created', 2, 'App\\Models\\User', 6, '{\"name\":\"sutiandi wijaya\",\"tanggal\":\"2026-03-27\",\"updated_at\":\"2026-03-27 01:15:45\",\"created_at\":\"2026-03-27 01:15:45\",\"id\":2}', NULL, '2026-03-27 01:15:45', '2026-03-27 01:15:45'),
(503, 'Resource', 'Absensi Updated by sutiandi wijaya', 'App\\Models\\Absensi', 'Updated', 2, 'App\\Models\\User', 6, '{\"masuk_pagi\":\"01:15:45\",\"lat\":-6.3280642,\"lng\":106.45792,\"accuracy\":5.989999771118164,\"photo_path\":\"absensi\\/112\\/2026-03-27_masuk_pagi_1774548945.jpg\"}', NULL, '2026-03-27 01:15:45', '2026-03-27 01:15:45'),
(504, 'Resource', 'Absensi Updated by sutiandi wijaya', 'App\\Models\\Absensi', 'Updated', 2, 'App\\Models\\User', 6, '{\"lat\":-6.3281811,\"lng\":106.4582278,\"accuracy\":20.920000076293945,\"photo_path\":\"absensi\\/112\\/2026-03-27_keluar_siang_1774549017.jpg\",\"keluar_siang\":\"01:16:57\",\"updated_at\":\"2026-03-27 01:16:57\"}', NULL, '2026-03-27 01:16:57', '2026-03-27 01:16:57'),
(505, 'Access', 'Admin logged in', NULL, 'Login', NULL, 'App\\Models\\User', 1, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/146.0.0.0 Safari\\/537.36\"}', NULL, '2026-03-27 01:39:45', '2026-03-27 01:39:45'),
(506, 'Resource', 'Absensi Updated by sutiandi wijaya', 'App\\Models\\Absensi', 'Updated', 2, 'App\\Models\\User', 6, '{\"masuk_siang\":\"01:59:00\",\"lat_masuk_siang\":-6.3280227,\"lng_masuk_siang\":106.4578498,\"accuracy_masuk_siang\":20,\"address_masuk_siang\":\"Tenjo\",\"photo_path_masuk_siang\":\"absensi\\/112\\/2026-03-27_masuk_siang_1774551540.jpg\",\"updated_at\":\"2026-03-27 01:59:00\"}', NULL, '2026-03-27 01:59:00', '2026-03-27 01:59:00'),
(507, 'Resource', 'Absensi Updated by sutiandi wijaya', 'App\\Models\\Absensi', 'Updated', 2, 'App\\Models\\User', 6, '{\"pulang_kerja\":\"02:04:26\",\"lat_pulang_kerja\":-6.3280228,\"lng_pulang_kerja\":106.4578498,\"accuracy_pulang_kerja\":20,\"address_pulang_kerja\":\"Tenjo\",\"photo_path_pulang_kerja\":\"absensi\\/112\\/2026-03-27_pulang_kerja_1774551866.jpg\",\"updated_at\":\"2026-03-27 02:04:26\"}', NULL, '2026-03-27 02:04:26', '2026-03-27 02:04:26'),
(508, 'Access', 'Admin logged in', NULL, 'Login', NULL, 'App\\Models\\User', 1, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/146.0.0.0 Safari\\/537.36\"}', NULL, '2026-03-27 20:21:18', '2026-03-27 20:21:18'),
(509, 'Access', 'sutiandi wijaya logged in', NULL, 'Login', NULL, 'App\\Models\\User', 6, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/146.0.0.0 Safari\\/537.36\"}', NULL, '2026-03-27 20:56:59', '2026-03-27 20:56:59'),
(510, 'Resource', 'User Updated by sutiandi wijaya', 'App\\Models\\User', 'Updated', 6, 'App\\Models\\User', 6, '{\"last_login_at\":\"2026-03-27 20:56:59\",\"updated_at\":\"2026-03-27 20:56:59\"}', NULL, '2026-03-27 20:56:59', '2026-03-27 20:56:59'),
(511, 'Resource', 'Kasbon Loan Created by Admin', 'App\\Models\\KasbonLoan', 'Created', 1, 'App\\Models\\User', 1, '{\"karyawan_id\":1,\"tanggal\":\"2026-03-27T14:50:54.977780Z\",\"pokok\":\"500000.00\",\"tenor\":1,\"cicilan\":\"500000.00\",\"sisa_kali\":1,\"sisa_saldo\":\"500000.00\",\"status\":\"aktif\",\"keterangan\":\"sakit ibu\",\"updated_at\":\"2026-03-27 21:50:54\",\"created_at\":\"2026-03-27 21:50:54\",\"id\":1}', NULL, '2026-03-27 21:50:54', '2026-03-27 21:50:54'),
(512, 'Resource', 'Kasbon Loan Updated by Admin', 'App\\Models\\KasbonLoan', 'Updated', 1, 'App\\Models\\User', 1, '{\"sisa_kali\":0,\"sisa_saldo\":0,\"status\":\"lunas\",\"updated_at\":\"2026-03-27 21:52:30\"}', NULL, '2026-03-27 21:52:30', '2026-03-27 21:52:30'),
(513, 'Resource', 'Kasbon Payment Created by Admin', 'App\\Models\\KasbonPayment', 'Created', 1, 'App\\Models\\User', 1, '{\"kasbon_loan_id\":\"1\",\"tanggal\":\"2026-03-27 00:00:00\",\"periode_label\":\"01 Apr 2026 \\u2013 15 Apr 2026\",\"nominal\":\"500000\",\"sumber\":\"slip\",\"catatan\":null,\"updated_at\":\"2026-03-27 21:52:30\",\"created_at\":\"2026-03-27 21:52:30\",\"id\":1}', NULL, '2026-03-27 21:52:30', '2026-03-27 21:52:30'),
(514, 'Access', 'sutiandi wijaya logged in', NULL, 'Login', NULL, 'App\\Models\\User', 6, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Linux; Android 10; K) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/135.0.0.0 Mobile Safari\\/537.36\"}', NULL, '2026-03-30 21:34:30', '2026-03-30 21:34:30'),
(515, 'Resource', 'User Updated by sutiandi wijaya', 'App\\Models\\User', 'Updated', 6, 'App\\Models\\User', 6, '{\"last_login_at\":\"2026-03-30 21:34:30\",\"updated_at\":\"2026-03-30 21:34:30\"}', NULL, '2026-03-30 21:34:30', '2026-03-30 21:34:30'),
(516, 'Access', 'sutiandi wijaya logged in', NULL, 'Login', NULL, 'App\\Models\\User', 6, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Linux; Android 10; K) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/135.0.0.0 Mobile Safari\\/537.36\"}', NULL, '2026-03-30 21:37:34', '2026-03-30 21:37:34'),
(517, 'Resource', 'User Updated by sutiandi wijaya', 'App\\Models\\User', 'Updated', 6, 'App\\Models\\User', 6, '{\"last_login_at\":\"2026-03-30 21:37:34\",\"updated_at\":\"2026-03-30 21:37:34\"}', NULL, '2026-03-30 21:37:34', '2026-03-30 21:37:34'),
(518, 'Resource', 'Absensi Created by sutiandi wijaya', 'App\\Models\\Absensi', 'Created', 3, 'App\\Models\\User', 6, '{\"name\":\"sutiandi wijaya\",\"tanggal\":\"2026-03-30\",\"updated_at\":\"2026-03-30 21:38:19\",\"created_at\":\"2026-03-30 21:38:19\",\"id\":3}', NULL, '2026-03-30 21:38:19', '2026-03-30 21:38:19'),
(519, 'Resource', 'Absensi Updated by sutiandi wijaya', 'App\\Models\\Absensi', 'Updated', 3, 'App\\Models\\User', 6, '{\"masuk_pagi\":\"21:38:19\",\"lat_masuk_pagi\":-6.3280279,\"lng_masuk_pagi\":106.4578236,\"accuracy_masuk_pagi\":22.5,\"address_masuk_pagi\":\"Tenjo\",\"photo_path_masuk_pagi\":\"absensi\\/112\\/2026-03-30_masuk_pagi_1774881499.jpg\"}', NULL, '2026-03-30 21:38:19', '2026-03-30 21:38:19'),
(520, 'Access', 'Admin logged in', NULL, 'Login', NULL, 'App\\Models\\User', 1, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/146.0.0.0 Safari\\/537.36\"}', NULL, '2026-04-01 13:10:45', '2026-04-01 13:10:45'),
(521, 'Resource', 'Penilaian Kinerja Created by Admin', 'App\\Models\\PenilaianKinerja', 'Created', 1, 'App\\Models\\User', 1, '{\"karyawan_id\":\"1\",\"periode_kenaikan_gaji\":\"MEI 2026\",\"tanggal_penilaian\":\"2026-04-01 00:00:00\",\"disiplin\":\"A\",\"tanggung_jawab\":\"A\",\"kualitas_kerja\":\"B\",\"produktivitas\":\"A\",\"kerja_sama\":\"A\",\"inisiatif\":\"B\",\"nilai_akhir\":95,\"predikat\":\"A\",\"nominal_kenaikan_gaji\":500000,\"catatan\":null,\"penilai_user_id\":1,\"updated_at\":\"2026-04-01 13:29:38\",\"created_at\":\"2026-04-01 13:29:38\",\"id\":1}', NULL, '2026-04-01 13:29:38', '2026-04-01 13:29:38'),
(522, 'Resource', 'Penilaian Kinerja Updated by Admin', 'App\\Models\\PenilaianKinerja', 'Updated', 1, 'App\\Models\\User', 1, '{\"catatan\":\"w kerja\",\"updated_at\":\"2026-04-01 13:29:57\"}', NULL, '2026-04-01 13:29:57', '2026-04-01 13:29:57'),
(523, 'Access', 'sutiandi wijaya logged in', NULL, 'Login', NULL, 'App\\Models\\User', 6, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/146.0.0.0 Safari\\/537.36\"}', NULL, '2026-04-01 13:37:04', '2026-04-01 13:37:04'),
(524, 'Resource', 'User Updated by sutiandi wijaya', 'App\\Models\\User', 'Updated', 6, 'App\\Models\\User', 6, '{\"last_login_at\":\"2026-04-01 13:37:04\",\"updated_at\":\"2026-04-01 13:37:04\"}', NULL, '2026-04-01 13:37:04', '2026-04-01 13:37:04'),
(525, 'Resource', 'Penilaian Kinerja Created by Admin', 'App\\Models\\PenilaianKinerja', 'Created', 2, 'App\\Models\\User', 1, '{\"karyawan_id\":\"1\",\"periode_kenaikan_gaji\":\"MEI 2027\",\"tanggal_penilaian\":\"2026-04-01 00:00:00\",\"disiplin\":\"C\",\"tanggung_jawab\":\"E\",\"kualitas_kerja\":\"C\",\"produktivitas\":\"D\",\"kerja_sama\":\"D\",\"inisiatif\":\"D\",\"nilai_akhir\":57.5,\"predikat\":\"E\",\"nominal_kenaikan_gaji\":0,\"catatan\":\"L kerja\",\"penilai_user_id\":1,\"updated_at\":\"2026-04-01 14:00:44\",\"created_at\":\"2026-04-01 14:00:44\",\"id\":2}', NULL, '2026-04-01 14:00:44', '2026-04-01 14:00:44'),
(526, 'Access', 'sutiandi wijaya logged in', NULL, 'Login', NULL, 'App\\Models\\User', 6, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/146.0.0.0 Safari\\/537.36\"}', NULL, '2026-04-02 13:56:55', '2026-04-02 13:56:55'),
(527, 'Resource', 'User Updated by sutiandi wijaya', 'App\\Models\\User', 'Updated', 6, 'App\\Models\\User', 6, '{\"last_login_at\":\"2026-04-02 13:56:55\",\"updated_at\":\"2026-04-02 13:56:55\"}', NULL, '2026-04-02 13:56:55', '2026-04-02 13:56:55'),
(528, 'Access', 'Admin logged in', NULL, 'Login', NULL, 'App\\Models\\User', 1, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/146.0.0.0 Safari\\/537.36\"}', NULL, '2026-04-02 14:09:39', '2026-04-02 14:09:39'),
(529, 'Resource', 'Absensi Updated by Admin', 'App\\Models\\Absensi', 'Updated', 2, 'App\\Models\\User', 1, '{\"updated_at\":\"2026-04-02 14:10:08\",\"is_approved\":true,\"approved_by\":1,\"approved_at\":\"2026-04-02T07:10:08.961249Z\"}', NULL, '2026-04-02 14:10:08', '2026-04-02 14:10:08'),
(530, 'Resource', 'Absensi Updated by Admin', 'App\\Models\\Absensi', 'Updated', 3, 'App\\Models\\User', 1, '{\"updated_at\":\"2026-04-02 14:10:13\",\"is_approved\":true,\"approved_by\":1,\"approved_at\":\"2026-04-02T07:10:13.636956Z\"}', NULL, '2026-04-02 14:10:13', '2026-04-02 14:10:13'),
(531, 'Access', 'sutiandi wijaya logged in', NULL, 'Login', NULL, 'App\\Models\\User', 6, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/146.0.0.0 Safari\\/537.36\"}', NULL, '2026-04-02 15:07:16', '2026-04-02 15:07:16'),
(532, 'Resource', 'User Updated by sutiandi wijaya', 'App\\Models\\User', 'Updated', 6, 'App\\Models\\User', 6, '{\"last_login_at\":\"2026-04-02 15:07:16\",\"updated_at\":\"2026-04-02 15:07:16\"}', NULL, '2026-04-02 15:07:16', '2026-04-02 15:07:16'),
(533, 'Access', 'sutiandi wijaya logged in', NULL, 'Login', NULL, 'App\\Models\\User', 6, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/26.2 Mobile\\/15E148 Safari\\/604.1\"}', NULL, '2026-04-02 15:23:13', '2026-04-02 15:23:13'),
(534, 'Resource', 'User Updated by sutiandi wijaya', 'App\\Models\\User', 'Updated', 6, 'App\\Models\\User', 6, '{\"last_login_at\":\"2026-04-02 15:23:13\",\"updated_at\":\"2026-04-02 15:23:13\"}', NULL, '2026-04-02 15:23:13', '2026-04-02 15:23:13'),
(535, 'Access', 'sutiandi wijaya logged in', NULL, 'Login', NULL, 'App\\Models\\User', 6, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/26.2 Mobile\\/15E148 Safari\\/604.1\"}', NULL, '2026-04-02 15:57:38', '2026-04-02 15:57:38'),
(536, 'Resource', 'User Updated by sutiandi wijaya', 'App\\Models\\User', 'Updated', 6, 'App\\Models\\User', 6, '{\"last_login_at\":\"2026-04-02 15:57:38\",\"updated_at\":\"2026-04-02 15:57:38\"}', NULL, '2026-04-02 15:57:38', '2026-04-02 15:57:38'),
(537, 'Access', 'sutiandi wijaya logged in', NULL, 'Login', NULL, 'App\\Models\\User', 6, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/26.3 Safari\\/605.1.15\"}', NULL, '2026-04-02 16:16:03', '2026-04-02 16:16:03'),
(538, 'Resource', 'User Updated by sutiandi wijaya', 'App\\Models\\User', 'Updated', 6, 'App\\Models\\User', 6, '{\"last_login_at\":\"2026-04-02 16:16:03\",\"updated_at\":\"2026-04-02 16:16:03\"}', NULL, '2026-04-02 16:16:03', '2026-04-02 16:16:03'),
(539, 'Resource', 'Absensi Created by sutiandi wijaya', 'App\\Models\\Absensi', 'Created', 4, 'App\\Models\\User', 6, '{\"name\":\"sutiandi wijaya\",\"tanggal\":\"2026-04-02\",\"updated_at\":\"2026-04-02 16:16:13\",\"created_at\":\"2026-04-02 16:16:13\",\"id\":4}', NULL, '2026-04-02 16:16:13', '2026-04-02 16:16:13'),
(540, 'Resource', 'Absensi Updated by sutiandi wijaya', 'App\\Models\\Absensi', 'Updated', 4, 'App\\Models\\User', 6, '{\"masuk_pagi\":\"16:16:13\",\"lat_masuk_pagi\":-6.235012107529142,\"lng_masuk_pagi\":106.52285344851931,\"accuracy_masuk_pagi\":16.350600303796284,\"address_masuk_pagi\":\"Cikupa\",\"photo_path_masuk_pagi\":\"absensi\\/112\\/2026-04-02_masuk_pagi_1775121373.jpg\"}', NULL, '2026-04-02 16:16:13', '2026-04-02 16:16:13'),
(541, 'Resource', 'Absensi Updated by Admin', 'App\\Models\\Absensi', 'Updated', 4, 'App\\Models\\User', 1, '{\"updated_at\":\"2026-04-02 16:16:52\",\"is_approved\":false}', NULL, '2026-04-02 16:16:52', '2026-04-02 16:16:52'),
(542, 'Resource', 'Absensi Updated by Admin', 'App\\Models\\Absensi', 'Updated', 4, 'App\\Models\\User', 1, '{\"updated_at\":\"2026-04-02 16:17:22\",\"is_approved\":false}', NULL, '2026-04-02 16:17:22', '2026-04-02 16:17:22'),
(543, 'Resource', 'Absensi Updated by Admin', 'App\\Models\\Absensi', 'Updated', 4, 'App\\Models\\User', 1, '{\"updated_at\":\"2026-04-02 16:24:31\",\"is_approved\":false}', NULL, '2026-04-02 16:24:31', '2026-04-02 16:24:31'),
(544, 'Resource', 'Absensi Updated by Admin', 'App\\Models\\Absensi', 'Updated', 4, 'App\\Models\\User', 1, '{\"updated_at\":\"2026-04-02 16:25:04\",\"is_approved\":true,\"approved_by\":1,\"approved_at\":\"2026-04-02T09:25:04.550186Z\"}', NULL, '2026-04-02 16:25:04', '2026-04-02 16:25:04'),
(545, 'Resource', 'Absensi Updated by sutiandi wijaya', 'App\\Models\\Absensi', 'Updated', 4, 'App\\Models\\User', 6, '{\"keluar_siang\":\"16:25:23\",\"lat_keluar_siang\":-6.235012107529141,\"lng_keluar_siang\":106.52285344851931,\"accuracy_keluar_siang\":14.444093210086066,\"address_keluar_siang\":\"Cikupa\",\"photo_path_keluar_siang\":\"absensi\\/112\\/2026-04-02_keluar_siang_1775121923.jpg\",\"updated_at\":\"2026-04-02 16:25:23\"}', NULL, '2026-04-02 16:25:23', '2026-04-02 16:25:23'),
(546, 'Resource', 'Absensi Deleted by Admin', 'App\\Models\\Absensi', 'Deleted', 4, 'App\\Models\\User', 1, '[]', NULL, '2026-04-02 16:25:41', '2026-04-02 16:25:41'),
(547, 'Resource', 'Absensi Created by sutiandi wijaya', 'App\\Models\\Absensi', 'Created', 5, 'App\\Models\\User', 6, '{\"name\":\"sutiandi wijaya\",\"tanggal\":\"2026-04-02\",\"updated_at\":\"2026-04-02 16:25:54\",\"created_at\":\"2026-04-02 16:25:54\",\"id\":5}', NULL, '2026-04-02 16:25:54', '2026-04-02 16:25:54'),
(548, 'Resource', 'Absensi Updated by sutiandi wijaya', 'App\\Models\\Absensi', 'Updated', 5, 'App\\Models\\User', 6, '{\"masuk_pagi\":\"16:25:54\",\"lat_masuk_pagi\":-6.235012107529141,\"lng_masuk_pagi\":106.52285344851931,\"accuracy_masuk_pagi\":13.159415161480664,\"address_masuk_pagi\":\"Cikupa\",\"photo_path_masuk_pagi\":\"absensi\\/112\\/2026-04-02_masuk_pagi_1775121954.jpg\"}', NULL, '2026-04-02 16:25:54', '2026-04-02 16:25:54'),
(549, 'Resource', 'Absensi Updated by Admin', 'App\\Models\\Absensi', 'Updated', 5, 'App\\Models\\User', 1, '{\"updated_at\":\"2026-04-02 16:28:12\",\"is_approved\":false,\"is_declined\":true,\"declined_reason\":\"skem\",\"declined_by\":1,\"declined_at\":\"2026-04-02T09:28:12.302995Z\"}', NULL, '2026-04-02 16:28:12', '2026-04-02 16:28:12'),
(550, 'Access', 'Admin logged in', NULL, 'Login', NULL, 'App\\Models\\User', 1, '{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/146.0.0.0 Safari\\/537.36\"}', NULL, '2026-04-04 14:30:34', '2026-04-04 14:30:34'),
(551, 'Access', 'Admin logged in', NULL, 'Login', NULL, 'App\\Models\\User', 1, '{\"ip\":\"172.29.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Linux; Android 10; K) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/141.0.0.0 Mobile Safari\\/537.36\"}', NULL, '2026-04-10 03:41:33', '2026-04-10 03:41:33'),
(552, 'Access', 'Admin logged in', NULL, 'Login', NULL, 'App\\Models\\User', 1, '{\"ip\":\"172.29.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/146.0.0.0 Safari\\/537.36\"}', NULL, '2026-04-10 04:31:23', '2026-04-10 04:31:23'),
(553, 'Access', 'Admin logged in', NULL, 'Login', NULL, 'App\\Models\\User', 1, '{\"ip\":\"172.29.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/146.0.0.0 Safari\\/537.36\"}', NULL, '2026-04-10 04:33:24', '2026-04-10 04:33:24');

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cache
-- ----------------------------
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('gaji_cache_livewire-rate-limiter:4b2954116710ff15b8bdb9b9c290f0aeb09ac7a7', 'i:1;', 1775770464),
('gaji_cache_livewire-rate-limiter:4b2954116710ff15b8bdb9b9c290f0aeb09ac7a7:timer', 'i:1775770464;', 1775770464),
('gaji_cache_spatie.permission.cache', 'a:3:{s:5:\"alias\";a:6:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";s:1:\"j\";s:9:\"parent_id\";s:1:\"k\";s:5:\"level\";}s:11:\"permissions\";a:79:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:12:\"view_absensi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:16:\"view_any_absensi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:14:\"create_absensi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:14:\"update_absensi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:14:\"delete_absensi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:18:\"delete_any_absensi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:13:\"view_activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:17:\"view_any_activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:15:\"create_activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:15:\"update_activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:15:\"delete_activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:19:\"delete_any_activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:13:\"view_karyawan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:17:\"view_any_karyawan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:15:\"create_karyawan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:15:\"update_karyawan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:15:\"delete_karyawan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:19:\"delete_any_karyawan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:17:\"view_kasbon::loan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:21:\"view_any_kasbon::loan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:19:\"create_kasbon::loan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:19:\"update_kasbon::loan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:19:\"delete_kasbon::loan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:23:\"delete_any_kasbon::loan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:20:\"view_kasbon::payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:24:\"view_any_kasbon::payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:22:\"create_kasbon::payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:22:\"update_kasbon::payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:22:\"delete_kasbon::payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:26:\"delete_any_kasbon::payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:19:\"page_AbsensiPreview\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:19:\"page_DetailSlipGaji\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:44;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:18:\"page_HistoriCenter\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:45;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:24:\"page_HistoriRekapAbsensi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:46;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:31:\"page_HistoriRekapGajiNonPayroll\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:47;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:28:\"page_HistoriRekapGajiPeriode\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:48;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:20:\"page_HistoriSlipGaji\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:49;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:27:\"page_HistoriTransferPermata\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:50;a:4:{s:1:\"a\";i:51;s:1:\"b\";s:17:\"page_KasbonCenter\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:51;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:19:\"page_KasbonDetailDO\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:52;a:4:{s:1:\"a\";i:53;s:1:\"b\";s:31:\"page_KasbonPengajuanStaffKasbon\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:53;a:4:{s:1:\"a\";i:54;s:1:\"b\";s:30:\"page_KasbonPinjamanStaffKasbon\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:54;a:4:{s:1:\"a\";i:55;s:1:\"b\";s:28:\"page_KasbonVerifikasiAkhirDO\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:55;a:4:{s:1:\"a\";i:56;s:1:\"b\";s:27:\"page_KasbonVerifikasiAwalDO\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:56;a:4:{s:1:\"a\";i:57;s:1:\"b\";s:18:\"page_LaporanKasbon\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:57;a:4:{s:1:\"a\";i:58;s:1:\"b\";s:17:\"page_RekapAbsensi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:58;a:4:{s:1:\"a\";i:59;s:1:\"b\";s:24:\"page_RekapGajiNonPayroll\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:59;a:4:{s:1:\"a\";i:60;s:1:\"b\";s:21:\"page_RekapGajiPeriode\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:60;a:4:{s:1:\"a\";i:61;s:1:\"b\";s:18:\"page_RekapHoCenter\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:61;a:4:{s:1:\"a\";i:62;s:1:\"b\";s:25:\"page_RekapTransferPermata\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:62;a:4:{s:1:\"a\";i:63;s:1:\"b\";s:13:\"page_SlipGaji\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:63;a:4:{s:1:\"a\";i:64;s:1:\"b\";s:19:\"page_SlipGajiHitung\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:64;a:4:{s:1:\"a\";i:65;s:1:\"b\";s:21:\"widget_OverlookWidget\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:65;a:4:{s:1:\"a\";i:66;s:1:\"b\";s:23:\"widget_LatestAccessLogs\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:66;a:4:{s:1:\"a\";i:67;s:1:\"b\";s:14:\"absensi.create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:4;i:1;i:5;i:2;i:6;}}i:67;a:4:{s:1:\"a\";i:68;s:1:\"b\";s:14:\"kasbon.request\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:4;i:1;i:5;i:2;i:6;i:3;i:7;}}i:68;a:4:{s:1:\"a\";i:69;s:1:\"b\";s:19:\"penggajian.view_own\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:4;i:1;i:5;i:2;i:6;}}i:69;a:4:{s:1:\"a\";i:70;s:1:\"b\";s:15:\"kasbon.validate\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:6;}}i:70;a:4:{s:1:\"a\";i:71;s:1:\"b\";s:14:\"kasbon.process\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:6;}}i:71;a:4:{s:1:\"a\";i:72;s:1:\"b\";s:15:\"kasbon.view_all\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:6;}}i:72;a:4:{s:1:\"a\";i:73;s:1:\"b\";s:14:\"kasbon.approve\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:73;a:4:{s:1:\"a\";i:74;s:1:\"b\";s:15:\"karyawan.manage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:5;}}i:74;a:4:{s:1:\"a\";i:75;s:1:\"b\";s:16:\"absensi.validate\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:5;}}i:75;a:4:{s:1:\"a\";i:76;s:1:\"b\";s:18:\"penggajian.process\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:5;}}i:76;a:4:{s:1:\"a\";i:77;s:1:\"b\";s:26:\"penggajian.report_generate\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:5;}}i:77;a:4:{s:1:\"a\";i:78;s:1:\"b\";s:19:\"penggajian.view_all\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:5;i:1;i:7;}}i:78;a:4:{s:1:\"a\";i:79;s:1:\"b\";s:18:\"penggajian.approve\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}}s:5:\"roles\";a:5:{i:0;a:5:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";s:1:\"j\";N;s:1:\"k\";i:1;}i:1;a:5:{s:1:\"a\";i:4;s:1:\"b\";s:8:\"karyawan\";s:1:\"c\";s:3:\"web\";s:1:\"j\";N;s:1:\"k\";i:1;}i:2;a:5:{s:1:\"a\";i:5;s:1:\"b\";s:18:\"staff_administrasi\";s:1:\"c\";s:3:\"web\";s:1:\"j\";i:4;s:1:\"k\";i:2;}i:3;a:5:{s:1:\"a\";i:6;s:1:\"b\";s:12:\"staff_kasbon\";s:1:\"c\";s:3:\"web\";s:1:\"j\";i:4;s:1:\"k\";i:2;}i:4;a:5:{s:1:\"a\";i:7;s:1:\"b\";s:20:\"direktur_operasional\";s:1:\"c\";s:3:\"web\";s:1:\"j\";N;s:1:\"k\";i:3;}}}', 1775853693),
('rku_cache_356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1774371836),
('rku_cache_356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1774371836;', 1774371836),
('rku_cache_livewire-rate-limiter:a2331dbf3d025cc23a020658fcd2d1b45edd8e83', 'i:1;', 1775287894),
('rku_cache_livewire-rate-limiter:a2331dbf3d025cc23a020658fcd2d1b45edd8e83:timer', 'i:1775287894;', 1775287894),
('rku_cache_spatie.permission.cache', 'a:3:{s:5:\"alias\";a:6:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";s:1:\"j\";s:9:\"parent_id\";s:1:\"k\";s:5:\"level\";}s:11:\"permissions\";a:79:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:12:\"view_absensi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:16:\"view_any_absensi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:14:\"create_absensi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:14:\"update_absensi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:14:\"delete_absensi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:18:\"delete_any_absensi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:13:\"view_activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:17:\"view_any_activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:15:\"create_activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:15:\"update_activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:15:\"delete_activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:19:\"delete_any_activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:13:\"view_karyawan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:17:\"view_any_karyawan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:15:\"create_karyawan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:15:\"update_karyawan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:15:\"delete_karyawan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:19:\"delete_any_karyawan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:17:\"view_kasbon::loan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:21:\"view_any_kasbon::loan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:19:\"create_kasbon::loan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:19:\"update_kasbon::loan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:19:\"delete_kasbon::loan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:23:\"delete_any_kasbon::loan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:20:\"view_kasbon::payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:24:\"view_any_kasbon::payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:22:\"create_kasbon::payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:22:\"update_kasbon::payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:22:\"delete_kasbon::payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:26:\"delete_any_kasbon::payment\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:19:\"page_AbsensiPreview\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:19:\"page_DetailSlipGaji\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:44;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:18:\"page_HistoriCenter\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:45;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:24:\"page_HistoriRekapAbsensi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:46;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:31:\"page_HistoriRekapGajiNonPayroll\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:47;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:28:\"page_HistoriRekapGajiPeriode\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:48;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:20:\"page_HistoriSlipGaji\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:49;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:27:\"page_HistoriTransferPermata\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:50;a:4:{s:1:\"a\";i:51;s:1:\"b\";s:17:\"page_KasbonCenter\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:51;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:19:\"page_KasbonDetailDO\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:52;a:4:{s:1:\"a\";i:53;s:1:\"b\";s:31:\"page_KasbonPengajuanStaffKasbon\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:53;a:4:{s:1:\"a\";i:54;s:1:\"b\";s:30:\"page_KasbonPinjamanStaffKasbon\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:54;a:4:{s:1:\"a\";i:55;s:1:\"b\";s:28:\"page_KasbonVerifikasiAkhirDO\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:55;a:4:{s:1:\"a\";i:56;s:1:\"b\";s:27:\"page_KasbonVerifikasiAwalDO\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:56;a:4:{s:1:\"a\";i:57;s:1:\"b\";s:18:\"page_LaporanKasbon\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:57;a:4:{s:1:\"a\";i:58;s:1:\"b\";s:17:\"page_RekapAbsensi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:58;a:4:{s:1:\"a\";i:59;s:1:\"b\";s:24:\"page_RekapGajiNonPayroll\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:59;a:4:{s:1:\"a\";i:60;s:1:\"b\";s:21:\"page_RekapGajiPeriode\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:60;a:4:{s:1:\"a\";i:61;s:1:\"b\";s:18:\"page_RekapHoCenter\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:61;a:4:{s:1:\"a\";i:62;s:1:\"b\";s:25:\"page_RekapTransferPermata\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:62;a:4:{s:1:\"a\";i:63;s:1:\"b\";s:13:\"page_SlipGaji\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:63;a:4:{s:1:\"a\";i:64;s:1:\"b\";s:19:\"page_SlipGajiHitung\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:64;a:4:{s:1:\"a\";i:65;s:1:\"b\";s:21:\"widget_OverlookWidget\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:65;a:4:{s:1:\"a\";i:66;s:1:\"b\";s:23:\"widget_LatestAccessLogs\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:66;a:4:{s:1:\"a\";i:67;s:1:\"b\";s:14:\"absensi.create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:4;i:1;i:5;i:2;i:6;}}i:67;a:4:{s:1:\"a\";i:68;s:1:\"b\";s:14:\"kasbon.request\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:4;i:1;i:5;i:2;i:6;i:3;i:7;}}i:68;a:4:{s:1:\"a\";i:69;s:1:\"b\";s:19:\"penggajian.view_own\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:4;i:1;i:5;i:2;i:6;}}i:69;a:4:{s:1:\"a\";i:70;s:1:\"b\";s:15:\"kasbon.validate\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:6;}}i:70;a:4:{s:1:\"a\";i:71;s:1:\"b\";s:14:\"kasbon.process\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:6;}}i:71;a:4:{s:1:\"a\";i:72;s:1:\"b\";s:15:\"kasbon.view_all\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:6;}}i:72;a:4:{s:1:\"a\";i:73;s:1:\"b\";s:14:\"kasbon.approve\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}i:73;a:4:{s:1:\"a\";i:74;s:1:\"b\";s:15:\"karyawan.manage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:5;}}i:74;a:4:{s:1:\"a\";i:75;s:1:\"b\";s:16:\"absensi.validate\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:5;}}i:75;a:4:{s:1:\"a\";i:76;s:1:\"b\";s:18:\"penggajian.process\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:5;}}i:76;a:4:{s:1:\"a\";i:77;s:1:\"b\";s:26:\"penggajian.report_generate\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:5;}}i:77;a:4:{s:1:\"a\";i:78;s:1:\"b\";s:19:\"penggajian.view_all\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:5;i:1;i:7;}}i:78;a:4:{s:1:\"a\";i:79;s:1:\"b\";s:18:\"penggajian.approve\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:7;}}}s:5:\"roles\";a:5:{i:0;a:5:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";s:1:\"j\";N;s:1:\"k\";i:1;}i:1;a:5:{s:1:\"a\";i:4;s:1:\"b\";s:8:\"karyawan\";s:1:\"c\";s:3:\"web\";s:1:\"j\";N;s:1:\"k\";i:1;}i:2;a:5:{s:1:\"a\";i:5;s:1:\"b\";s:18:\"staff_administrasi\";s:1:\"c\";s:3:\"web\";s:1:\"j\";i:4;s:1:\"k\";i:2;}i:3;a:5:{s:1:\"a\";i:6;s:1:\"b\";s:12:\"staff_kasbon\";s:1:\"c\";s:3:\"web\";s:1:\"j\";i:4;s:1:\"k\";i:2;}i:4;a:5:{s:1:\"a\";i:7;s:1:\"b\";s:20:\"direktur_operasional\";s:1:\"c\";s:3:\"web\";s:1:\"j\";N;s:1:\"k\";i:3;}}}', 1775374234);

-- ----------------------------
-- Table structure for cache_locks
-- ----------------------------
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cache_locks
-- ----------------------------
-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
-- ----------------------------
-- Table structure for gaji
-- ----------------------------
DROP TABLE IF EXISTS `gaji`;
CREATE TABLE `gaji` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_karyawan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_proyek` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `periode_awal` date NOT NULL,
  `periode_akhir` date NOT NULL,
  `tipe_pembayaran` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'payroll',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `gaji_tipe_pembayaran_index` (`tipe_pembayaran`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gaji
-- ----------------------------
INSERT INTO `gaji` (`id`, `id_karyawan`, `nama`, `status`, `lokasi`, `jenis_proyek`, `periode_awal`, `periode_akhir`, `tipe_pembayaran`, `created_at`, `updated_at`) VALUES
(1, '112', 'sutiandi wijaya', 'harian tetap', 'workshop', 'workshop', '2026-03-26', '2026-03-30', 'payroll', '2026-04-02 15:00:39', '2026-04-02 15:00:39');

-- ----------------------------
-- Table structure for gaji_details
-- ----------------------------
DROP TABLE IF EXISTS `gaji_details`;
CREATE TABLE `gaji_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gaji_id` bigint(20) unsigned NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `masuk` decimal(10,2) DEFAULT NULL,
  `faktor` decimal(10,2) DEFAULT NULL,
  `nominal` decimal(15,2) DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `gaji_details_gaji_id_foreign` (`gaji_id`) USING BTREE,
  CONSTRAINT `gaji_details_gaji_id_foreign` FOREIGN KEY (`gaji_id`) REFERENCES `gaji` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gaji_details
-- ----------------------------
INSERT INTO `gaji_details` (`id`, `gaji_id`, `kode`, `keterangan`, `masuk`, `faktor`, `nominal`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 'a', 'Gaji Setengah bln', NULL, NULL, '2375000.00', '2375000.00', '2026-04-02 15:00:39', '2026-04-02 15:00:39'),
(2, 1, 'b', 'Lembur Senin s/d Jumat', '0.00', '1.50', '26023.00', '0.00', '2026-04-02 15:00:39', '2026-04-02 15:00:39'),
(3, 1, 'c', 'Lembur Sabtu', '0.00', '1.50', '26023.00', '0.00', '2026-04-02 15:00:39', '2026-04-02 15:00:39'),
(4, 1, 'd', 'Lembur Minggu', '0.00', '2.00', '26023.00', '0.00', '2026-04-02 15:00:39', '2026-04-02 15:00:39'),
(5, 1, 'e', 'Lembur Hari Besar', '0.00', '2.00', '26023.00', '0.00', '2026-04-02 15:00:39', '2026-04-02 15:00:39'),
(6, 1, 'f', 'Potongan Gaji Tdk Masuk (Perjam)', '0.00', NULL, '26023.00', '0.00', '2026-04-02 15:00:39', '2026-04-02 15:00:39'),
(7, 1, 'g', 'Potongan Gaji Tdk Disiplin', '24.00', NULL, '26023.00', '624552.00', '2026-04-02 15:00:39', '2026-04-02 15:00:39'),
(8, 1, 'jml', 'Jumlah (Subtotal)', NULL, NULL, NULL, '1750448.00', '2026-04-02 15:00:39', '2026-04-02 15:00:39'),
(9, 1, 'h', 'Kasbon (otomatis)', '1.00', '1.00', '500000.00', '500000.00', '2026-04-02 15:00:39', '2026-04-02 15:00:39'),
(10, 1, 'grand', 'Grand Total', NULL, NULL, NULL, '1250448.00', '2026-04-02 15:00:39', '2026-04-02 15:00:39');

-- ----------------------------
-- Table structure for job_batches
-- ----------------------------
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of job_batches
-- ----------------------------
-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `jobs_queue_index` (`queue`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of jobs
-- ----------------------------
-- ----------------------------
-- Table structure for karyawans
-- ----------------------------
DROP TABLE IF EXISTS `karyawans`;
CREATE TABLE `karyawans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `id_karyawan` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('staff','harian tetap','harian lepas') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'harian tetap',
  `lokasi` enum('workshop','proyek') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'workshop',
  `bagian` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_proyek` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gaji_setengah_bulan` decimal(15,2) DEFAULT NULL,
  `gaji_lembur` decimal(15,2) DEFAULT NULL,
  `gaji_harian` decimal(15,2) DEFAULT NULL,
  `uang_makan_lembur_malam` decimal(15,2) DEFAULT NULL,
  `uang_makan_lembur_jalan` decimal(15,2) DEFAULT NULL,
  `potongan_bpjs_kesehatan` decimal(15,2) DEFAULT NULL,
  `potongan_tenaga_kerja` decimal(15,2) DEFAULT NULL,
  `potongan_bpjs_kesehatan_tk` decimal(15,2) DEFAULT NULL,
  `faktor_sj` decimal(4,2) DEFAULT NULL,
  `faktor_sabtu` decimal(4,2) DEFAULT NULL,
  `faktor_minggu` decimal(4,2) DEFAULT NULL,
  `faktor_hari_besar` decimal(4,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `karyawans_id_karyawan_unique` (`id_karyawan`) USING BTREE,
  KEY `karyawans_user_id_foreign` (`user_id`) USING BTREE,
  CONSTRAINT `karyawans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of karyawans
-- ----------------------------
INSERT INTO `karyawans` (`id`, `user_id`, `id_karyawan`, `nama`, `status`, `lokasi`, `bagian`, `jenis_proyek`, `gaji_setengah_bulan`, `gaji_lembur`, `gaji_harian`, `uang_makan_lembur_malam`, `uang_makan_lembur_jalan`, `potongan_bpjs_kesehatan`, `potongan_tenaga_kerja`, `potongan_bpjs_kesehatan_tk`, `faktor_sj`, `faktor_sabtu`, `faktor_minggu`, `faktor_hari_besar`, `created_at`, `updated_at`) VALUES
(1, 6, '112', 'sutiandi wijaya', 'harian tetap', 'workshop', 'logistik (solar)', 'workshop', '2375000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:47'),
(2, 7, '152', 'agus suhaedi', 'harian lepas', 'workshop', 'logistik', 'workshop', NULL, '23125.00', '185000.00', '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:47'),
(3, 8, '185', 'ahmad haerul fadlan', 'harian lepas', 'workshop', 'logistik', 'workshop', NULL, '21875.00', '175000.00', '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:48'),
(4, 9, '148', 'rian adriansyah', 'harian lepas', 'workshop', 'logistik', 'workshop', NULL, '21875.00', '175000.00', '15000.00', '25000.00', '49000.00', NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:48'),
(5, 10, '261', 'satibi', 'harian lepas', 'workshop', 'logistik', 'workshop', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:48'),
(6, 11, '137', 'rosikin', 'harian tetap', 'workshop', 'material', 'workshop', '2500000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:49'),
(7, 12, '256', 'ardiansyah', 'harian lepas', 'workshop', 'material', 'workshop', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, '147000.00', NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:49'),
(8, 13, '440', 'rismanto', 'harian lepas', 'workshop', 'material', 'workshop', NULL, '22500.00', '180000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:49'),
(9, 14, '726', 'abdul hamid', 'harian tetap', 'workshop', 'mechanic electric', 'workshop', '2000000.00', '22989.00', NULL, '15000.00', '25000.00', '49000.00', NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:50'),
(10, 15, '451', 'andri maulana', 'harian tetap', 'workshop', 'helper mechanic electric', 'workshop', '2100000.00', '24138.00', NULL, '15000.00', '25000.00', NULL, '147000.00', NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:50'),
(11, 16, '68', 'badrusalam', 'harian tetap', 'workshop', 'helper mechanic electric', 'workshop', '2264000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:50'),
(12, 17, '442', 'dede amung sunarya', 'harian lepas', 'workshop', 'helper mechanic electric', 'workshop', NULL, '22500.00', '180000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:51'),
(13, 18, '121', 'agus', 'harian lepas', 'workshop', 'helper mechanic equipment', 'workshop', NULL, '23125.00', '185000.00', '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:51'),
(14, 19, '642', 'feri ardiansah', 'harian lepas', 'workshop', 'helper mechanic equipment', 'workshop', NULL, '20000.00', '160000.00', '15000.00', '25000.00', '49000.00', NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:51'),
(15, 20, '86', 'muhamad yunus', 'harian tetap', 'proyek', 'fitter', 'dbl', '2500000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:52'),
(16, 21, '106', 'subekhi', 'harian tetap', 'proyek', 'fitter', 'dbl', '2600000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:52'),
(17, 22, '116', 'yaman', 'harian tetap', 'workshop', 'fitter', 'workshop', '3000000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, '147000.00', NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:52'),
(18, 23, '124', 'eko hariyanto', 'harian tetap', 'proyek', 'fitter', 'parisindo', '2300000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:53'),
(19, 24, '223', 'hadi suryanto', 'harian tetap', 'workshop', 'fitter', 'workshop', '2264000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, '147000.00', NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:53'),
(20, 25, '439', 'ade sutrisna', 'harian tetap', 'workshop', 'fitter', 'workshop', '3150000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:54'),
(21, 26, '881', 'didin nurjayadi', 'harian tetap', 'workshop', 'fitter', 'workshop', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:54'),
(22, 27, '874', 'chairul amin', 'harian lepas', 'proyek', 'fitter', 'kolon ina', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:54'),
(23, 28, '96', 'rusyana', 'harian tetap', 'workshop', 'co fitter', 'workshop', '2100000.00', '24138.00', NULL, '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:55'),
(24, 29, '132', 'muhamad toha', 'harian lepas', 'workshop', 'co fitter', 'workshop', NULL, '23125.00', '185000.00', '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:55'),
(25, 30, '441', 'daud maulana', 'harian lepas', 'workshop', 'helper fitter', 'workshop', NULL, '22500.00', '180000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:55'),
(26, 31, '443', 'ujang', 'harian lepas', 'workshop', 'helper fitter', 'workshop', NULL, '22500.00', '180000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:56'),
(27, 32, '877', 'dedi eta suryana', 'harian lepas', 'proyek', 'helper fitter', 'kolon ina', NULL, '19375.00', '155000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:56'),
(28, 33, '892', 'herman setiawan', 'harian lepas', 'proyek', 'helper fitter', 'parisindo', NULL, '19375.00', '155000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:56'),
(29, 34, '157', 'nurhadi saputra', 'harian lepas', 'proyek', 'helper fitter', 'duta indah', NULL, '19375.00', '155000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:57'),
(30, 35, '905', 'santo', 'harian lepas', 'proyek', 'helper fitter', 'duta indah', NULL, '19375.00', '155000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:57'),
(31, 36, '906', 'ajiteguh suparto', 'harian lepas', 'proyek', 'helper fitter', 'kolon ina', NULL, '19375.00', '155000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:57'),
(32, 37, '993', 'sunarto', 'harian lepas', 'proyek', 'helper fitter', 'kolon ina', NULL, '19375.00', '155000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:57'),
(33, 38, '994', 'endi', 'harian lepas', 'proyek', 'helper fitter', 'kolon ina', NULL, '19375.00', '155000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:58'),
(34, 39, '996', 'ros fitriana', 'harian lepas', 'proyek', 'helper fitter', 'kolon ina', NULL, '19375.00', '155000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:58'),
(35, 40, '1000', 'javar afat', 'harian lepas', 'proyek', 'helper fitter', 'duta indah', NULL, '19375.00', '155000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:58'),
(36, 41, '1001', 'warim', 'harian lepas', 'proyek', 'helper fitter', 'duta indah', NULL, '19375.00', '155000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:59'),
(37, 42, '1002', 'dede rahmat', 'harian lepas', 'proyek', 'helper fitter', 'kolon ina', NULL, '19375.00', '155000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:59'),
(38, 43, '1003', 'bayu atar arrafli', 'harian lepas', 'proyek', 'helper fitter', 'kolon ina', NULL, '19375.00', '155000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:11:59'),
(39, 44, '1005', 'triyono', 'harian lepas', 'proyek', 'helper fitter', 'kolon ina', NULL, '19375.00', '155000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:00'),
(40, 45, '1013', 'asep saefudin', 'harian lepas', 'proyek', 'helper fitter', 'yamatogawa', NULL, '19375.00', '155000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:00'),
(41, 46, '71', 'casmito', 'harian tetap', 'workshop', 'erector', 'workshop', '2425000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:00'),
(42, 47, '75', 'fatakun', 'harian tetap', 'proyek', 'erector', 'pesona alam', '2500000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:00'),
(43, 48, '87', 'mundor', 'harian tetap', 'proyek', 'erector', 'pesona alam', '2625000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, '147000.00', NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:01'),
(44, 49, '93', 'rojin', 'harian tetap', 'proyek', 'erector', 'eastvara', '2550000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:01'),
(45, 50, '109', 'sukardi', 'harian tetap', 'proyek', 'erector', 'eastvara', '2264000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:01'),
(46, 51, '115', 'wiwid sawidi', 'harian tetap', 'proyek', 'erector', 'parisindo', '2300000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:02'),
(47, 52, '118', 'riom choiri', 'harian tetap', 'proyek', 'erector', 'parisindo', '2175000.00', '25000.00', NULL, '15000.00', '25000.00', NULL, '147000.00', NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:02'),
(48, 53, '129', 'mastur', 'harian tetap', 'proyek', 'erector', 'parisindo', '2425000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:02'),
(49, 54, '139', 'siroy', 'harian tetap', 'proyek', 'erector', 'parisindo', '2100000.00', '24138.00', NULL, '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:03'),
(50, 55, '172', 'alan kusumo', 'harian tetap', 'proyek', 'erector', 'indo deli', '2075000.00', '23851.00', NULL, '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:03'),
(51, 56, '202', 'camo', 'harian lepas', 'proyek', 'erector', 'parisindo', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:03'),
(52, 57, '110', 'supardi', 'harian tetap', 'proyek', 'kepala komponen', 'dbl', '2600000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:04'),
(53, 58, '61', 'ahmadi', 'harian tetap', 'proyek', 'komponen', 'cgs', '2600000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:04'),
(54, 59, '74', 'edi sanir', 'harian tetap', 'proyek', 'komponen', 'cgs', '2264000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, '147000.00', NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:04'),
(55, 60, '77', 'hasim bin deung', 'harian tetap', 'proyek', 'komponen', 'pesona alam', '2264000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:05'),
(56, 61, '88', 'nandang', 'harian tetap', 'proyek', 'komponen', 'pesona alam', '2500000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:05'),
(57, 62, '90', 'ohim', 'harian tetap', 'proyek', 'komponen', 'cgs', '2264000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:05'),
(58, 63, '99', 'sahri', 'harian tetap', 'proyek', 'komponen', 'pesona alam', '2264000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, '147000.00', NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:06'),
(59, 64, '104', 'solihin', 'harian tetap', 'proyek', 'komponen', 'cgs', '2264000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:06'),
(60, 65, '105', 'sopian', 'harian tetap', 'proyek', 'komponen', 'cgs', '2275000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:06'),
(61, 66, '133', 'muhammad nur romdon', 'harian tetap', 'proyek', 'komponen', 'pesona alam', '2125000.00', '24425.00', NULL, '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:07'),
(62, 67, '269', 'angga kusuma', 'harian lepas', 'proyek', 'komponen', 'pesona alam', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:07'),
(63, 68, '421', 'yayat sudrajat', 'harian lepas', 'proyek', 'komponen', 'cgs', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:07'),
(64, 69, '534', 'muhdi', 'harian lepas', 'proyek', 'komponen', 'parisindo', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:08'),
(65, 70, '844', 'tajudin', 'harian lepas', 'proyek', 'komponen', 'pesona alam', NULL, '19375.00', '155000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:08'),
(66, 71, '58', 'abdul rohman', 'harian tetap', 'proyek', 'operator mesin pembuat drat', 'epson ilc', '2430000.00', '26023.00', NULL, '15000.00', '25000.00', '49000.00', NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:08'),
(67, 72, '83', 'mardi', 'harian tetap', 'proyek', 'operator mesin pembuat drat', 'epson ilc', '2075000.00', '23851.00', NULL, '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:08'),
(68, 73, '97', 'saepul bahri', 'harian tetap', 'proyek', 'operator mesin pembuat drat', 'epson ilc', '2075000.00', '23851.00', NULL, '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:09'),
(69, 74, '103', 'sobirin', 'harian tetap', 'proyek', 'operator mesin pembuat drat', 'dbl', '2430000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:09'),
(70, 75, '134', 'muhammad saeful basri', 'harian lepas', 'proyek', 'operator mesin pembuat drat', 'dbl', NULL, '23125.00', '185000.00', '15000.00', '25000.00', '49000.00', NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:10'),
(71, 76, '382', 'ahmad syahroni', 'harian lepas', 'proyek', 'operator mesin pembuat drat', 'dbl', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:10'),
(72, 77, '657', 'nurdin', 'harian lepas', 'workshop', 'house keeping', 'workshop', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:10'),
(73, 78, '658', 'sanian', 'harian lepas', 'workshop', 'house keeping', 'workshop', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:10'),
(74, 79, '62', 'ali usman', 'harian lepas', 'workshop', 'house keeping (scrub)', 'workshop', NULL, '22500.00', '180000.00', '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:11'),
(75, 80, '227', 'saepudin', 'harian lepas', 'workshop', 'house keeping (scrub)', 'workshop', NULL, '19375.00', '155000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:11'),
(76, 81, '66', 'asjono', 'harian lepas', 'workshop', 'maintenances team', 'workshop', NULL, '22500.00', '180000.00', '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:11'),
(77, 82, '136', 'rohmat', 'harian lepas', 'workshop', 'maintenances team', 'workshop', NULL, '23750.00', '190000.00', '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:12'),
(78, 83, '141', 'soleman', 'harian lepas', 'workshop', 'maintenances team', 'workshop', NULL, '21875.00', '175000.00', '15000.00', '25000.00', NULL, '147000.00', NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:12'),
(79, 84, '260', 'mad tohir', 'harian lepas', 'workshop', 'maintenances team', 'workshop', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:12'),
(80, 85, '262', 'asmuni', 'harian lepas', 'workshop', 'maintenances team', 'workshop', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:13'),
(81, 86, '365', 'hasim', 'harian lepas', 'workshop', 'maintenances team', 'workshop', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:13'),
(82, 87, '182', 'andi', 'harian tetap', 'workshop', 'office boy', 'workshop', '1750000.00', NULL, NULL, '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:13'),
(83, 88, '1007', 'iman', 'harian tetap', 'workshop', 'office boy', 'workshop', '1425000.00', NULL, NULL, '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:14'),
(84, 89, '1009', 'siti muhibah', 'harian tetap', 'workshop', 'office girl', 'workshop', '1425000.00', NULL, NULL, '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:14'),
(85, 90, '280', 'andi', 'harian lepas', 'workshop', 'operator auto blas', 'workshop', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:14'),
(86, 91, '423', 'haerul fahmi', 'harian lepas', 'proyek', 'operator auto blas', 'pesona alam', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:15'),
(87, 92, '639', 'asman', 'harian lepas', 'workshop', 'operator auto blas', 'workshop', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:15'),
(88, 93, '78', 'hendrik', 'harian tetap', 'proyek', 'operator mesin bandsaw (siku)', 'dbl', '2425000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:15'),
(89, 94, '634', 'nursaleh', 'harian lepas', 'proyek', 'operator mesin bandsaw (siku)', 'dbl', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:16'),
(90, 95, '95', 'rusli', 'harian tetap', 'proyek', 'operator mesin bandsaw (wf, hb)', 'epson', '2300000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:16'),
(91, 96, '814', 'novanda syahru siamana putra', 'harian lepas', 'workshop', 'operator bandsaw wf', 'workshop', NULL, '19375.00', '155000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:16'),
(92, 97, '229', 'nurdin', 'harian tetap', 'proyek', 'asst op mesin bandsaw (wf, hb)', 'epson', '1900000.00', '21839.00', NULL, '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:17'),
(93, 98, '326', 'ronal', 'harian lepas', 'proyek', 'operator cnc', 'dbl', NULL, '21250.00', '170000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:17'),
(94, 99, '153', 'ahmad subandi', 'harian lepas', 'proyek', 'operator cutting plate wb', 'dbl', NULL, '21875.00', '175000.00', '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:17'),
(95, 100, '154', 'muhamad ikhsan', 'harian lepas', 'proyek', 'operator cutting plate wb', 'dbl', NULL, '21875.00', '175000.00', '15000.00', '25000.00', NULL, '147000.00', NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:18'),
(96, 101, '143', 'syariffudin', 'harian tetap', 'proyek', 'operator mesin press wb', 'dbl', '2100000.00', '24138.00', NULL, '15000.00', '25000.00', NULL, '147000.00', NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:18'),
(97, 102, '640', 'abdul hasan', 'harian lepas', 'workshop', 'operator mesin press wb', 'workshop', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:18'),
(98, 103, '111', 'sutarno', 'harian tetap', 'workshop', 'operator mesin setting (assembling)', 'workshop', '2400000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, '147000.00', NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:18'),
(99, 104, '458', 'murna irawan', 'harian lepas', 'workshop', 'operator mesin setting (assembling)', 'workshop', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:19'),
(100, 105, '638', 'alpi gunawan', 'harian lepas', 'workshop', 'operator mesin setting (assembling)', 'workshop', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:19'),
(101, 106, '633', 'nur padzar', 'harian lepas', 'workshop', 'asst op mesin setting (assemb)', 'workshop', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:19'),
(102, 107, '79', 'hotib muhaemin majid', 'harian tetap', 'workshop', 'operator saw automatic', 'workshop', '208184.00', '26023.00', NULL, '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:20'),
(103, 108, '281', 'muhamad maulana', 'harian lepas', 'workshop', 'operator saw manual', 'workshop', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:20'),
(104, 109, '323', 'hebi eroviko', 'harian lepas', 'proyek', 'operator saw manual', 'pesona alam', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:20'),
(105, 110, '324', 'ahmad munajat', 'harian lepas', 'workshop', 'operator saw manual', 'workshop', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:21'),
(106, 111, '325', 'muhamad paridus salam', 'harian lepas', 'workshop', 'operator saw manual', 'workshop', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:21'),
(107, 112, '632', 'muhamad wahyudin', 'harian lepas', 'workshop', 'operator saw manual', 'workshop', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:22'),
(108, 113, '652', 'abdul ajis', 'harian lepas', 'workshop', 'operator saw manual', 'workshop', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:22'),
(109, 114, '656', 'muhamad toni', 'harian lepas', 'workshop', 'operator saw manual', 'workshop', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:22'),
(110, 115, '836', 'rifhaldi hakiki', 'harian lepas', 'workshop', 'operator saw manual', 'workshop', NULL, '19375.00', '155000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:23'),
(111, 116, '838', 'muhamad pirman nuralim', 'harian lepas', 'workshop', 'operator saw manual', 'workshop', NULL, '19375.00', '155000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:23'),
(112, 117, '913', 'inang', 'harian lepas', 'workshop', 'operator saw manual', 'workshop', NULL, '19375.00', '155000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:23'),
(113, 118, '745', 'solahudin', 'harian lepas', 'workshop', 'qc finishing', 'workshop', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:24'),
(114, 119, '980', 'bimo andriansyah', 'harian lepas', 'workshop', 'qc system', 'workshop', NULL, '21250.00', '170000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:24'),
(115, 120, '128', 'mansur', 'harian lepas', 'workshop', 'reformer', 'workshop', NULL, '23125.00', '185000.00', '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:25'),
(116, 121, '605', 'udin sarudin', 'harian lepas', 'workshop', 'painter', 'workshop', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:25'),
(117, 122, '635', 'badru tamami', 'harian lepas', 'proyek', 'painter', 'pesona alam', NULL, '19375.00', '155000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:25'),
(118, 123, '659', 'muhamad nurjen', 'harian lepas', 'proyek', 'painter', 'dbl', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:26'),
(119, 124, '785', 'toat priyatna', 'harian lepas', 'proyek', 'painter', 'duta indah', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:26'),
(120, 125, '813', 'awan sutiana', 'harian lepas', 'proyek', 'painter', 'cgs', NULL, '19375.00', '155000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:26'),
(121, 126, '837', 'herdiyanto', 'harian lepas', 'proyek', 'painter', 'cgs', NULL, '19375.00', '155000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:27'),
(122, 127, '854', 'dana', 'harian lepas', 'proyek', 'painter', 'cgs', NULL, '19375.00', '155000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:27'),
(123, 128, '873', 'mulyadi', 'harian lepas', 'proyek', 'painter', 'dbl', NULL, '25000.00', '200000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:27'),
(124, 129, '898', 'ahyadi', 'harian lepas', 'proyek', 'painter', 'pesona alam', NULL, '25000.00', '200000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:28'),
(125, 130, '922', 'muhamad haerul anwar', 'harian lepas', 'proyek', 'painter', 'pesona alam', NULL, '19375.00', '155000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:28'),
(126, 131, '923', 'rusmawan', 'harian lepas', 'proyek', 'painter', 'pesona alam', NULL, '19375.00', '155000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:28'),
(127, 132, '924', 'rasta', 'harian lepas', 'proyek', 'painter', 'pesona alam', NULL, '25000.00', '200000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:29'),
(128, 133, '989', 'hasani sutisna', 'harian lepas', 'proyek', 'painter', 'pesona alam', NULL, '25000.00', '200000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:29'),
(129, 134, '990', 'septa ryanda putra', 'harian lepas', 'proyek', 'painter', 'dbl', NULL, '19375.00', '155000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:29'),
(130, 135, '72', 'darmanto', 'harian tetap', 'proyek', 'unloading work', 'cgs', '2700000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:29'),
(131, 136, '73', 'dwi lanto', 'harian tetap', 'proyek', 'unloading work', 'pesona alam', '2450000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:30'),
(132, 137, '94', 'rosikin', 'harian tetap', 'proyek', 'unloading work', 'pesona alam', '2264000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:30'),
(133, 138, '108', 'suhendi', 'harian tetap', 'proyek', 'unloading work', 'pesona alam', '2264000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:30'),
(134, 139, '291', 'nursalim', 'harian lepas', 'proyek', 'unloading work', 'pesona alam', NULL, '20625.00', '165000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:31'),
(135, 140, '292', 'hermawan', 'harian lepas', 'proyek', 'unloading work', 'pesona alam', NULL, '20625.00', '165000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:31'),
(136, 141, '492', 'rimanto', 'harian lepas', 'proyek', 'unloading work', 'dbl', NULL, '20625.00', '165000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:31'),
(137, 142, '748', 'fiki handika putra', 'harian lepas', 'proyek', 'unloading work', 'dbl', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:32'),
(138, 143, '918', 'muhammad muklis', 'harian lepas', 'proyek', 'unloading work', 'dbl', NULL, '19375.00', '155000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:32'),
(139, 144, '919', 'm yoga putra pratama', 'harian lepas', 'proyek', 'unloading work', 'cgs', NULL, '19375.00', '155000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:32'),
(140, 145, '98', 'saepul', 'harian tetap', 'workshop', 'welder', 'workshop', '2264000.00', '26023.00', NULL, '15000.00', '25000.00', '49000.00', NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:32'),
(141, 146, '122', 'arif sugianto', 'harian tetap', 'proyek', 'welder', 'indo deli', '2300000.00', '26023.00', NULL, '15000.00', '25000.00', NULL, NULL, '196000.00', '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:33'),
(142, 147, '303', 'latip', 'harian lepas', 'workshop', 'welder', 'workshop', NULL, '21250.00', '170000.00', '15000.00', '25000.00', '49000.00', NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:33'),
(143, 148, '311', 'suheriyansyah', 'harian lepas', 'workshop', 'welder', 'workshop', NULL, '23125.00', '185000.00', '15000.00', '25000.00', '49000.00', NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:33'),
(144, 149, '604', 'supriatna', 'harian lepas', 'proyek', 'welder', 'pesona alam', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:34'),
(145, 150, '887', 'lambar', 'harian lepas', 'proyek', 'welder', 'dbl', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:34'),
(146, 151, '888', 'muhamad sopian', 'harian lepas', 'proyek', 'welder', 'dbl', NULL, '20000.00', '160000.00', '15000.00', '25000.00', NULL, NULL, NULL, '1.50', '1.50', '2.00', '2.00', NULL, '2026-03-25 00:12:34');

-- ----------------------------
-- Table structure for kasbon_loans
-- ----------------------------
DROP TABLE IF EXISTS `kasbon_loans`;
CREATE TABLE `kasbon_loans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `karyawan_id` bigint(20) unsigned NOT NULL,
  `tanggal` date NOT NULL,
  `pokok` decimal(14,2) NOT NULL,
  `tenor` int(10) unsigned NOT NULL,
  `cicilan` decimal(14,2) NOT NULL,
  `sisa_kali` int(10) unsigned NOT NULL,
  `sisa_saldo` decimal(14,2) NOT NULL,
  `status` enum('aktif','lunas','ditutup') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aktif',
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_awal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `status_akhir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `prioritas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_awal_by` bigint(20) unsigned DEFAULT NULL,
  `approved_awal_at` timestamp NULL DEFAULT NULL,
  `approved_akhir_by` bigint(20) unsigned DEFAULT NULL,
  `approved_akhir_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `kasbon_loans_karyawan_id_foreign` (`karyawan_id`) USING BTREE,
  KEY `kasbon_loans_approved_awal_by_foreign` (`approved_awal_by`) USING BTREE,
  KEY `kasbon_loans_approved_akhir_by_foreign` (`approved_akhir_by`) USING BTREE,
  CONSTRAINT `kasbon_loans_approved_akhir_by_foreign` FOREIGN KEY (`approved_akhir_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `kasbon_loans_approved_awal_by_foreign` FOREIGN KEY (`approved_awal_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `kasbon_loans_karyawan_id_foreign` FOREIGN KEY (`karyawan_id`) REFERENCES `karyawans` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of kasbon_loans
-- ----------------------------
INSERT INTO `kasbon_loans` (`id`, `karyawan_id`, `tanggal`, `pokok`, `tenor`, `cicilan`, `sisa_kali`, `sisa_saldo`, `status`, `keterangan`, `created_at`, `updated_at`, `status_awal`, `status_akhir`, `prioritas`, `approved_awal_by`, `approved_awal_at`, `approved_akhir_by`, `approved_akhir_at`) VALUES
(1, 1, '2026-03-27', '500000.00', 1, '500000.00', 0, '0.00', 'lunas', 'sakit ibu', '2026-03-27 21:50:54', '2026-03-27 21:52:30', 'draft', 'draft', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for kasbon_payments
-- ----------------------------
DROP TABLE IF EXISTS `kasbon_payments`;
CREATE TABLE `kasbon_payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kasbon_loan_id` bigint(20) unsigned NOT NULL,
  `tanggal` date NOT NULL,
  `nominal` decimal(14,2) NOT NULL,
  `sumber` enum('slip','manual') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'slip',
  `slip_gaji_id` bigint(20) unsigned DEFAULT NULL,
  `periode_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `kasbon_payments_kasbon_loan_id_foreign` (`kasbon_loan_id`) USING BTREE,
  KEY `kasbon_payments_slip_gaji_id_foreign` (`slip_gaji_id`) USING BTREE,
  CONSTRAINT `kasbon_payments_kasbon_loan_id_foreign` FOREIGN KEY (`kasbon_loan_id`) REFERENCES `kasbon_loans` (`id`) ON DELETE CASCADE,
  CONSTRAINT `kasbon_payments_slip_gaji_id_foreign` FOREIGN KEY (`slip_gaji_id`) REFERENCES `gaji` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of kasbon_payments
-- ----------------------------
INSERT INTO `kasbon_payments` (`id`, `kasbon_loan_id`, `tanggal`, `nominal`, `sumber`, `slip_gaji_id`, `periode_label`, `catatan`, `created_at`, `updated_at`) VALUES
(1, 1, '2026-03-27', '500000.00', 'slip', 1, '16–Akhir Mar 2026', NULL, '2026-03-27 21:52:30', '2026-04-02 15:00:39');

-- ----------------------------
-- Table structure for kasbon_requests
-- ----------------------------
DROP TABLE IF EXISTS `kasbon_requests`;
CREATE TABLE `kasbon_requests` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `karyawan_id` bigint(20) unsigned NOT NULL,
  `tanggal_pengajuan` date NOT NULL DEFAULT '2026-03-25',
  `nominal` decimal(15,2) NOT NULL,
  `tenor` int(11) NOT NULL,
  `cicilan` decimal(15,2) DEFAULT NULL,
  `alasan_pengajuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_awal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `status_akhir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `prioritas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catatan_staff` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified_by` bigint(20) unsigned DEFAULT NULL,
  `verified_at` timestamp NULL DEFAULT NULL,
  `approved_awal_by` bigint(20) unsigned DEFAULT NULL,
  `approved_awal_at` timestamp NULL DEFAULT NULL,
  `approved_akhir_by` bigint(20) unsigned DEFAULT NULL,
  `approved_akhir_at` timestamp NULL DEFAULT NULL,
  `kasbon_loan_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `kasbon_requests_karyawan_id_foreign` (`karyawan_id`) USING BTREE,
  KEY `kasbon_requests_verified_by_foreign` (`verified_by`) USING BTREE,
  KEY `kasbon_requests_approved_awal_by_foreign` (`approved_awal_by`) USING BTREE,
  KEY `kasbon_requests_approved_akhir_by_foreign` (`approved_akhir_by`) USING BTREE,
  KEY `kasbon_requests_kasbon_loan_id_foreign` (`kasbon_loan_id`) USING BTREE,
  CONSTRAINT `kasbon_requests_approved_akhir_by_foreign` FOREIGN KEY (`approved_akhir_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `kasbon_requests_approved_awal_by_foreign` FOREIGN KEY (`approved_awal_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `kasbon_requests_karyawan_id_foreign` FOREIGN KEY (`karyawan_id`) REFERENCES `karyawans` (`id`) ON DELETE CASCADE,
  CONSTRAINT `kasbon_requests_kasbon_loan_id_foreign` FOREIGN KEY (`kasbon_loan_id`) REFERENCES `kasbon_loans` (`id`) ON DELETE SET NULL,
  CONSTRAINT `kasbon_requests_verified_by_foreign` FOREIGN KEY (`verified_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of kasbon_requests
-- ----------------------------
INSERT INTO `kasbon_requests` (`id`, `karyawan_id`, `tanggal_pengajuan`, `nominal`, `tenor`, `cicilan`, `alasan_pengajuan`, `status_awal`, `status_akhir`, `prioritas`, `catatan_staff`, `verified_by`, `verified_at`, `approved_awal_by`, `approved_awal_at`, `approved_akhir_by`, `approved_akhir_at`, `kasbon_loan_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2026-03-26', '500000.00', 1, '500000.00', 'sakit ibu', 'approved_do_awal', 'approved_do_akhir', 'tinggi', 'bulan depan bayar', 1, '2026-03-27 21:47:54', 1, '2026-03-27 21:49:16', 1, '2026-03-27 21:50:54', 1, '2026-03-26 14:58:56', '2026-03-27 21:50:54'),
(2, 1, '2026-03-27', '100000.00', 2, '50000.00', 'pinjol', 'rejected_do_awal', 'draft', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-27 01:02:15', '2026-03-27 21:48:16');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_04_12_082932_create_permission_tables', 1),
(5, '2025_04_12_083218_create_activity_log_table', 1),
(6, '2025_04_12_083219_add_event_column_to_activity_log_table', 1),
(7, '2025_04_12_083220_add_batch_uuid_column_to_activity_log_table', 1),
(8, '2025_04_12_083341_add_themes_settings_to_users_table', 1),
(9, '2025_04_29_095226_create_absensis_table', 1),
(10, '2025_05_08_094144_create_karyawans_table', 1),
(11, '2025_06_20_091013_create_absensi_rekaps_table', 1),
(12, '2025_06_26_091806_create_gaji_table', 1),
(13, '2025_07_02_184503_create_gaji_details_table', 1),
(14, '2025_08_15_095447_create_kasbon_loans_table', 1),
(15, '2025_08_15_123621_create_kasbon_payments_table', 1),
(16, '2025_08_19_123036_add_tipe_pembayaran_to_gaji_table', 1),
(17, '2025_08_22_115940_create_rekap_gaji_periods_table', 1),
(18, '2025_08_22_115950_create_rekap_gaji_period_rows_table', 1),
(19, '2025_08_25_083546_create_rekap_transfer_permatas_table', 1),
(20, '2025_08_25_083602_create_rekap_transfer_permata_rows_table', 1),
(21, '2025_08_26_124841_create_rekap_gaji_non_payrolls_table', 1),
(22, '2025_08_26_124849_create_rekap_gaji_non_payroll_rows_table', 1),
(23, '2025_12_29_134736_drop_periode_awal_akhir_from_kasbon_payments_table', 1),
(24, '2025_12_29_134822_add_hierarchy_to_roles_table', 1),
(25, '2025_12_29_135301_create_role_conflicts_table', 1),
(26, '2026_01_02_111257_add_do_approval_fields_to_kasbon_loans_table', 1),
(27, '2026_01_02_114213_create_kasbon_requests_table', 1),
(28, '2026_01_05_100140_add_user_id_to_karyawans_table', 1),
(29, '2026_01_05_111515_add_karyawan_id_to_users_table', 1),
(30, '2026_03_03_184514_add_location_and_photo_to_absensis_table', 1),
(31, '2026_03_07_235323_add_last_login_at_to_users_table', 1),
(32, '2026_03_26_153243_add_approval_fields_to_absensis_table', 2),
(33, '2026_03_26_165731_create_perizinans_table', 3),
(34, '2026_03_27_014432_add_address_to_absensis_table', 4),
(35, '2026_03_27_015354_add_attendance_location_columns_to_absensis_table', 4),
(36, '2026_04_01_130721_create_penilaian_kinerjas_table', 5),
(37, '2026_04_02_160341_add_decline_fields_to_absensis_table', 6);

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`) USING BTREE,
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE,
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------
-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`) USING BTREE,
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE,
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 5),
(4, 'App\\Models\\User', 6),
(4, 'App\\Models\\User', 7),
(4, 'App\\Models\\User', 8),
(4, 'App\\Models\\User', 9),
(4, 'App\\Models\\User', 10),
(4, 'App\\Models\\User', 11),
(4, 'App\\Models\\User', 12),
(4, 'App\\Models\\User', 13),
(4, 'App\\Models\\User', 14),
(4, 'App\\Models\\User', 15),
(4, 'App\\Models\\User', 16),
(4, 'App\\Models\\User', 17),
(4, 'App\\Models\\User', 18),
(4, 'App\\Models\\User', 19),
(4, 'App\\Models\\User', 20),
(4, 'App\\Models\\User', 21),
(4, 'App\\Models\\User', 22),
(4, 'App\\Models\\User', 23),
(4, 'App\\Models\\User', 24),
(4, 'App\\Models\\User', 25),
(4, 'App\\Models\\User', 26),
(4, 'App\\Models\\User', 27),
(4, 'App\\Models\\User', 28),
(4, 'App\\Models\\User', 29),
(4, 'App\\Models\\User', 30),
(4, 'App\\Models\\User', 31),
(4, 'App\\Models\\User', 32),
(4, 'App\\Models\\User', 33),
(4, 'App\\Models\\User', 34),
(4, 'App\\Models\\User', 35),
(4, 'App\\Models\\User', 36),
(4, 'App\\Models\\User', 37),
(4, 'App\\Models\\User', 38),
(4, 'App\\Models\\User', 39),
(4, 'App\\Models\\User', 40),
(4, 'App\\Models\\User', 41),
(4, 'App\\Models\\User', 42),
(4, 'App\\Models\\User', 43),
(4, 'App\\Models\\User', 44),
(4, 'App\\Models\\User', 45),
(4, 'App\\Models\\User', 46),
(4, 'App\\Models\\User', 47),
(4, 'App\\Models\\User', 48),
(4, 'App\\Models\\User', 49),
(4, 'App\\Models\\User', 50),
(4, 'App\\Models\\User', 51),
(4, 'App\\Models\\User', 52),
(4, 'App\\Models\\User', 53),
(4, 'App\\Models\\User', 54),
(4, 'App\\Models\\User', 55),
(4, 'App\\Models\\User', 56),
(4, 'App\\Models\\User', 57),
(4, 'App\\Models\\User', 58),
(4, 'App\\Models\\User', 59),
(4, 'App\\Models\\User', 60),
(4, 'App\\Models\\User', 61),
(4, 'App\\Models\\User', 62),
(4, 'App\\Models\\User', 63),
(4, 'App\\Models\\User', 64),
(4, 'App\\Models\\User', 65),
(4, 'App\\Models\\User', 66),
(4, 'App\\Models\\User', 67),
(4, 'App\\Models\\User', 68),
(4, 'App\\Models\\User', 69),
(4, 'App\\Models\\User', 70),
(4, 'App\\Models\\User', 71),
(4, 'App\\Models\\User', 72),
(4, 'App\\Models\\User', 73),
(4, 'App\\Models\\User', 74),
(4, 'App\\Models\\User', 75),
(4, 'App\\Models\\User', 76),
(4, 'App\\Models\\User', 77),
(4, 'App\\Models\\User', 78),
(4, 'App\\Models\\User', 79),
(4, 'App\\Models\\User', 80),
(4, 'App\\Models\\User', 81),
(4, 'App\\Models\\User', 82),
(4, 'App\\Models\\User', 83),
(4, 'App\\Models\\User', 84),
(4, 'App\\Models\\User', 85),
(4, 'App\\Models\\User', 86),
(4, 'App\\Models\\User', 87),
(4, 'App\\Models\\User', 88),
(4, 'App\\Models\\User', 89),
(4, 'App\\Models\\User', 90),
(4, 'App\\Models\\User', 91),
(4, 'App\\Models\\User', 92),
(4, 'App\\Models\\User', 93),
(4, 'App\\Models\\User', 94),
(4, 'App\\Models\\User', 95),
(4, 'App\\Models\\User', 96),
(4, 'App\\Models\\User', 97),
(4, 'App\\Models\\User', 98),
(4, 'App\\Models\\User', 99),
(4, 'App\\Models\\User', 100),
(4, 'App\\Models\\User', 101),
(4, 'App\\Models\\User', 102),
(4, 'App\\Models\\User', 103),
(4, 'App\\Models\\User', 104),
(4, 'App\\Models\\User', 105),
(4, 'App\\Models\\User', 106),
(4, 'App\\Models\\User', 107),
(4, 'App\\Models\\User', 108),
(4, 'App\\Models\\User', 109),
(4, 'App\\Models\\User', 110),
(4, 'App\\Models\\User', 111),
(4, 'App\\Models\\User', 112),
(4, 'App\\Models\\User', 113),
(4, 'App\\Models\\User', 114),
(4, 'App\\Models\\User', 115),
(4, 'App\\Models\\User', 116),
(4, 'App\\Models\\User', 117),
(4, 'App\\Models\\User', 118),
(4, 'App\\Models\\User', 119),
(4, 'App\\Models\\User', 120),
(4, 'App\\Models\\User', 121),
(4, 'App\\Models\\User', 122),
(4, 'App\\Models\\User', 123),
(4, 'App\\Models\\User', 124),
(4, 'App\\Models\\User', 125),
(4, 'App\\Models\\User', 126),
(4, 'App\\Models\\User', 127),
(4, 'App\\Models\\User', 128),
(4, 'App\\Models\\User', 129),
(4, 'App\\Models\\User', 130),
(4, 'App\\Models\\User', 131),
(4, 'App\\Models\\User', 132),
(4, 'App\\Models\\User', 133),
(4, 'App\\Models\\User', 134),
(4, 'App\\Models\\User', 135),
(4, 'App\\Models\\User', 136),
(4, 'App\\Models\\User', 137),
(4, 'App\\Models\\User', 138),
(4, 'App\\Models\\User', 139),
(4, 'App\\Models\\User', 140),
(4, 'App\\Models\\User', 141),
(4, 'App\\Models\\User', 142),
(4, 'App\\Models\\User', 143),
(4, 'App\\Models\\User', 144),
(4, 'App\\Models\\User', 145),
(4, 'App\\Models\\User', 146),
(4, 'App\\Models\\User', 147),
(4, 'App\\Models\\User', 148),
(4, 'App\\Models\\User', 149),
(4, 'App\\Models\\User', 150),
(4, 'App\\Models\\User', 151),
(5, 'App\\Models\\User', 2),
(6, 'App\\Models\\User', 3),
(7, 'App\\Models\\User', 4);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------
-- ----------------------------
-- Table structure for penilaian_kinerjas
-- ----------------------------
DROP TABLE IF EXISTS `penilaian_kinerjas`;
CREATE TABLE `penilaian_kinerjas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `karyawan_id` bigint(20) unsigned NOT NULL,
  `penilai_user_id` bigint(20) unsigned DEFAULT NULL,
  `periode_kenaikan_gaji` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_penilaian` date DEFAULT NULL,
  `disiplin` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggung_jawab` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kualitas_kerja` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `produktivitas` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kerja_sama` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inisiatif` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nilai_akhir` decimal(8,2) NOT NULL DEFAULT 0.00,
  `predikat` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nominal_kenaikan_gaji` bigint(20) NOT NULL DEFAULT 0,
  `catatan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `penilaian_kinerjas_karyawan_id_foreign` (`karyawan_id`) USING BTREE,
  KEY `penilaian_kinerjas_penilai_user_id_foreign` (`penilai_user_id`) USING BTREE,
  CONSTRAINT `penilaian_kinerjas_karyawan_id_foreign` FOREIGN KEY (`karyawan_id`) REFERENCES `karyawans` (`id`) ON DELETE CASCADE,
  CONSTRAINT `penilaian_kinerjas_penilai_user_id_foreign` FOREIGN KEY (`penilai_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of penilaian_kinerjas
-- ----------------------------
INSERT INTO `penilaian_kinerjas` (`id`, `karyawan_id`, `penilai_user_id`, `periode_kenaikan_gaji`, `tanggal_penilaian`, `disiplin`, `tanggung_jawab`, `kualitas_kerja`, `produktivitas`, `kerja_sama`, `inisiatif`, `nilai_akhir`, `predikat`, `nominal_kenaikan_gaji`, `catatan`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'MEI 2026', '2026-04-01', 'A', 'A', 'B', 'A', 'A', 'B', '95.00', 'A', 500000, 'w kerja', '2026-04-01 13:29:38', '2026-04-01 13:29:57'),
(2, 1, 1, 'MEI 2027', '2026-04-01', 'C', 'E', 'C', 'D', 'D', 'D', '57.50', 'E', 0, 'L kerja', '2026-04-01 14:00:44', '2026-04-01 14:00:44');

-- ----------------------------
-- Table structure for perizinans
-- ----------------------------
DROP TABLE IF EXISTS `perizinans`;
CREATE TABLE `perizinans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `karyawan_id` bigint(20) unsigned NOT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bukti_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `approved_by` bigint(20) unsigned DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of perizinans
-- ----------------------------
INSERT INTO `perizinans` (`id`, `karyawan_id`, `jenis`, `tanggal_mulai`, `tanggal_selesai`, `keterangan`, `bukti_path`, `is_approved`, `approved_by`, `approved_at`, `created_at`, `updated_at`) VALUES
(2, 1, 'sakit', '2026-03-26', '2026-03-27', 'bapil', NULL, 1, 1, '2026-03-26 18:34:58', '2026-03-26 18:34:33', '2026-03-26 18:34:58'),
(3, 1, 'cuti', '2026-03-27', '2026-03-31', 'holiday', NULL, 0, NULL, NULL, '2026-03-27 01:02:53', '2026-03-27 01:02:53'),
(4, 1, 'berduka', '2026-03-27', '2026-03-30', NULL, NULL, 0, NULL, NULL, '2026-03-27 01:06:44', '2026-03-27 01:06:44');

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_absensi', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(2, 'view_any_absensi', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(3, 'create_absensi', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(4, 'update_absensi', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(5, 'delete_absensi', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(6, 'delete_any_absensi', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(7, 'view_activity', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(8, 'view_any_activity', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(9, 'create_activity', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(10, 'update_activity', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(11, 'delete_activity', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(12, 'delete_any_activity', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(13, 'view_karyawan', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(14, 'view_any_karyawan', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(15, 'create_karyawan', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(16, 'update_karyawan', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(17, 'delete_karyawan', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(18, 'delete_any_karyawan', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(19, 'view_kasbon::loan', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(20, 'view_any_kasbon::loan', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(21, 'create_kasbon::loan', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(22, 'update_kasbon::loan', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(23, 'delete_kasbon::loan', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(24, 'delete_any_kasbon::loan', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(25, 'view_kasbon::payment', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(26, 'view_any_kasbon::payment', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(27, 'create_kasbon::payment', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(28, 'update_kasbon::payment', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(29, 'delete_kasbon::payment', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(30, 'delete_any_kasbon::payment', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(31, 'view_role', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(32, 'view_any_role', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(33, 'create_role', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(34, 'update_role', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(35, 'delete_role', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(36, 'delete_any_role', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(37, 'view_user', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(38, 'view_any_user', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(39, 'create_user', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(40, 'update_user', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(41, 'delete_user', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(42, 'delete_any_user', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(43, 'page_AbsensiPreview', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(44, 'page_DetailSlipGaji', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(45, 'page_HistoriCenter', 'web', '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(46, 'page_HistoriRekapAbsensi', 'web', '2026-03-25 00:01:21', '2026-03-25 00:01:21'),
(47, 'page_HistoriRekapGajiNonPayroll', 'web', '2026-03-25 00:01:21', '2026-03-25 00:01:21'),
(48, 'page_HistoriRekapGajiPeriode', 'web', '2026-03-25 00:01:21', '2026-03-25 00:01:21'),
(49, 'page_HistoriSlipGaji', 'web', '2026-03-25 00:01:21', '2026-03-25 00:01:21'),
(50, 'page_HistoriTransferPermata', 'web', '2026-03-25 00:01:21', '2026-03-25 00:01:21'),
(51, 'page_KasbonCenter', 'web', '2026-03-25 00:01:21', '2026-03-25 00:01:21'),
(52, 'page_KasbonDetailDO', 'web', '2026-03-25 00:01:21', '2026-03-25 00:01:21'),
(53, 'page_KasbonPengajuanStaffKasbon', 'web', '2026-03-25 00:01:21', '2026-03-25 00:01:21'),
(54, 'page_KasbonPinjamanStaffKasbon', 'web', '2026-03-25 00:01:21', '2026-03-25 00:01:21'),
(55, 'page_KasbonVerifikasiAkhirDO', 'web', '2026-03-25 00:01:21', '2026-03-25 00:01:21'),
(56, 'page_KasbonVerifikasiAwalDO', 'web', '2026-03-25 00:01:21', '2026-03-25 00:01:21'),
(57, 'page_LaporanKasbon', 'web', '2026-03-25 00:01:21', '2026-03-25 00:01:21'),
(58, 'page_RekapAbsensi', 'web', '2026-03-25 00:01:21', '2026-03-25 00:01:21'),
(59, 'page_RekapGajiNonPayroll', 'web', '2026-03-25 00:01:21', '2026-03-25 00:01:21'),
(60, 'page_RekapGajiPeriode', 'web', '2026-03-25 00:01:21', '2026-03-25 00:01:21'),
(61, 'page_RekapHoCenter', 'web', '2026-03-25 00:01:21', '2026-03-25 00:01:21'),
(62, 'page_RekapTransferPermata', 'web', '2026-03-25 00:01:21', '2026-03-25 00:01:21'),
(63, 'page_SlipGaji', 'web', '2026-03-25 00:01:21', '2026-03-25 00:01:21'),
(64, 'page_SlipGajiHitung', 'web', '2026-03-25 00:01:21', '2026-03-25 00:01:21'),
(65, 'widget_OverlookWidget', 'web', '2026-03-25 00:01:22', '2026-03-25 00:01:22'),
(66, 'widget_LatestAccessLogs', 'web', '2026-03-25 00:01:22', '2026-03-25 00:01:22'),
(67, 'absensi.create', 'web', '2026-03-25 00:01:22', '2026-03-25 00:01:22'),
(68, 'kasbon.request', 'web', '2026-03-25 00:01:22', '2026-03-25 00:01:22'),
(69, 'penggajian.view_own', 'web', '2026-03-25 00:01:22', '2026-03-25 00:01:22'),
(70, 'kasbon.validate', 'web', '2026-03-25 00:01:22', '2026-03-25 00:01:22'),
(71, 'kasbon.process', 'web', '2026-03-25 00:01:22', '2026-03-25 00:01:22'),
(72, 'kasbon.view_all', 'web', '2026-03-25 00:01:22', '2026-03-25 00:01:22'),
(73, 'kasbon.approve', 'web', '2026-03-25 00:01:22', '2026-03-25 00:01:22'),
(74, 'karyawan.manage', 'web', '2026-03-25 00:01:22', '2026-03-25 00:01:22'),
(75, 'absensi.validate', 'web', '2026-03-25 00:01:22', '2026-03-25 00:01:22'),
(76, 'penggajian.process', 'web', '2026-03-25 00:01:22', '2026-03-25 00:01:22'),
(77, 'penggajian.report_generate', 'web', '2026-03-25 00:01:22', '2026-03-25 00:01:22'),
(78, 'penggajian.view_all', 'web', '2026-03-25 00:01:22', '2026-03-25 00:01:22'),
(79, 'penggajian.approve', 'web', '2026-03-25 00:01:22', '2026-03-25 00:01:22');

-- ----------------------------
-- Table structure for rekap_gaji_non_payroll_rows
-- ----------------------------
DROP TABLE IF EXISTS `rekap_gaji_non_payroll_rows`;
CREATE TABLE `rekap_gaji_non_payroll_rows` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rekap_gaji_non_payroll_id` bigint(20) unsigned NOT NULL,
  `no_urut` int(10) unsigned DEFAULT NULL,
  `no_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bagian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '+',
  `pembulatan` bigint(20) NOT NULL DEFAULT 0,
  `kasbon` bigint(20) NOT NULL DEFAULT 0,
  `sisa_kasbon` bigint(20) NOT NULL DEFAULT 0,
  `total_setelah_bon` bigint(20) NOT NULL DEFAULT 0,
  `total_slip` bigint(20) NOT NULL DEFAULT 0,
  `subtotal` bigint(20) DEFAULT 0,
  `period_start` date DEFAULT NULL,
  `period_end` date DEFAULT NULL,
  `period_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `range_type` enum('first','second','custom') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `rekap_gaji_non_payroll_rows_rekap_gaji_non_payroll_id_foreign` (`rekap_gaji_non_payroll_id`) USING BTREE,
  KEY `rekap_gaji_non_payroll_rows_no_id_index` (`no_id`) USING BTREE,
  CONSTRAINT `rekap_gaji_non_payroll_rows_rekap_gaji_non_payroll_id_foreign` FOREIGN KEY (`rekap_gaji_non_payroll_id`) REFERENCES `rekap_gaji_non_payrolls` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of rekap_gaji_non_payroll_rows
-- ----------------------------
-- ----------------------------
-- Table structure for rekap_gaji_non_payrolls
-- ----------------------------
DROP TABLE IF EXISTS `rekap_gaji_non_payrolls`;
CREATE TABLE `rekap_gaji_non_payrolls` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `period_start` date DEFAULT NULL,
  `period_end` date DEFAULT NULL,
  `period_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `range_type` enum('first','second','custom') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rows_count` int(10) unsigned NOT NULL DEFAULT 0,
  `total_pembulatan` bigint(20) NOT NULL DEFAULT 0,
  `total_kasbon` bigint(20) NOT NULL DEFAULT 0,
  `total_sisa_kasbon` bigint(20) NOT NULL DEFAULT 0,
  `total_total_setelah_bon` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `rekap_gaji_non_payrolls_period_start_period_end_unique` (`period_start`,`period_end`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of rekap_gaji_non_payrolls
-- ----------------------------
-- ----------------------------
-- Table structure for rekap_gaji_period_rows
-- ----------------------------
DROP TABLE IF EXISTS `rekap_gaji_period_rows`;
CREATE TABLE `rekap_gaji_period_rows` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rekap_id` bigint(20) unsigned NOT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proyek` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trf` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-',
  `jumlah` bigint(20) NOT NULL DEFAULT 0,
  `jumlah_karyawan` int(10) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `rekap_gaji_period_rows_rekap_id_lokasi_proyek_keterangan_index` (`rekap_id`,`lokasi`,`proyek`,`keterangan`) USING BTREE,
  CONSTRAINT `rekap_gaji_period_rows_rekap_id_foreign` FOREIGN KEY (`rekap_id`) REFERENCES `rekap_gaji_periods` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of rekap_gaji_period_rows
-- ----------------------------
-- ----------------------------
-- Table structure for rekap_gaji_periods
-- ----------------------------
DROP TABLE IF EXISTS `rekap_gaji_periods`;
CREATE TABLE `rekap_gaji_periods` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `selected_pairs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `total_payroll` bigint(20) NOT NULL DEFAULT 0,
  `total_non_payroll` bigint(20) NOT NULL DEFAULT 0,
  `total_grand` bigint(20) NOT NULL DEFAULT 0,
  `count_payroll` int(10) unsigned NOT NULL DEFAULT 0,
  `count_non_payroll` int(10) unsigned NOT NULL DEFAULT 0,
  `count_grand` int(10) unsigned NOT NULL DEFAULT 0,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `rekap_gaji_periods_start_date_end_date_unique` (`start_date`,`end_date`) USING BTREE,
  KEY `rekap_gaji_periods_created_by_foreign` (`created_by`) USING BTREE,
  CONSTRAINT `rekap_gaji_periods_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of rekap_gaji_periods
-- ----------------------------
-- ----------------------------
-- Table structure for rekap_transfer_permata_rows
-- ----------------------------
DROP TABLE IF EXISTS `rekap_transfer_permata_rows`;
CREATE TABLE `rekap_transfer_permata_rows` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rekap_transfer_permata_id` bigint(20) unsigned NOT NULL,
  `no_urut` int(10) unsigned NOT NULL DEFAULT 0,
  `no_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bagian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proyek` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `period_start` date NOT NULL,
  `period_end` date NOT NULL,
  `period_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `range_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pembulatan` decimal(15,2) NOT NULL DEFAULT 0.00,
  `kasbon` decimal(15,2) NOT NULL DEFAULT 0.00,
  `sisa_kasbon` decimal(15,2) NOT NULL DEFAULT 0.00,
  `gaji_16_31` decimal(15,2) NOT NULL DEFAULT 0.00,
  `gaji_15_31` decimal(15,2) NOT NULL DEFAULT 0.00,
  `transfer` decimal(15,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `rekap_transfer_permata_rows_rekap_transfer_permata_id_foreign` (`rekap_transfer_permata_id`) USING BTREE,
  KEY `rekap_transfer_permata_rows_no_id_index` (`no_id`) USING BTREE,
  KEY `rekap_transfer_permata_rows_period_start_index` (`period_start`) USING BTREE,
  KEY `rekap_transfer_permata_rows_period_end_index` (`period_end`) USING BTREE,
  KEY `rekap_transfer_permata_rows_range_type_index` (`range_type`) USING BTREE,
  CONSTRAINT `rekap_transfer_permata_rows_rekap_transfer_permata_id_foreign` FOREIGN KEY (`rekap_transfer_permata_id`) REFERENCES `rekap_transfer_permatas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of rekap_transfer_permata_rows
-- ----------------------------
-- ----------------------------
-- Table structure for rekap_transfer_permatas
-- ----------------------------
DROP TABLE IF EXISTS `rekap_transfer_permatas`;
CREATE TABLE `rekap_transfer_permatas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bank` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PERMATA',
  `period_start` date NOT NULL,
  `period_end` date NOT NULL,
  `range_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proyek` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rows_count` int(10) unsigned NOT NULL DEFAULT 0,
  `total_pembulatan` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_kasbon` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_sisa_kasbon` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_gaji_16_31` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_gaji_15_31` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_transfer` decimal(15,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `rekap_transfer_permatas_period_start_index` (`period_start`) USING BTREE,
  KEY `rekap_transfer_permatas_period_end_index` (`period_end`) USING BTREE,
  KEY `rekap_transfer_permatas_range_type_index` (`range_type`) USING BTREE,
  KEY `rekap_transfer_permatas_lokasi_index` (`lokasi`) USING BTREE,
  KEY `rekap_transfer_permatas_proyek_index` (`proyek`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of rekap_transfer_permatas
-- ----------------------------
-- ----------------------------
-- Table structure for role_conflicts
-- ----------------------------
DROP TABLE IF EXISTS `role_conflicts`;
CREATE TABLE `role_conflicts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned NOT NULL,
  `conflict_role_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `role_conflicts_role_id_conflict_role_id_unique` (`role_id`,`conflict_role_id`) USING BTREE,
  KEY `role_conflicts_conflict_role_id_foreign` (`conflict_role_id`) USING BTREE,
  CONSTRAINT `role_conflicts_conflict_role_id_foreign` FOREIGN KEY (`conflict_role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_conflicts_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of role_conflicts
-- ----------------------------
INSERT INTO `role_conflicts` (`id`, `role_id`, `conflict_role_id`, `created_at`, `updated_at`) VALUES
(1, 5, 7, '2026-03-25 00:01:22', '2026-03-25 00:01:22'),
(2, 6, 7, '2026-03-25 00:01:22', '2026-03-25 00:01:22');

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`) USING BTREE,
  KEY `role_has_permissions_role_id_foreign` (`role_id`) USING BTREE,
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 4),
(67, 5),
(67, 6),
(68, 4),
(68, 5),
(68, 6),
(68, 7),
(69, 4),
(69, 5),
(69, 6),
(70, 6),
(71, 6),
(72, 6),
(73, 7),
(74, 5),
(75, 5),
(76, 5),
(77, 5),
(78, 5),
(78, 7),
(79, 7);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) unsigned DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`) USING BTREE,
  KEY `roles_parent_id_foreign` (`parent_id`) USING BTREE,
  CONSTRAINT `roles_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` (`id`, `name`, `guard_name`, `parent_id`, `level`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', NULL, 1, '2026-03-25 00:01:20', '2026-03-25 00:01:20'),
(2, 'admin', 'web', NULL, 1, '2026-03-25 00:01:22', '2026-03-25 00:01:22'),
(3, 'pegawai', 'web', NULL, 1, '2026-03-25 00:01:22', '2026-03-25 00:01:22'),
(4, 'karyawan', 'web', NULL, 1, '2026-03-25 00:01:22', '2026-03-25 00:01:22'),
(5, 'staff_administrasi', 'web', 4, 2, '2026-03-25 00:01:22', '2026-03-25 00:01:22'),
(6, 'staff_kasbon', 'web', 4, 2, '2026-03-25 00:01:22', '2026-03-25 00:01:22'),
(7, 'direktur_operasional', 'web', NULL, 3, '2026-03-25 00:01:22', '2026-03-25 00:01:22');

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sessions_user_id_index` (`user_id`) USING BTREE,
  KEY `sessions_last_activity_index` (`last_activity`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('49pJUheb70rRlupH1dciGZmoVHKT4nNOX7IjLRiF', 1, '172.29.0.1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', 'ZXlKcGRpSTZJalY2ZGxFM1VXUjVjRE5YYkVKbmJVcEJjbkV6WjBFOVBTSXNJblpoYkhWbElqb2lWbE56U25sUE1VUkxZbUZyVGs1Vk5WaHZVRmxhUzFCNWFYZ3pXSFZRV2pONmJEQlJUVWdyV1Zwb2RuWm1iMDl3T0hsRU1WbERjR2RqVkhOb00zUlpSa0Y1UmpaT2VGcHFNVkY0Y1dWeU9DOUtZamt2WTJ3NVdFNTNRVlpxYjNwc0szcGFUbVkyV25adE9VNUlVVkZhYTI4MlMyWjRMMEZrYms1eEszcHhkelY0UjBWRmVtcENWRWhaZVZaWk56UTVhR3RyUlVKNllWVlNaM0ZRU2swclZIUkpRMWR5ZWs4NFNXeDRNWGxzUm5CT1dXcERUamsyWVhsNWJrVjJkbVJ0ZHpsR1oxaGlkR0ZYTVRoMlNEazRXbXRCZW5WUGJHNTBiVU5tZEdSME55OVZUMDAxUld4V2VFNWtiM1E1WWpKclVrYzFXR3h5Umpod1YwVkRSMUZQTUM5a1RFaGlRWEEyZEZCclN6WnBjR3hDVGpCbVNDOVRTbEZ5VmxwbFZHa3hjWFZwU1VWVFowTnRaM05WVFZZeFZVVjZNbm94ZGtwWE0wNVpWbUpVYkZwM1dtdzJNVk1yUlRoNUswUTViM3BqUW04clZuQlJNVE5EU0hWdGNIZDJlbnA1ZEdReFkwbHdURGxEUVZka1VtUkhOemcyVUVoeldEUlRWRzlEVFRjNFRIRmFSMUZCYVRBMFFXWndaWGROTTBsSlFUVm5TMFEwVVUxaVprdDZTWG8yUVhCVk9IUjVNbTE0T1U1TU5FeElkUzlrZVU1T2JHdG9Na3RSZDB4d1prcGtVelpWUW5oTlNITndNVU4xVUZCcU16ZFJTM2N5YVVVMlNEZGhlR280TmtGblQxWmFOSEZ3VERsWWJtWlVZa0ZVZWtSTWVHUmxkVFU0WkZwNVMyMUlTREl2UnpJMGIybGxiQzgwVGxGUFQyVTBUbUZJUkVOR05ERlJRbWR5ZVdWdVlVUTRibGxZVDA1M1NHVkVheXRRVkdOak5XbHlTM05ZVFZKMk5YTlJNREpDYlhwUWFFVXJNREZJUVdGcGFtOVFMMEk0YnpaMVVXY3paSGhaYjNWRUsycFpjbkJUVDNWMlN5dGFaRVY1YlZGeWNXWTJiMjU1Ums0MVIwWlROVTVoYzFCbE1VSktUbE5oWVRGS1VHRmxZV2RVYm5CTlNHYzVjWFY2ZFVjMGIxTmhUa2xHT1ZodU1WRTlJaXdpYldGaklqb2lZell4T0RObE5qTm1NRGc0WlRBNFpUSXdZV0V4WmpJd01UUmlNakl6T0RjME4yVTVNak13Wm1KbE5EbGxabUUxWVRneU0ySXdZV1EyT0RBMk5Ea3dNeUlzSW5SaFp5STZJaUo5', 1775767436),
('9SVONriThJnlan7HI7fjMjHQeghoAXACn41oWInI', NULL, '172.29.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36 Edg/146.0.0.0', 'ZXlKcGRpSTZJbmRpVG14TlFXbGlXSEpPVURGblVFaHBVVnB2VUdjOVBTSXNJblpoYkhWbElqb2lNMUpvTnl0TVJ6VXdjazFEZFVkdlVVbFJWR3BzWVdGcVdHRkVUV1F3TmxKUVpHNW5iMUp3VTI5cVJXcHNaSE56ZVhGb2JXdFdOelpxVDNBMVdraGFPRTVyWWsxVFdrMW1WMmxLUlRGSlZsZ3JZeXN5S3pOWGQyMWxjbkJ5TVVOTFEzSTNiV0oyWjNsUFpTOHZSRkI2WkROR1FuZHdaSEZJVm1nMWNHeEdTbVZoVlVWVFJqTmlaR054TDJ0SFoxVnBaVTlyY2s4eVQxVnRSR3QyVW14QlVVRkpNWFJWTkZaS1N6a3hVM1pyVVdaRUt6ZFNkbVJwT0d0cU5GaFNjMk5wVEVKWWJ6RkVSbGhXWkVoNldsQmtkUzl0Vmt4aEsyOXhXVVZpWkhsM1VIQlFTMGxyVjNaaVdIcFNTMmxSZFdJd1Zqa3dPWFptVjFRMGFYaFhkVmhqY1RkRUwyOVJWV1JxTlhSeFpHUlViRUUwTjJWS2RWRTlQU0lzSW0xaFl5STZJalpoTjJFNE4yVmhOR0k1TkRkbVltTmhNbVkwWVRkalpEWTNPR0V5TldSaU0yUm1aRE5oTTJabU5HRXpaakUwTUdaa05URTVORE0wTWpabE1HUTVNVGtpTENKMFlXY2lPaUlpZlE9PQ==', 1775767220),
('DVfzGtqupjRMJHObbyz6Cs8ZEfUd16JnQDYmFjm5', NULL, '172.29.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'ZXlKcGRpSTZJakY1Y1hkSGJFbDNNbU12VTJkNGQyaG5Nelo1UVVFOVBTSXNJblpoYkhWbElqb2lXR0ZUYTJWaVZUQm9VbU5aWVhwbFdYZ3pjSEZJZGtVMU5DOUZVbFZtVTJoNVltZDVNR2N6TDBwa055OU1kek01WkdnM1FrWmhSM0JGUTNodmNIWnJhVTB6VVRVelQwcGFUbkZhUW5oaVUxTldNRkpRY2xjNFFtbExOR0pIZEdwb2RYa3lNbVZzTkUxNlRWUkJSMmhzTW5WUlRISXhRMHB0UVdwcWF6QkxTVkY1U2xWRmNUZGxZM3BLUWtSbU5VVXdOVlEyT0Rsc2NtRXpPRmd2VFd4cmJYRnZWR1Y2YzA1MWJFazNSVEZSYVRKdVpsVkhkR2t6VURjeU16QkplV1ptT0VSV1NHTm1OR0YzWmtSYWJHbG9RMVUyVkdzeVVsZ3hRMUZZWTNOUk5VNVZRWHBZVEdWM04wbDZNVVZTUmpCS1ZIcDBNVEJWU0M5R05GbGtPRzlUU0RjMFdEWk1RMjFXUm1veU1HWmxRVzE0U1RORmVESlNPSGhKUkU5amRHeDFkbTVZU25WaWVIcG1RWFpYYkRCM1dsa3laaXQ2WVZWTlRtUnlUbWh6UjFsRWNtbE9TalZVTWl0elZtSlBXbE5QWm0xM1Z6aEtTVU4xVGpWaFFtSkhNaXRKS3pkVlRFaEhOM0Z6ZEc1dFYwOW5UV1JMYm5oUmN6UTBSM05DY1M4dklpd2liV0ZqSWpvaU9UTTVNelF5TnpkbE1XRmhOVFkzWmpaaU1qQmpNVEJqWVRJMFlUSm1PVGRsWVRBM01qa3lNelpqWkRReU5ERTRPVEUxWXpCaE9UQTVZakJrWmpoaU1TSXNJblJoWnlJNklpSjk=', 1775770293),
('fifF66oRIJ9bxlyna4xEuo8e2jwtpvwDu1HwYjg7', 1, '172.29.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'ZXlKcGRpSTZJa2hQZGpad2MwMXpOVk51WkRONE1tNXliM2hXUmxFOVBTSXNJblpoYkhWbElqb2lTSE5PUWtWM1JqbHZkbFZKY25oWFlXTk9TVWx5VURVdlJGZGFURVJ6VERZdlRDOVFVM2N2Y1VkMVdXNVNMMVZxTlhWTE1GaFJOVlpEV1M5V1VGbExTVVk0UWpJeFUzcFZWMW8xWTFoeFlXSkhjV2t6YlVNM09IUkVOa3hhWWxobmJrWk5OMDVwV0ZsdWMwODFOMk5xWm5vNGVVRXZWVFJrUTAxQ01VeEtTQ3RPUzA1RWQyYzBPWHBQWjFNclJYaENWMlo2YkU0MVNXaHZZVkpFTHpCRGNGWlZUemd5T0U4NWFTdFBTMmM0V21VMlNreFBNMXBxWmtWQlMzaGtTMnBLYkZObWFrY3phMlpHVDNjMFFVNTFNaXRLWjNWS09ITXhNMlIwZDNseVlrNDBlV0o0TVU5dk4wMWpUUzh2V0ZaVmFtTlFhV2Q1YTJOUE5rUnhiV2hXU25GblNTOWxiRUl6VVRkSldYaHBTemRDUXpSTmFtSnllRXBLZG1Gc2QxcE5Ra3B1V2tGdFZYUlVVbVJWTUVWRkswRXlhM1J2WWxKcU4yUk9LMjUwYURsdlluRm5VMUJvUlhOc05HMVJTVEZaV0dKSlRIWllSVGRITDBGUGQwdHdSMGt6UkhCdWQxRjZUbXM0UWtZd1YzUjZNU3R1Y1hnMWFtSmxVbVkzV0VOUk5qQndRMGxJVUZCbVYyaFdlRU5hTjFaaGRISjFUSG8yUjBKVVNHWkZkWEJLYVVOa01rZzFLMkZIUTNjMFJFVjFSVTVEZVRoa2RESmxTa1pMVFRGcWMweEZTblIwUkV4SU9GWjRhekZYSzAweE16aFJXVVpFU1M5bVZtOWljelkxWTI1RWFrRm9UR0UxYldGT1FtbzRhR2RYTUdOU2Eyd3pSVmhzUzFKc1lXVkRXVlpDYkc1aVdUTnVPRWhqTUVRcksyUnlNR2w0UmpaNEt6aFBlRWgyV0Rad0sxUnhWa2wwVkhNd2VscFdPRFV3TTBKWWVsTjZWa2hwVmxNdlRqQTNXRmhEUTJSWWFsTkhWWG8yY1c5NWRuUjFNMjFXWkN0NWFYaDRPREIzSzFSUWNHVmlRblk1ZGs5bFpXNUhZbXg2ZURoSVdGaHRhMHgzV2xaeFYwa3hOR2t3V0RBNVRVVmFjbVJLYzI5U0wwWndVR2gxVTNCSWNVUnBjVUZuTVZwaWVqbEdNVTB2UjAxU01YTlVORkY1UVRBeFEyNDNjSGRuTUVWRVVIVldaVXB4UWsxUU1VZE9iSEZPYVcxRmFFVklhRk5LZERsdk5UQm9VSFpqYUZVMFdTOTFhVU56VGxCd1ZUQkJQU0lzSW0xaFl5STZJakJsTW1VME1EUmpZelJsT0dVNFpEVXpOVGN3TW1KalpqSXlOemhqTnpsaE4yRTJNVGxsTldWaU5UTTNZemxsTkRJMlkySXhPV1JsT1dGbE4yVTROREFpTENKMFlXY2lPaUlpZlE9PQ==', 1775770591),
('GoLLeuYZ3yelRJ9o1tYHIOYfCpOyku4NfeALOB4A', 1, '172.29.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'ZXlKcGRpSTZJakpCVkVWM1NtRnlTVmRCWTJaTFVYQlRUemgyUzFFOVBTSXNJblpoYkhWbElqb2lNM04yU1hOV2FHeENRbGQ2YTFwWlN6RjBPV0YyTWsxSWJIWXlia0ZzVURoelJHVnlVa2R0Tm5KWGJrVnRURXRvYVdwM2IzVnBjbXRLU2tWa1lUbFFRemRPWVhCaE4weFVNRUY2UXpkUFFYTTVUMFJPVjBwVVptczFiRUp2Ykc1UE9FVkNka1UzYjFCdFdGZ3JZMFpoTUdoMGVrUkVNVXBtT1M5c1EyeFJOVGc1VDNjeFprRnBaalJvVGtoUVVrZGFPRU5VTkd0dVZGbDRSMG9yVkRCV2FXUllRV281WVhJemRVRkhTMEkxZERndlNqTlJkbVpLZUN0dFRHVnVheXRtZUVjM1dqQjRhV1pHWmtjNVR6SnZjbFF4VFdGc1QySmhaMlJhVDBFeVdXb3hiRVpwVTNWc1JESmFkelZ1TlZCNWFUVk9PVFJtYTA1RllYZzJTSFYwU1VGT1VrTmtVM0pFWjJsV05rbHJkbFpuWlVOQk4wNDJabVJuTkZkcFUyRlhUVVpDZEdSMGRWVjFUazlUZWk5TFJtdE5RVUpzYldWbk1FSTVjbmRUWjJoRlRqZGhhbUZ2VTIxNlZFVklPVVkwTW14SlRYRmxaR0pyUkV0bGJYbEZRMGRHWm5kc1FWSlZaR1Y2ZFVaMVpXeFFjR1p2VWpJelVrcE5LM1ZITlZveVVqTmpiV1p2TkVSeWRFcG9RM1l3Y21GWVIyUnVaMDl1WkVjeGNETlpNWEJLUmxCamRqVnFXVkExYTIweWVXSlFMelJxY2pObWFqTk5VbFU1VFhZdk5tdDViRVpRY3paNGVqWktSSG8xWjFGRmNEazNMMDFQTTNVM01saFhaRTlZUzJkS2NFVnJjelpDUkhsME1uaGFObUZRVm5kbWEwOTRXR3hhYzFkU2VqUkJkRVF5YlVwd1UydFFTV3RUZVRoV1puaEplVmN2Y1VaUE9ITndkMFozV1ZKMWNsVm1TbGRxTjA5aGJEZzVlSEoxVUdOa1lXSm5TMVk1UmpobWNsSTNSbk5YTVRkVVVEZFBZbWQwTTB0cFJVcG5ObWR2WW1VNVJuRXJka3RvU1dsbmJteHlRMVYyWldObGEwZHJkbUZEUVhvemIxSk9SbTkzTWxVNFZXcGtiMUZtYUVsc1JFMUROVFJtVVhCMk9FMUZNMnRIUTA5R01rYzRVMnBoTkRZM01EVm9RMEpGY2l0SGFYYzlJaXdpYldGaklqb2labUptT0RObE1XTmlZVGxsTkRSaE5qVmpOV0ZqWVdReU5tSTJPVFl5TW1Ka05EWmpOV1k0T0RoaVptWXpOemczWm1KaFpqa3lPRGRoT0RnMU9UQmhaQ0lzSW5SaFp5STZJaUo5', 1775770371),
('pOIpg6tZqfOqhyW5UmRPJuYfWuSCqKX4YS3Jg8Uy', NULL, '172.29.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'ZXlKcGRpSTZJblprWlV4TlYweFhlRU5QT1ZFeWIycDNURGh5UmxFOVBTSXNJblpoYkhWbElqb2llV2xpVm5GRUx6ZFZPQ3ROV1M5QlFtODJWMGRUVkZkWVRXaDRlV1V6WkV4SWRHNVVhalpLZVRkQ2VFcDBUbXhWTW1ZeVZuUlZUekJUWjBnemMwWnZhV05SVkZObWNtcDVjbE5TU2tZemRYZHdibVUxVlVFM2FWRmpXWFZ5ZWxWVWRFVlhRMlI1T0VaYWEzVnFWV2R3U0c1WVlUWjZXV2hXYVVkU1UwUjZlSGQzT1dSMU5TczBhMEYyV1VSQ1kzcEhaazFOYkhaMVJGTmxlVThyY1hSTVdXZFFVbEZMZGpWS09WcHdWVEZvVW01dFlqaFNMMWx0WTFWbFltTnlXRzVFV25KSGMyWk1lSGg2U1hoR1ZDOHlXVTQxZURONFVIcEhZbFY1WW5WUmRUSnBLeTlsUjJKeFEwNVhURFZFYVhGclNWaFFOSGhEWW1jMmVubHpjVFJrTUZsV09XODNTRVpUUkRSRE1YaE5Tamx4UjBSNFFVRTlQU0lzSW0xaFl5STZJbU5sWW1NNU1ERTBaamxpT1RKbFl6SmhNbVE1TkRBNFpUSTBPVGRqTkRSbFlqZGhOR1l5TkRreU1qaGtOMkUyWTJaalltWTBaVEExTmpreFpUTXhNRGNpTENKMFlXY2lPaUlpZlE9PQ==', 1775770262),
('YvfDdwKfTI0J4J4wKZKbKy1Gyo2LP6Qpmio5holR', NULL, '100.125.180.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'ZXlKcGRpSTZJbWRqTkVwb1lsaHVOR0kyYW01V1dtdzRiMk5XUm1jOVBTSXNJblpoYkhWbElqb2lZME15VDI1WlRXbENiazl6UVRoelpEaEpSbmRrWWxaUWFXY3JWamR4TW5reVVqQTNVVFJ3U214WmJEbHRaVkYwUzFwaWVWazFNbmMwYjFGak9GRXJiSEJWUmtjdmFqSjJVa0pKVFRaV00zVnVWR2MyTkZWdlVuaDJUMEZDV2tJdk1sRktaemM1YVVKS2NEZEpSbWhvY1hWeFdGTlFiMUZ4YVZoTVNGSlBTMWt2TVV4YU5tNUVWelY1TnpaMlptUlNhbkpxTlhOQ1oyVkpXV0l6V1hSUmNqUkNZelZHUld3eVVFbGFZekkxUWt0eU1qRjJPSE5qZWpsb1EwSjRXRmhEVEVoQ1RrVnNOMUl5TkZsMFptaElPSGRDWkRKb0wxQjNjbGhCVFdWM1kweG1RVlF6WjJaRlNHRjRUMjFaTWxoeFpXZHdhazFEWmt0Mk4zTmlabGRWTHlJc0ltMWhZeUk2SW1Jek16ZG1PVFJqWldJd09HRXhZVEl6T1RBNE1qVTRaRGszWWpreE0yRTVZVGxtTW1aaE5UZG1PVEE0TVRWa09UYzVaR1ExWVRZd09XSmlNalptTkRjaUxDSjBZV2NpT2lJaWZRPT0=', 1775767120);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `avatar_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'sunset',
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `karyawan_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE,
  KEY `users_karyawan_id_foreign` (`karyawan_id`) USING BTREE,
  CONSTRAINT `users_karyawan_id_foreign` FOREIGN KEY (`karyawan_id`) REFERENCES `karyawans` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` (`id`, `avatar_url`, `name`, `email`, `email_verified_at`, `last_login_at`, `password`, `remember_token`, `created_at`, `updated_at`, `theme`, `theme_color`, `karyawan_id`) VALUES
(1, NULL, 'Admin', 'admin@admin.com', NULL, NULL, '$2y$12$btEergDh8oZ68OSdz/Sy1uFmBxeUCr1fgEDEVSHsL8ARc9vAMoWGe', NULL, '2026-03-25 00:01:22', '2026-03-25 00:01:22', 'sunset', NULL, NULL),
(2, NULL, 'Staff Administrasi', 'staffadmin@demo.com', NULL, NULL, '$2y$12$btEergDh8oZ68OSdz/Sy1uFmBxeUCr1fgEDEVSHsL8ARc9vAMoWGe', NULL, '2026-03-25 00:01:22', '2026-03-25 00:01:22', 'sunset', NULL, NULL),
(3, NULL, 'Staff Kasbon', 'kasbon@demo.com', NULL, NULL, '$2y$12$btEergDh8oZ68OSdz/Sy1uFmBxeUCr1fgEDEVSHsL8ARc9vAMoWGe', NULL, '2026-03-25 00:01:22', '2026-03-25 00:01:22', 'sunset', NULL, NULL),
(4, NULL, 'Direktur Operasional', 'direktur@demo.com', NULL, NULL, '$2y$12$btEergDh8oZ68OSdz/Sy1uFmBxeUCr1fgEDEVSHsL8ARc9vAMoWGe', NULL, '2026-03-25 00:01:22', '2026-03-25 00:01:22', 'sunset', NULL, NULL),
(5, NULL, 'Karyawan', 'karyawan@demo.com', NULL, NULL, '$2y$12$btEergDh8oZ68OSdz/Sy1uFmBxeUCr1fgEDEVSHsL8ARc9vAMoWGe', NULL, '2026-03-25 00:01:22', '2026-03-25 00:01:22', 'sunset', NULL, NULL),
(6, NULL, 'sutiandi wijaya', '112@absensi.test', NULL, '2026-04-02 16:16:03', '$2y$12$FUr0ULfT2PsDwcwzPag6I.Ls9jBbYlDEgikRQo.ZJYID6NtIHx3.W', NULL, '2026-03-25 00:11:47', '2026-04-02 16:16:03', 'sunset', NULL, 1),
(7, NULL, 'agus suhaedi', '152@absensi.test', NULL, '2026-03-26 15:48:29', '$2y$12$XFQVbP2Dpr3o/VLZJ37rEOoUDh7gq9BM.xyQ4GEh1Ll6IYiNmRJSm', NULL, '2026-03-25 00:11:47', '2026-03-26 15:48:29', 'sunset', NULL, 2),
(8, NULL, 'ahmad haerul fadlan', '185@absensi.test', NULL, NULL, '$2y$12$zY/wSHrChj7M344xEYMMOODwcrGSSRKnhV3soZSXmyDDThB9Buz66', NULL, '2026-03-25 00:11:48', '2026-03-25 00:11:48', 'sunset', NULL, 3),
(9, NULL, 'rian adriansyah', '148@absensi.test', NULL, NULL, '$2y$12$TOMtR3OhbgvIDwCwl/8I.eKBwylExlsZQ3KtRmi1SdrJ/YAm5nbOi', NULL, '2026-03-25 00:11:48', '2026-03-25 00:11:48', 'sunset', NULL, 4),
(10, NULL, 'satibi', '261@absensi.test', NULL, '2026-03-25 01:09:14', '$2y$12$F5EEHqEOwDRIYoIxtlMpf.aWxEEaKr4g18StOTZ5kdXwapLv7odQK', NULL, '2026-03-25 00:11:48', '2026-03-25 01:09:14', 'sunset', NULL, 5),
(11, NULL, 'rosikin', '137@absensi.test', NULL, NULL, '$2y$12$bhckhLYhBiMrKSEMRGpJQ.tkWgpsrXiOUHjI3PdELV16xuwrvRxoC', NULL, '2026-03-25 00:11:49', '2026-03-25 00:11:49', 'sunset', NULL, 6),
(12, NULL, 'ardiansyah', '256@absensi.test', NULL, NULL, '$2y$12$civ4yDhoAAu3qucoLkHihuPXcZCPsCCUxrbEao/mRgrMALbvDUEXi', NULL, '2026-03-25 00:11:49', '2026-03-25 00:11:49', 'sunset', NULL, 7),
(13, NULL, 'rismanto', '440@absensi.test', NULL, NULL, '$2y$12$TCpb9airW9IECEXvyTX61OKjJ4L9dtX7l4aR4XbwUFibofjS5fgOW', NULL, '2026-03-25 00:11:49', '2026-03-25 00:11:49', 'sunset', NULL, 8),
(14, NULL, 'abdul hamid', '726@absensi.test', NULL, NULL, '$2y$12$yxtc3q57QOjtg0Ydh.R2puFw716hb92Uf8WOMab9f7eDopNQzEede', NULL, '2026-03-25 00:11:50', '2026-03-25 00:11:50', 'sunset', NULL, 9),
(15, NULL, 'andri maulana', '451@absensi.test', NULL, NULL, '$2y$12$tkceMZW/SoB8tP1VIL1U.ed6X/Zyj5.1der5MKFQUK7IcOfsximr.', NULL, '2026-03-25 00:11:50', '2026-03-25 00:11:50', 'sunset', NULL, 10),
(16, NULL, 'badrusalam', '68@absensi.test', NULL, NULL, '$2y$12$1XPGK7L8f4HbHAOZE11uHOgD2EkWIAZNiVtT./q6ftgfuTQMSS6rS', NULL, '2026-03-25 00:11:50', '2026-03-25 00:11:50', 'sunset', NULL, 11),
(17, NULL, 'dede amung sunarya', '442@absensi.test', NULL, NULL, '$2y$12$zHoIXgR15it3.KkWGitacOBXXC3fk94V.JZDYIhrXC8qPH9elhKYO', NULL, '2026-03-25 00:11:51', '2026-03-25 00:11:51', 'sunset', NULL, 12),
(18, NULL, 'agus', '121@absensi.test', NULL, NULL, '$2y$12$w9K5n.9rJwiNU/PKueswcOzvW7W7HvFRmYPPAlN5xDuzPxMUGkQVe', NULL, '2026-03-25 00:11:51', '2026-03-25 00:11:51', 'sunset', NULL, 13),
(19, NULL, 'feri ardiansah', '642@absensi.test', NULL, NULL, '$2y$12$vt2gifnr7C2fCzSKrAjUluDtE5iO/OfMD03tJrY9I0YOuZYnQ56/G', NULL, '2026-03-25 00:11:51', '2026-03-25 00:11:51', 'sunset', NULL, 14),
(20, NULL, 'muhamad yunus', '86@absensi.test', NULL, NULL, '$2y$12$tXmVV16qu.5Tb4TzCXj.Jugiwe0upareFqe.VBjgw/QUoeWf17rGa', NULL, '2026-03-25 00:11:52', '2026-03-25 00:11:52', 'sunset', NULL, 15),
(21, NULL, 'subekhi', '106@absensi.test', NULL, NULL, '$2y$12$zxD/MfPfnkipm.3APzWn0ekPQ.dYiK.bGg.r1Yl9cEQ373UIsZmj.', NULL, '2026-03-25 00:11:52', '2026-03-25 00:11:52', 'sunset', NULL, 16),
(22, NULL, 'yaman', '116@absensi.test', NULL, NULL, '$2y$12$8CVmu85j7kxbgQ3DuY2q0evftVoIXkRyYiI0hJYgzi9tjsh5H1A7C', NULL, '2026-03-25 00:11:52', '2026-03-25 00:11:52', 'sunset', NULL, 17),
(23, NULL, 'eko hariyanto', '124@absensi.test', NULL, NULL, '$2y$12$Bxl.gHs69aVa8hqfyior5uV8Ws7b0vYhG8aSG0SRI05E8wOnnuEGi', NULL, '2026-03-25 00:11:53', '2026-03-25 00:11:53', 'sunset', NULL, 18),
(24, NULL, 'hadi suryanto', '223@absensi.test', NULL, NULL, '$2y$12$Iu59d3M//EUii/G76GUW8.ZNuhlZXLIV3WD07qnZWNRcjoaqVgt3K', NULL, '2026-03-25 00:11:53', '2026-03-25 00:11:53', 'sunset', NULL, 19),
(25, NULL, 'ade sutrisna', '439@absensi.test', NULL, '2026-03-25 01:14:20', '$2y$12$bMB2yryPaegFWX9O0hqyS.7Kv8krhE23PJfVmvfR7RNEseNV5iXUe', NULL, '2026-03-25 00:11:54', '2026-03-25 01:14:20', 'sunset', NULL, 20),
(26, NULL, 'didin nurjayadi', '881@absensi.test', NULL, NULL, '$2y$12$62hfqKWMJiEe3.Yg31bYv.hob.y7S1sSBUG9tNsMB/vHd/dkkva0u', NULL, '2026-03-25 00:11:54', '2026-03-25 00:11:54', 'sunset', NULL, 21),
(27, NULL, 'chairul amin', '874@absensi.test', NULL, NULL, '$2y$12$cdwHmIJ5fjEXtVzgU0Hjbe55yDnpkUubIgcqYCAKABOCSe0dVc95m', NULL, '2026-03-25 00:11:54', '2026-03-25 00:11:54', 'sunset', NULL, 22),
(28, NULL, 'rusyana', '96@absensi.test', NULL, NULL, '$2y$12$csTXV8rddCm8WbcJbxABvebCR8NOQJNUDqfJsy0lCZx89vVA5S/hG', NULL, '2026-03-25 00:11:55', '2026-03-25 00:11:55', 'sunset', NULL, 23),
(29, NULL, 'muhamad toha', '132@absensi.test', NULL, NULL, '$2y$12$n4ObHdgmM/ocFQFeToNqqeRNk7BKcP1ohnwSR0e1KH5bZHgCAyZMC', NULL, '2026-03-25 00:11:55', '2026-03-25 00:11:55', 'sunset', NULL, 24),
(30, NULL, 'daud maulana', '441@absensi.test', NULL, NULL, '$2y$12$DaouIk4BMtF30lkET6z5OuC7gSzgKsgW54Dey5d2ahlbUaxgDbPJe', NULL, '2026-03-25 00:11:55', '2026-03-25 00:11:55', 'sunset', NULL, 25),
(31, NULL, 'ujang', '443@absensi.test', NULL, NULL, '$2y$12$UcpIg06N1nmsZlisq5BowOoKGB5J5aNy4.pAwij187QUpp5213LOK', NULL, '2026-03-25 00:11:56', '2026-03-25 00:11:56', 'sunset', NULL, 26),
(32, NULL, 'dedi eta suryana', '877@absensi.test', NULL, NULL, '$2y$12$ptR9OsMKVcEYYRSc61Mn9epPTB1StlMui0CmyhmXOc4/StJSKA6/2', NULL, '2026-03-25 00:11:56', '2026-03-25 00:11:56', 'sunset', NULL, 27),
(33, NULL, 'herman setiawan', '892@absensi.test', NULL, NULL, '$2y$12$xyCMq/zG4D1U1Yc4VMMp3uAxJ1HOusXG3Rp3GydX8C0QaN8u7mtK2', NULL, '2026-03-25 00:11:56', '2026-03-25 00:11:56', 'sunset', NULL, 28),
(34, NULL, 'nurhadi saputra', '157@absensi.test', NULL, NULL, '$2y$12$g14WVwLMwZBDc9cul3MHPOLcGxkpWvgVlV5pBwvX93YoCpNk1trbO', NULL, '2026-03-25 00:11:56', '2026-03-25 00:11:57', 'sunset', NULL, 29),
(35, NULL, 'santo', '905@absensi.test', NULL, NULL, '$2y$12$0JPyyaqYbpIC0b.YqvSssOpThk4txoDX2ZnxwSLcjbd0t/m5X5Eju', NULL, '2026-03-25 00:11:57', '2026-03-25 00:11:57', 'sunset', NULL, 30),
(36, NULL, 'ajiteguh suparto', '906@absensi.test', NULL, NULL, '$2y$12$1ZNOlZeM/kWseNbT6b0vWO6oJBw.xVLKq41ZA35niQ7yxwMovCCLO', NULL, '2026-03-25 00:11:57', '2026-03-25 00:11:57', 'sunset', NULL, 31),
(37, NULL, 'sunarto', '993@absensi.test', NULL, NULL, '$2y$12$DNdglpdgbJegTWyMHm2FrOKkCNFKA8b9za7TecOsYYIe4bykcm3zO', NULL, '2026-03-25 00:11:57', '2026-03-25 00:11:57', 'sunset', NULL, 32),
(38, NULL, 'endi', '994@absensi.test', NULL, NULL, '$2y$12$90J7k7HRwvWEvBNGpqLJa.ch9ogSkJ8ehDVybFriqcJ984yoPJmEa', NULL, '2026-03-25 00:11:58', '2026-03-25 00:11:58', 'sunset', NULL, 33),
(39, NULL, 'ros fitriana', '996@absensi.test', NULL, NULL, '$2y$12$fyHNe1OQ5m0MtdWl4nv2Fux.bqrlENhkGVKIjhlGv4uatNE69e/8O', NULL, '2026-03-25 00:11:58', '2026-03-25 00:11:58', 'sunset', NULL, 34),
(40, NULL, 'javar afat', '1000@absensi.test', NULL, NULL, '$2y$12$3bRyVnNvk6LCUZ6ijsJsNelpK63wgc4gL1bCy5YW3VG7Uf4sIKwl6', NULL, '2026-03-25 00:11:58', '2026-03-25 00:11:58', 'sunset', NULL, 35),
(41, NULL, 'warim', '1001@absensi.test', NULL, NULL, '$2y$12$XiRNZQxtHMc7R2FtTQqhGuy/mMNI2wpMzqDFd2cOWCtAGw5dBRzXm', NULL, '2026-03-25 00:11:59', '2026-03-25 00:11:59', 'sunset', NULL, 36),
(42, NULL, 'dede rahmat', '1002@absensi.test', NULL, NULL, '$2y$12$K7slXtM7QuUfvxbiQiyZ/uPdM2Ig5mszK0qfA6.i2pQRLmjHo8M0y', NULL, '2026-03-25 00:11:59', '2026-03-25 00:11:59', 'sunset', NULL, 37),
(43, NULL, 'bayu atar arrafli', '1003@absensi.test', NULL, NULL, '$2y$12$hst6qN.4zYwE/mHwpHfBdOg6//Xb2cqIDwHnpwHxBDuSMKSwWWEZ.', NULL, '2026-03-25 00:11:59', '2026-03-25 00:11:59', 'sunset', NULL, 38),
(44, NULL, 'triyono', '1005@absensi.test', NULL, NULL, '$2y$12$e5G2Gy82bnpuYJ.u29/XkO7XwZg7WJKkeerDVgshGf6T3VZ1WNrty', NULL, '2026-03-25 00:12:00', '2026-03-25 00:12:00', 'sunset', NULL, 39),
(45, NULL, 'asep saefudin', '1013@absensi.test', NULL, NULL, '$2y$12$xV5hdQ1SsFFZn3qF08eUXu0N/XC.QCgfSqjuYO9z7/EdBLBOrJp8i', NULL, '2026-03-25 00:12:00', '2026-03-25 00:12:00', 'sunset', NULL, 40),
(46, NULL, 'casmito', '71@absensi.test', NULL, NULL, '$2y$12$rvgBV8oXy1XtmP5zhxTBWOZkUQ5WfmDCy2WYclt33XaBi5c/tjm7i', NULL, '2026-03-25 00:12:00', '2026-03-25 00:12:00', 'sunset', NULL, 41),
(47, NULL, 'fatakun', '75@absensi.test', NULL, NULL, '$2y$12$oQpli8UEZp6FNZInvpkR1.l1zuKYDymCIzGbpzPmYw51hEn6x24CC', NULL, '2026-03-25 00:12:00', '2026-03-25 00:12:00', 'sunset', NULL, 42),
(48, NULL, 'mundor', '87@absensi.test', NULL, NULL, '$2y$12$aoj07iD8GRVdVEGPnY/mPOv4ZNewBQMaUzmMcE4MpoJW7MVysrOLa', NULL, '2026-03-25 00:12:01', '2026-03-25 00:12:01', 'sunset', NULL, 43),
(49, NULL, 'rojin', '93@absensi.test', NULL, NULL, '$2y$12$kPBkAexKoOekhFAXTADY3..rmWV/6vd.GG0U49WlzOBQcu41uUhpS', NULL, '2026-03-25 00:12:01', '2026-03-25 00:12:01', 'sunset', NULL, 44),
(50, NULL, 'sukardi', '109@absensi.test', NULL, NULL, '$2y$12$AE9Edc1EoSWms73qMnOLQe9HAQMbOzUBVco85dvn9wzXng0ZyNbuu', NULL, '2026-03-25 00:12:01', '2026-03-25 00:12:01', 'sunset', NULL, 45),
(51, NULL, 'wiwid sawidi', '115@absensi.test', NULL, NULL, '$2y$12$SMTE9mvV/1thDGEiSePFVOgYNau94XbNGX/YrpBPKQCQXaHtLrxwm', NULL, '2026-03-25 00:12:02', '2026-03-25 00:12:02', 'sunset', NULL, 46),
(52, NULL, 'riom choiri', '118@absensi.test', NULL, NULL, '$2y$12$Vb/sNWZDN3ZyHwpWmgiQieEVr.iLN51YKznRVurtiqvTttUISx.EK', NULL, '2026-03-25 00:12:02', '2026-03-25 00:12:02', 'sunset', NULL, 47),
(53, NULL, 'mastur', '129@absensi.test', NULL, NULL, '$2y$12$D0Wka5zdHGqqRUg/uMjlyOzC.zwxLJ6VrLseEE7rZEAnFE5.MlndS', NULL, '2026-03-25 00:12:02', '2026-03-25 00:12:02', 'sunset', NULL, 48),
(54, NULL, 'siroy', '139@absensi.test', NULL, NULL, '$2y$12$GvM6006fbQcRRnqxfprPNeLrUIoKSWFmB/JRhysgZ83lLH8LpwTNG', NULL, '2026-03-25 00:12:03', '2026-03-25 00:12:03', 'sunset', NULL, 49),
(55, NULL, 'alan kusumo', '172@absensi.test', NULL, NULL, '$2y$12$cXWDyPrjSOn.StgnTUjxheS7CKXFuhruXUyfewrbWwaCXPxRp8mbW', NULL, '2026-03-25 00:12:03', '2026-03-25 00:12:03', 'sunset', NULL, 50),
(56, NULL, 'camo', '202@absensi.test', NULL, NULL, '$2y$12$qcJCjpsQwy1KMIksRZJT8.hZpd0PjJxbb7igK7ppJXjTh2HJ7o0Qi', NULL, '2026-03-25 00:12:03', '2026-03-25 00:12:03', 'sunset', NULL, 51),
(57, NULL, 'supardi', '110@absensi.test', NULL, NULL, '$2y$12$JZUHs2Ri9ywm5USK92DPNuD3dVLoG1tsWYL5QNBkpxfEQzie8vUz2', NULL, '2026-03-25 00:12:04', '2026-03-25 00:12:04', 'sunset', NULL, 52),
(58, NULL, 'ahmadi', '61@absensi.test', NULL, NULL, '$2y$12$7.90YFNkbBNorANtPnWfrOaUZIMmBXlO8pH0MuOqLsRs6TaOdrGjK', NULL, '2026-03-25 00:12:04', '2026-03-25 00:12:04', 'sunset', NULL, 53),
(59, NULL, 'edi sanir', '74@absensi.test', NULL, NULL, '$2y$12$ElZ0XnNmLMvsRLQcdXb1HOIW28sZV6yTM1RND.ebROsn4NRMutvhO', NULL, '2026-03-25 00:12:04', '2026-03-25 00:12:04', 'sunset', NULL, 54),
(60, NULL, 'hasim bin deung', '77@absensi.test', NULL, NULL, '$2y$12$AY.DsJYi6Hmub8a09MGFAe5rb4UZJ.NDrk5zGuMumAo2tl/LrkMJW', NULL, '2026-03-25 00:12:05', '2026-03-25 00:12:05', 'sunset', NULL, 55),
(61, NULL, 'nandang', '88@absensi.test', NULL, NULL, '$2y$12$AbrJMXWUtQCM8qi0yJ8zIuLmDC4sYrTPT9MKvELNdL0k/yEJ1jjF2', NULL, '2026-03-25 00:12:05', '2026-03-25 00:12:05', 'sunset', NULL, 56),
(62, NULL, 'ohim', '90@absensi.test', NULL, NULL, '$2y$12$/g98/sNq/aQVOSPMHx/muuWRg506NCJcxc5ZJur1LbByv9YkMlPqq', NULL, '2026-03-25 00:12:05', '2026-03-25 00:12:05', 'sunset', NULL, 57),
(63, NULL, 'sahri', '99@absensi.test', NULL, NULL, '$2y$12$ZCCfwIotxn92kWxSlL9Fa.A8anSiKV.PoQYclzxC8lrF0Y/h6svsm', NULL, '2026-03-25 00:12:06', '2026-03-25 00:12:06', 'sunset', NULL, 58),
(64, NULL, 'solihin', '104@absensi.test', NULL, NULL, '$2y$12$eoIk6LZCPBptP1jTR1xa..EF34gWsW7Z4eP1vBhDofhzL0pUbuOd2', NULL, '2026-03-25 00:12:06', '2026-03-25 00:12:06', 'sunset', NULL, 59),
(65, NULL, 'sopian', '105@absensi.test', NULL, NULL, '$2y$12$2I7Ah1dR7uGpwhX0h5XmDuQwg8KepgjyMliu.D4Ubax0ICbx5LvhO', NULL, '2026-03-25 00:12:06', '2026-03-25 00:12:06', 'sunset', NULL, 60),
(66, NULL, 'muhammad nur romdon', '133@absensi.test', NULL, NULL, '$2y$12$eXkHFzADwv8dz.eceKllGeSifKX/7WFszZpm6Py3nlA8ofYsPw8M2', NULL, '2026-03-25 00:12:07', '2026-03-25 00:12:07', 'sunset', NULL, 61),
(67, NULL, 'angga kusuma', '269@absensi.test', NULL, NULL, '$2y$12$QcFbKnqcti4EIwcnjJ6H4ua3Ix9Wn5WB0XaFmJ7k50foR9ol/s96y', NULL, '2026-03-25 00:12:07', '2026-03-25 00:12:07', 'sunset', NULL, 62),
(68, NULL, 'yayat sudrajat', '421@absensi.test', NULL, NULL, '$2y$12$PBx7PUGVJehpK56LmN625.Ag/gr5MP.OIhHU16RE42FctFKpW3vn6', NULL, '2026-03-25 00:12:07', '2026-03-25 00:12:07', 'sunset', NULL, 63),
(69, NULL, 'muhdi', '534@absensi.test', NULL, NULL, '$2y$12$KiQJHXk/bBkmRMG1Bn.KielGjWx23/MLNU9SDXaJW1LfBVfh71ZCq', NULL, '2026-03-25 00:12:08', '2026-03-25 00:12:08', 'sunset', NULL, 64),
(70, NULL, 'tajudin', '844@absensi.test', NULL, NULL, '$2y$12$w5gBxK7T6pq/PGpbEsOrb.9hHhdAhaXpTgMNgb5NRvVsN4JPZSubS', NULL, '2026-03-25 00:12:08', '2026-03-25 00:12:08', 'sunset', NULL, 65),
(71, NULL, 'abdul rohman', '58@absensi.test', NULL, NULL, '$2y$12$WhjH0uOvoKG3MIu4v9bVu.EecenBNPaykRK53AwZqgTFNkC9aHSwS', NULL, '2026-03-25 00:12:08', '2026-03-25 00:12:08', 'sunset', NULL, 66),
(72, NULL, 'mardi', '83@absensi.test', NULL, NULL, '$2y$12$8kqyj6u0CQlaf0y3TOLtOujLXRX/PAIEuBZOpbua8H1WxPVDl7CQq', NULL, '2026-03-25 00:12:08', '2026-03-25 00:12:08', 'sunset', NULL, 67),
(73, NULL, 'saepul bahri', '97@absensi.test', NULL, NULL, '$2y$12$BMx7gk1VZt7Lxs6X3uIpmeBT8EBNKik11xngb04GNdCxq6KwPFSme', NULL, '2026-03-25 00:12:09', '2026-03-25 00:12:09', 'sunset', NULL, 68),
(74, NULL, 'sobirin', '103@absensi.test', NULL, NULL, '$2y$12$.6tIeVpzg7mN1qsKST1fOereHOYZ6QbwAzr5RPZmXFsMNNnhk4Bt2', NULL, '2026-03-25 00:12:09', '2026-03-25 00:12:09', 'sunset', NULL, 69),
(75, NULL, 'muhammad saeful basri', '134@absensi.test', NULL, NULL, '$2y$12$x/1gcAslWkX6t0e2M0OQgOmgrm.w8q87CeliXT6Qlv6Rz9EgW039a', NULL, '2026-03-25 00:12:09', '2026-03-25 00:12:09', 'sunset', NULL, 70),
(76, NULL, 'ahmad syahroni', '382@absensi.test', NULL, NULL, '$2y$12$OW3W2EHUfhfGenHxnJ.gI.BkYLBJkkMTKDMJHYKzWwvP71d2r3fCS', NULL, '2026-03-25 00:12:10', '2026-03-25 00:12:10', 'sunset', NULL, 71),
(77, NULL, 'nurdin', '657@absensi.test', NULL, NULL, '$2y$12$C7mCIm.T4xMHx5QRx50vGeIrYHP1WlU9mP84RDV9.yJT2PbkORV46', NULL, '2026-03-25 00:12:10', '2026-03-25 00:12:10', 'sunset', NULL, 72),
(78, NULL, 'sanian', '658@absensi.test', NULL, NULL, '$2y$12$Dgp41b.z0haLtDxhZcNufODrjR9rdw6cG64mXz3V/3q1Ix4qhOGMq', NULL, '2026-03-25 00:12:10', '2026-03-25 00:12:10', 'sunset', NULL, 73),
(79, NULL, 'ali usman', '62@absensi.test', NULL, NULL, '$2y$12$p15xN5VfIwCYd/v69.omVub39b/05IEN8RU2EdaLXfE/jfObaZttW', NULL, '2026-03-25 00:12:11', '2026-03-25 00:12:11', 'sunset', NULL, 74),
(80, NULL, 'saepudin', '227@absensi.test', NULL, NULL, '$2y$12$Bj4BVNIsJb8so77EfXZIke3w2q2wQtazbKPRMq3rtltjo/QY7HFTi', NULL, '2026-03-25 00:12:11', '2026-03-25 00:12:11', 'sunset', NULL, 75),
(81, NULL, 'asjono', '66@absensi.test', NULL, NULL, '$2y$12$VlPVDaRalN1YTYEXqaxywuv76/jVqxHth2Wn/HKI/cPXl2M6stoBe', NULL, '2026-03-25 00:12:11', '2026-03-25 00:12:11', 'sunset', NULL, 76),
(82, NULL, 'rohmat', '136@absensi.test', NULL, NULL, '$2y$12$GVFMzwoQJ/KYuFTkS3YT3OrMRgurNphtoVq8xf2god6M8zQRWXm5W', NULL, '2026-03-25 00:12:12', '2026-03-25 00:12:12', 'sunset', NULL, 77),
(83, NULL, 'soleman', '141@absensi.test', NULL, NULL, '$2y$12$4a9aLjYKJyLRok7lNgBDI.5cZ.lhVp6CrWV0FwXMGa4a2Jn2McHmK', NULL, '2026-03-25 00:12:12', '2026-03-25 00:12:12', 'sunset', NULL, 78),
(84, NULL, 'mad tohir', '260@absensi.test', NULL, NULL, '$2y$12$naDYplElSiLrCO3KIkb6OOMLZlQysmAyXjMd/vAMakNfpdR1.9Tam', NULL, '2026-03-25 00:12:12', '2026-03-25 00:12:12', 'sunset', NULL, 79),
(85, NULL, 'asmuni', '262@absensi.test', NULL, NULL, '$2y$12$0jaKDTZ4M.FSuKFkL8YS2.obLQv2GM4Dep0GibXTPxBcZ2gJkFquS', NULL, '2026-03-25 00:12:13', '2026-03-25 00:12:13', 'sunset', NULL, 80),
(86, NULL, 'hasim', '365@absensi.test', NULL, NULL, '$2y$12$H1WUzexH6Sf9qNLUaye1dehTDeMiYyDHHJtIdBbCHvtM3qDM/F9.C', NULL, '2026-03-25 00:12:13', '2026-03-25 00:12:13', 'sunset', NULL, 81),
(87, NULL, 'andi', '182@absensi.test', NULL, NULL, '$2y$12$PQrhX0MLpuWksMv1rrc2mu45Bz5b8VJkVBOlQvJeX4QPs/MM7Of7.', NULL, '2026-03-25 00:12:13', '2026-03-25 00:12:13', 'sunset', NULL, 82),
(88, NULL, 'iman', '1007@absensi.test', NULL, NULL, '$2y$12$.7AluWT4fo7ln5yiIYA5veKDbXpIznoJhfbg6f.jO7lsby7GxF6CC', NULL, '2026-03-25 00:12:14', '2026-03-25 00:12:14', 'sunset', NULL, 83),
(89, NULL, 'siti muhibah', '1009@absensi.test', NULL, NULL, '$2y$12$y5UkiwBj/P.8BR682i4.0usNdCGTL/EBsHWxuMp2u/fCUpwBAVv7G', NULL, '2026-03-25 00:12:14', '2026-03-25 00:12:14', 'sunset', NULL, 84),
(90, NULL, 'andi', '280@absensi.test', NULL, NULL, '$2y$12$R4MN3qp13Yssy.3nn8FRC.xeGkmPSKs.Sql7eiAkXuY/D/VCD8sRC', NULL, '2026-03-25 00:12:14', '2026-03-25 00:12:14', 'sunset', NULL, 85),
(91, NULL, 'haerul fahmi', '423@absensi.test', NULL, NULL, '$2y$12$bJX/9czrLakAz..AL8IPQudnjnOnQQ456LAe68ycs4hm0CB1cN.8W', NULL, '2026-03-25 00:12:15', '2026-03-25 00:12:15', 'sunset', NULL, 86),
(92, NULL, 'asman', '639@absensi.test', NULL, NULL, '$2y$12$hctD9g/tWE7NUANoTwSZ0eSGn42.oNBWafiI9TaTPuEKGJnquFZ.C', NULL, '2026-03-25 00:12:15', '2026-03-25 00:12:15', 'sunset', NULL, 87),
(93, NULL, 'hendrik', '78@absensi.test', NULL, NULL, '$2y$12$pa14v7oyav4nbVLYU.yA2u.QD6NCsD43qZaP3zyLeaWHOiOa1MjOy', NULL, '2026-03-25 00:12:15', '2026-03-25 00:12:15', 'sunset', NULL, 88),
(94, NULL, 'nursaleh', '634@absensi.test', NULL, NULL, '$2y$12$nNL8L0RpK/hJ7E5WKH3IZugL1YZW7Uo9TbGLTbW/zrYcbQr1Y4d9S', NULL, '2026-03-25 00:12:16', '2026-03-25 00:12:16', 'sunset', NULL, 89),
(95, NULL, 'rusli', '95@absensi.test', NULL, NULL, '$2y$12$dIr92BDTQP3.Zy9tTEQj2u7pAIQ9z/atartkEAwlfy2ca9NazqByO', NULL, '2026-03-25 00:12:16', '2026-03-25 00:12:16', 'sunset', NULL, 90),
(96, NULL, 'novanda syahru siamana putra', '814@absensi.test', NULL, NULL, '$2y$12$LTZbX6MxzHfoHbuwCq.skugsw2AX2EBw4/Pq.qJpZ47c6F3n0Lx9O', NULL, '2026-03-25 00:12:16', '2026-03-25 00:12:16', 'sunset', NULL, 91),
(97, NULL, 'nurdin', '229@absensi.test', NULL, NULL, '$2y$12$NodBsCpydol8TYDXBHxPRezKL2wKg/FM3KRTjaMpSPuV4Lgj7lQHm', NULL, '2026-03-25 00:12:17', '2026-03-25 00:12:17', 'sunset', NULL, 92),
(98, NULL, 'ronal', '326@absensi.test', NULL, NULL, '$2y$12$1SkyeoLTI/L8/nUODwYo..LlKaAOZ0jLLX8/n/6oHBl/dcDERc9Ni', NULL, '2026-03-25 00:12:17', '2026-03-25 00:12:17', 'sunset', NULL, 93),
(99, NULL, 'ahmad subandi', '153@absensi.test', NULL, NULL, '$2y$12$/lA9vAm3CkVG1dtbzyJcPe8Liva41sfZkeI0w5zkg1tzKfuDPecvy', NULL, '2026-03-25 00:12:17', '2026-03-25 00:12:17', 'sunset', NULL, 94),
(100, NULL, 'muhamad ikhsan', '154@absensi.test', NULL, NULL, '$2y$12$ecQjvAF1XBP5HhfDMQjtPuPh7Oe3nxzFU.p8NWCu15VA0y9WfSfCK', NULL, '2026-03-25 00:12:18', '2026-03-25 00:12:18', 'sunset', NULL, 95),
(101, NULL, 'syariffudin', '143@absensi.test', NULL, NULL, '$2y$12$gErzkKCSUExQ2GQszOuJ5ezmAv8A7dkOXdSCPXrybwwVf9RMFjWsa', NULL, '2026-03-25 00:12:18', '2026-03-25 00:12:18', 'sunset', NULL, 96),
(102, NULL, 'abdul hasan', '640@absensi.test', NULL, NULL, '$2y$12$ngN2bE/tFKjArcncamNfVO6AGqvuSxYb097sruYq8H2trl6WZm1JK', NULL, '2026-03-25 00:12:18', '2026-03-25 00:12:18', 'sunset', NULL, 97),
(103, NULL, 'sutarno', '111@absensi.test', NULL, NULL, '$2y$12$bovRJmNw7sNl9qGfLRlQwu5GuvyXlPg4dSqzplWl8euUAHpKXl2ra', NULL, '2026-03-25 00:12:18', '2026-03-25 00:12:18', 'sunset', NULL, 98),
(104, NULL, 'murna irawan', '458@absensi.test', NULL, NULL, '$2y$12$epVjAp0A.tkMKDg9XS/HZOEXnXNP4/grVVeWTu70zxRKlxUlm.F6e', NULL, '2026-03-25 00:12:19', '2026-03-25 00:12:19', 'sunset', NULL, 99),
(105, NULL, 'alpi gunawan', '638@absensi.test', NULL, NULL, '$2y$12$DrUnOoEIlgt4plVdbWayEeOdDeV0qswphQChxAkhrBS.f.lh1BhZG', NULL, '2026-03-25 00:12:19', '2026-03-25 00:12:19', 'sunset', NULL, 100),
(106, NULL, 'nur padzar', '633@absensi.test', NULL, NULL, '$2y$12$Rs3EVL6RRIS4IkIgYlGs/uHysF2RqdC7wxjRdjdc/MMOnmvCS1CFG', NULL, '2026-03-25 00:12:19', '2026-03-25 00:12:19', 'sunset', NULL, 101),
(107, NULL, 'hotib muhaemin majid', '79@absensi.test', NULL, NULL, '$2y$12$opCYt3ztxqU/CrpkUGUZAefnx7pe4PwPMUCQ6yzvfRVxXOUoOmwTO', NULL, '2026-03-25 00:12:20', '2026-03-25 00:12:20', 'sunset', NULL, 102),
(108, NULL, 'muhamad maulana', '281@absensi.test', NULL, NULL, '$2y$12$rMriTBklA5piSvoZXYPoJuxw79PV6bSpUJBX6jJNxdKKeAAsgAVxC', NULL, '2026-03-25 00:12:20', '2026-03-25 00:12:20', 'sunset', NULL, 103),
(109, NULL, 'hebi eroviko', '323@absensi.test', NULL, NULL, '$2y$12$YTitP5RlVwPPBzfeyRHN9eilADeURCXAzD3lsItUNopxjmQpHVorW', NULL, '2026-03-25 00:12:20', '2026-03-25 00:12:20', 'sunset', NULL, 104),
(110, NULL, 'ahmad munajat', '324@absensi.test', NULL, NULL, '$2y$12$8fnd5S5t2dGl1FhmKUYXseoA0Me2MBK5FLsENmqpJO84FFHrYiLRO', NULL, '2026-03-25 00:12:21', '2026-03-25 00:12:21', 'sunset', NULL, 105),
(111, NULL, 'muhamad paridus salam', '325@absensi.test', NULL, NULL, '$2y$12$fzYtPe0fBtscWaoSWIRVieRFo0kxS61EPsIXWvHBNuTgbNZo2CuPa', NULL, '2026-03-25 00:12:21', '2026-03-25 00:12:21', 'sunset', NULL, 106),
(112, NULL, 'muhamad wahyudin', '632@absensi.test', NULL, NULL, '$2y$12$0ki6QG.ut1qgmBogg9iT6urmZwSxpjGeaqveLDOHxLSI1KMvr3CYq', NULL, '2026-03-25 00:12:21', '2026-03-25 00:12:21', 'sunset', NULL, 107),
(113, NULL, 'abdul ajis', '652@absensi.test', NULL, NULL, '$2y$12$iklMVQBz0jN14tPJ8VBZa.5GKCayss0G5a5zniFuqv0HSR1kAX3v6', NULL, '2026-03-25 00:12:22', '2026-03-25 00:12:22', 'sunset', NULL, 108),
(114, NULL, 'muhamad toni', '656@absensi.test', NULL, NULL, '$2y$12$V.mZ/ga7cCPpNzTbbq/VbeyJpDLVfywChR.UirQMjk7fs3JNIulp6', NULL, '2026-03-25 00:12:22', '2026-03-25 00:12:22', 'sunset', NULL, 109),
(115, NULL, 'rifhaldi hakiki', '836@absensi.test', NULL, NULL, '$2y$12$HRu.qw9m1yx1D7tbDdtjSOgAaKlOsD798cJhWL932myMup4gtgCTO', NULL, '2026-03-25 00:12:23', '2026-03-25 00:12:23', 'sunset', NULL, 110),
(116, NULL, 'muhamad pirman nuralim', '838@absensi.test', NULL, NULL, '$2y$12$I15jkJVhslpGvCWqV93n0OWVJRqS12yLRNq9YGEzuUP40Bq1HsPRW', NULL, '2026-03-25 00:12:23', '2026-03-25 00:12:23', 'sunset', NULL, 111),
(117, NULL, 'inang', '913@absensi.test', NULL, NULL, '$2y$12$K9cxxDw9P5IL8v/z9Ju/R.8O6RinTDLuLWaDef0xFj3hixBnfPIpC', NULL, '2026-03-25 00:12:23', '2026-03-25 00:12:23', 'sunset', NULL, 112),
(118, NULL, 'solahudin', '745@absensi.test', NULL, NULL, '$2y$12$Pj0MC/q8IvNwxT8CRQOkn.v8Ua1KEnmX7vq9a50/urA1eAf7jxiSy', NULL, '2026-03-25 00:12:24', '2026-03-25 00:12:24', 'sunset', NULL, 113),
(119, NULL, 'bimo andriansyah', '980@absensi.test', NULL, NULL, '$2y$12$xK3z.XQjF64V3WgVsrEkGeB6xPItMR/IIoTkbZYuy/T9tXBZvSy.6', NULL, '2026-03-25 00:12:24', '2026-03-25 00:12:24', 'sunset', NULL, 114),
(120, NULL, 'mansur', '128@absensi.test', NULL, NULL, '$2y$12$y0Z/wse1TZWbikdylCyynOmHeKFwAFWgSNnDZF9w3QIw0cUT8DTJS', NULL, '2026-03-25 00:12:25', '2026-03-25 00:12:25', 'sunset', NULL, 115),
(121, NULL, 'udin sarudin', '605@absensi.test', NULL, NULL, '$2y$12$LN2KTicIzMi8PS1jO8TUxeY0U13fopaNEp575Y19wrODgPOHGKX7C', NULL, '2026-03-25 00:12:25', '2026-03-25 00:12:25', 'sunset', NULL, 116),
(122, NULL, 'badru tamami', '635@absensi.test', NULL, NULL, '$2y$12$npkSvG8fkXRaq8.g3Zf6WO9sU0iPwW09CEX4.fUNipmbmoNDv6Hia', NULL, '2026-03-25 00:12:25', '2026-03-25 00:12:25', 'sunset', NULL, 117),
(123, NULL, 'muhamad nurjen', '659@absensi.test', NULL, NULL, '$2y$12$qeN6wTKqPnPOvJrg/Zt84Owkp7WgRa1paXzM.7AOtPEbf4mBUYdDa', NULL, '2026-03-25 00:12:26', '2026-03-25 00:12:26', 'sunset', NULL, 118),
(124, NULL, 'toat priyatna', '785@absensi.test', NULL, NULL, '$2y$12$So34XR2jrJh.AFoTXrmMK.b9pCTm.iODhGjS3EKAEP3G7oqAlDu6m', NULL, '2026-03-25 00:12:26', '2026-03-25 00:12:26', 'sunset', NULL, 119),
(125, NULL, 'awan sutiana', '813@absensi.test', NULL, NULL, '$2y$12$I7JMGP7LCRWjkC8C.iK49.xJ09fj5j3H0TXbxvxeg5GDp7gbv2plu', NULL, '2026-03-25 00:12:26', '2026-03-25 00:12:26', 'sunset', NULL, 120),
(126, NULL, 'herdiyanto', '837@absensi.test', NULL, NULL, '$2y$12$7hWNHv/nQjD3bdixikyOLuvdFQOlkBln4ez8VsAKH6KZcK6o11.s2', NULL, '2026-03-25 00:12:27', '2026-03-25 00:12:27', 'sunset', NULL, 121),
(127, NULL, 'dana', '854@absensi.test', NULL, NULL, '$2y$12$PmtsAMZg.9oDpM24s0c1wO3vrKugQ9HWmZs3xeFn98GiOhkC8Ddvi', NULL, '2026-03-25 00:12:27', '2026-03-25 00:12:27', 'sunset', NULL, 122),
(128, NULL, 'mulyadi', '873@absensi.test', NULL, NULL, '$2y$12$M/WuYWTn15zSsHAQNsXJWOmI6J4Zyr/Yw4dHKHqESrymI9O/LaarG', NULL, '2026-03-25 00:12:27', '2026-03-25 00:12:27', 'sunset', NULL, 123),
(129, NULL, 'ahyadi', '898@absensi.test', NULL, NULL, '$2y$12$wgi5nWpH1gRVnEnMOwxtkuTq0PkwxGlFlBtlcpXkC3NNF4iTr5xdW', NULL, '2026-03-25 00:12:28', '2026-03-25 00:12:28', 'sunset', NULL, 124),
(130, NULL, 'muhamad haerul anwar', '922@absensi.test', NULL, NULL, '$2y$12$yiJFSDTWnaoL.TNfEyfO4u.dZoWf0Y/xOqJHFLBlbJCYUb1vQuKgu', NULL, '2026-03-25 00:12:28', '2026-03-25 00:12:28', 'sunset', NULL, 125),
(131, NULL, 'rusmawan', '923@absensi.test', NULL, NULL, '$2y$12$aSDoJrRoH9rloIWmSwf3GefZTwrMK9.FPXBf0Bwh6fMUZujcSGzRy', NULL, '2026-03-25 00:12:28', '2026-03-25 00:12:28', 'sunset', NULL, 126),
(132, NULL, 'rasta', '924@absensi.test', NULL, NULL, '$2y$12$/.Xdp1ErtL1Rf7KLcUGrqOcwOwrbC4CS4z2TvbOIXVzKLFgRIDqS2', NULL, '2026-03-25 00:12:29', '2026-03-25 00:12:29', 'sunset', NULL, 127),
(133, NULL, 'hasani sutisna', '989@absensi.test', NULL, NULL, '$2y$12$BMnKTS9cjyxQSfbt3T9PeO7ezNnNlJ7HDV/AS3rgW7GYmPcwcV/i2', NULL, '2026-03-25 00:12:29', '2026-03-25 00:12:29', 'sunset', NULL, 128),
(134, NULL, 'septa ryanda putra', '990@absensi.test', NULL, NULL, '$2y$12$tE5dnn3lYUcJaUcL5Q/iBuRJ2X8q7fihZvD2MwZ29YITEKwSIw72W', NULL, '2026-03-25 00:12:29', '2026-03-25 00:12:29', 'sunset', NULL, 129),
(135, NULL, 'darmanto', '72@absensi.test', NULL, NULL, '$2y$12$7MvP1R7GYaXNvieptgIQFOMAAvwD5St1xwpxN1tn.MsLKRGOwuY9O', NULL, '2026-03-25 00:12:29', '2026-03-25 00:12:29', 'sunset', NULL, 130),
(136, NULL, 'dwi lanto', '73@absensi.test', NULL, NULL, '$2y$12$gSw5KbJ/wu29thWkXHCS/OkZAFO0p9aSZqtnmEW3GBz0L9NtN5OYW', NULL, '2026-03-25 00:12:30', '2026-03-25 00:12:30', 'sunset', NULL, 131),
(137, NULL, 'rosikin', '94@absensi.test', NULL, NULL, '$2y$12$RluoJUVnXeKcdccg.IMshuu.7nEuyqxtfc3O1hjSDP/yoAP3gt6zi', NULL, '2026-03-25 00:12:30', '2026-03-25 00:12:30', 'sunset', NULL, 132),
(138, NULL, 'suhendi', '108@absensi.test', NULL, NULL, '$2y$12$6Qcv6eI9YBDurrO/fep1KuVz2IX1LgW6SKS4UlqWAZQKfODMrvLhG', NULL, '2026-03-25 00:12:30', '2026-03-25 00:12:30', 'sunset', NULL, 133),
(139, NULL, 'nursalim', '291@absensi.test', NULL, NULL, '$2y$12$Vj6YaWlqacbH2AT1TPp.Le4vxXwEciF./bD9s/pepmGNcovQUSboa', NULL, '2026-03-25 00:12:31', '2026-03-25 00:12:31', 'sunset', NULL, 134),
(140, NULL, 'hermawan', '292@absensi.test', NULL, NULL, '$2y$12$qzeHKHVf2ky4HQ6QS3AheuzFeiLoofD8JPxjaG8c7K7eyXRo6lSYS', NULL, '2026-03-25 00:12:31', '2026-03-25 00:12:31', 'sunset', NULL, 135),
(141, NULL, 'rimanto', '492@absensi.test', NULL, NULL, '$2y$12$D63nMOG7cnsvPNvaHw8cgOkl/lJQgjzVkbm8yY5CmZ60UPrOm51AK', NULL, '2026-03-25 00:12:31', '2026-03-25 00:12:31', 'sunset', NULL, 136),
(142, NULL, 'fiki handika putra', '748@absensi.test', NULL, NULL, '$2y$12$XRj6LaGkNM1P/lFGHD9ps.Kx9UKb1po6fro60ND7yaZcl/mZUxzwS', NULL, '2026-03-25 00:12:32', '2026-03-25 00:12:32', 'sunset', NULL, 137),
(143, NULL, 'muhammad muklis', '918@absensi.test', NULL, NULL, '$2y$12$F.BeuDB3OD3lMVIYJyV8IeHtYFO5FdLwgbnDzHPTdrzP26WTBWNnu', NULL, '2026-03-25 00:12:32', '2026-03-25 00:12:32', 'sunset', NULL, 138),
(144, NULL, 'm yoga putra pratama', '919@absensi.test', NULL, NULL, '$2y$12$ldG4eY/8aAefONrL3u7kNOm5ZZPzLOE.7xxZCgc23TLTvHdxxFZRW', NULL, '2026-03-25 00:12:32', '2026-03-25 00:12:32', 'sunset', NULL, 139),
(145, NULL, 'saepul', '98@absensi.test', NULL, NULL, '$2y$12$zOrUQEf10lu8TMKhHIvv3egty1UPIAnJmr9GWT0ztqKnXS9teMiaK', NULL, '2026-03-25 00:12:32', '2026-03-25 00:12:32', 'sunset', NULL, 140),
(146, NULL, 'arif sugianto', '122@absensi.test', NULL, NULL, '$2y$12$BGmEHVlm.g/SrB8jpe5T6uh5XziCt0y8frYnnE9m5HGycM4xuoLaq', NULL, '2026-03-25 00:12:33', '2026-03-25 00:12:33', 'sunset', NULL, 141),
(147, NULL, 'latip', '303@absensi.test', NULL, NULL, '$2y$12$os6RTYg3tkL9kobryme/6.KtVF3XNTtXoshLVVC5kdnQsbcmy5Gey', NULL, '2026-03-25 00:12:33', '2026-03-25 00:12:33', 'sunset', NULL, 142),
(148, NULL, 'suheriyansyah', '311@absensi.test', NULL, NULL, '$2y$12$3by2NwAXa6XReJhGPZhgh.eY96/.4CB02xod7dRSe6TpWvnGq.lWu', NULL, '2026-03-25 00:12:33', '2026-03-25 00:12:33', 'sunset', NULL, 143),
(149, NULL, 'supriatna', '604@absensi.test', NULL, NULL, '$2y$12$HZcZSb.PuJoWW3mGo1paF.XzBHs8orpzEhmDZG093H0c.ngOAVJDW', NULL, '2026-03-25 00:12:34', '2026-03-25 00:12:34', 'sunset', NULL, 144),
(150, NULL, 'lambar', '887@absensi.test', NULL, NULL, '$2y$12$28l9pOIdYISGUJzAW6aFoOFkYaB0iYV3BJqaUI0s6LAAJwAqXzQR6', NULL, '2026-03-25 00:12:34', '2026-03-25 00:12:34', 'sunset', NULL, 145),
(151, NULL, 'muhamad sopian', '888@absensi.test', NULL, NULL, '$2y$12$sa/3EXzhxNNKJRfScqYamO/tKR3CQF9dipnBCJjFGUBnLJuE8jmdK', NULL, '2026-03-25 00:12:34', '2026-03-25 00:12:34', 'sunset', NULL, 146);

SET FOREIGN_KEY_CHECKS = 1;
