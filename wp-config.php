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
define('WP_CACHE', true); //Added by WP-Cache Manager
define( 'WPCACHEHOME', 'C:\OpenServer\domains\new-kotleta\wp-content\plugins\wp-super-cache/' ); //Added by WP-Cache Manager
define('DB_NAME', 'kotleta');

/** Имя пользователя MySQL */
define('DB_USER', 'root');

/** Пароль к базе данных MySQL */
define('DB_PASSWORD', '');

/** Имя сервера MySQL */
define('DB_HOST', 'localhost');

/** Кодировка базы данных для создания таблиц. */
define('DB_CHARSET', 'utf8mb4');

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
define('AUTH_KEY',         'R(>DT +<sZ[P<XO_RPK~k2pfgWDB_LU,Yoc:j-*}=}F/9?^T)4.4>o}rMs6!U[.;');
define('SECURE_AUTH_KEY',  'PnU:jb9-gv}A^IJ|jX;yLT&+i6M(U/8nQ4W8}KFcmJ;#aEB1vO!9Yy.XUeu=C1#~');
define('LOGGED_IN_KEY',    'O2n~Z3)!bbL=h/8Ls6k2)!Iz{[gp%Fzjj5t`wc(Y~I q%&O_L;u(BqJ.X+6Aav5?');
define('NONCE_KEY',        'x;JCk3o@bBn-4.|0MIfMJZ7-skk0k}OG_~wdziI,0dq9{TBLV@]!ob}_qe%u@-MD');
define('AUTH_SALT',        'j$&UU1g!?#fa^sm&;9j<97vviE2-COek+?!I>tl(Or7_QT8;lG/.Q@E#AlD1ndm.');
define('SECURE_AUTH_SALT', 'm?BJDt^ARQ$N!|wTO:Ontpci]1PkAia)KoH8ew;Z{y(;|+KiJMaFzE$Mq}]7o:Q5');
define('LOGGED_IN_SALT',   '@BAfKN@})wR,,kPdT9ADYl>{;1e>z*7w9A^I>oJ87R`#Fq-Y(H8@(DUDcAJsii/c');
define('NONCE_SALT',       'mnw%xg]F=NFfR}<It](XETSi2e yEG@_I<vg=!g7tSQ84D4X$7gbr$x7FAa^Yydg');

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
