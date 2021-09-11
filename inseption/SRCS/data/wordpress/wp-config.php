<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе установки.
 * Необязательно использовать веб-интерфейс, можно скопировать файл в "wp-config.php"
 * и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://ru.wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'DB_NAME', 'wp' );

/** Имя пользователя MySQL */
define( 'DB_USER', 'test' );

/** Пароль к базе данных MySQL */
define( 'DB_PASSWORD', 'test' );

/** Имя сервера MySQL */
define( 'DB_HOST', 'mariadb' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу. Можно сгенерировать их с помощью
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}.
 *
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными.
 * Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '.kOGnB^Qyr <`-ES)R=#qGURX)wh{5Rg7Mbe<C4Oz8+&:jKBPHYOM:8XF,^ETxp=' );
define( 'SECURE_AUTH_KEY',  'XR%IOKWmkIO.o!}[Hn3B,Joo2fT HRSC3.l-P__La^kCJ?tNf?B{(V[wk~ g3qL7' );
define( 'LOGGED_IN_KEY',    'm<,g!641v_ru:j<>LU;2:6Onxhe4YlPJ&[UDq3]=|;JrSe:vft~1!7w(MdWu6?H0' );
define( 'NONCE_KEY',        '(Y27}#fW:::j!yif<[IXB%AR!q$!!i7|aNK&K{yGSfr$?-SPqQy+#Nu|7p$6etCp' );
define( 'AUTH_SALT',        'kvI5=2iFi lS!fmWka`t2DM}!**&+Cx4|)Q~uBtV^{oE0/CCH%<&F4OL#KT*7/Ov' );
define( 'SECURE_AUTH_SALT', 'Ws~H8b3*qc!OW%h,Ts~_gd0ee:8a/LBfG4,#!{k9#W->u,-~j1&/zk3vTzO/]Y@^' );
define( 'LOGGED_IN_SALT',   'Z[3)j0s6=k_ZO$Y6{2b#WHY:TwA(q]v[1n~+IIFQa%<IaDk7DhJ?P}81GD,RA8GS' );
define( 'NONCE_SALT',       'pS;%]WQK=38 mIlQ);9yAK~i s/s+|y]CxL=^D@:m]H,aIAR(qT0wK:Bbs5sE[x@' );

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в документации.
 *
 * @link https://ru.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Произвольные значения добавляйте между этой строкой и надписью "дальше не редактируем". */



/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once ABSPATH . 'wp-settings.php';
