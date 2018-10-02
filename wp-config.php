<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define('DB_NAME', 'led');

/** Имя пользователя MySQL */
define('DB_USER', 'root');

/** Пароль к базе данных MySQL */
define('DB_PASSWORD', '');

/** Имя сервера MySQL */
define('DB_HOST', 'localhost');

/** Кодировка базы данных для создания таблиц. */
define('DB_CHARSET', 'utf8');

/** Схема сопоставления. Не меняйте, если не уверены. */
define('DB_COLLATE', '');

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '}%lqAQ+vu/5;k=/sC_s9D=}XG>G`}4T}bhnmt;Id*^V6d;9!`0Ry705ApJ2m/(yc');
define('SECURE_AUTH_KEY',  'mS4Ic4km6WVZ]6^g5E7q|GDZW4X%qQG1;O5W1Uav<:5**OSTl2Bw<w#Wa2+[dD20');
define('LOGGED_IN_KEY',    'n1`Kyo8uD/<q<)A]8|yNwx |-pl@EU[/VhvFJh0R)B.YyLHcQ+kH:j5iDDo!USAd');
define('NONCE_KEY',        'r<%gM?G3Qhj?!n[ez+D^_TidvUS{~v6(R9tSdpDZ~FksE;|MeNa];,6CP*k,uU6`');
define('AUTH_SALT',        '#-3l-aU,oXp=?jWanrM$^lI>nCcN)ah:pYj0Go#*;fw8pMuj8u1xs#pzV!h6:[Y`');
define('SECURE_AUTH_SALT', '4UCmT@o3O}DPq b9Hxq|=/gb*Z^=ty#RoE2MD;Zzo}<NH[9_vCU*_B!of;^YT-1z');
define('LOGGED_IN_SALT',   '8i)2Kso,hoIc^|(zNy8>!B~P3#B@{RZ1uW73w4fmRq !ju~svKGBvhzQ&X<:]jQ3');
define('NONCE_SALT',       'DRH%v7(b-}x#s8z^FFm>6G52,YXNtXw~0pr@i&FCGRFwq[n$t7.e.mvN$+V(!kXn');

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix  = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Инициализирует переменные WordPress и подключает файлы. */
require_once(ABSPATH . 'wp-settings.php');
