<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wp' );

/** MySQL database username */
define( 'DB_USER', 'mdulcie' );

/** MySQL database password */
define( 'DB_PASSWORD', 'mdulcie' );

/** MySQL hostname */
define( 'DB_HOST', 'mariadb:3306' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          '8dRb>vToYXD4Pmhnv7 0vHUjhsM5oD1?k*ITpsy@eg(A`Z/Tg*tD{2C3B-n.JXJ$' );
define( 'SECURE_AUTH_KEY',   'roj!+DV+}@}{Hn1zpMc-I}]1;/.]t!RU}`V{:5A^[n-4B?:F7Q]Er3KRyJ(/^nYi' );
define( 'LOGGED_IN_KEY',     '<3ei4}*Lp>}<O~4hdiC*[Fv*Sb.{G887tTJE=. um^dj1oB^Kb4@N$NSN>c>A`BK' );
define( 'NONCE_KEY',         '|)-xP%hB4C=I E0(Q}?4CK18_SJ%<=B>|9%TudnMeNM`I%A6PcL}CS^M`Oq`Y;9H' );
define( 'AUTH_SALT',         '/})$F$u=n}dR|dk+HnYX:{U^t7`zD+FTRUjT{N.5/4H`!2=;eUdQLYR9d`aJW01N' );
define( 'SECURE_AUTH_SALT',  'eS6%HvJX2M9`2)_KAM(0u:iVrr/K#.5937gJg?#_ak)_ht-0Uf!lV_6qK=!N?6$Y' );
define( 'LOGGED_IN_SALT',    '5cxy4tQh!^]ZnNy,Qe}[4e^v[y.L]5:;aLo*q>CFS+cCHx@q$vI73mpi>b%_5tQ%' );
define( 'NONCE_SALT',        '4`3c{Af7-l:@}ZnR#@@yFETmgN(i 2#hjW|58X<EOO8= z8eQ AnO,K%xaebrxU8' );
define( 'WP_CACHE_KEY_SALT', 'be]R0a/+)wOp8x&O7$_(/G5.%MidR#%v><E&Eka&lKcsqW@<2EcCJO&LEXZ7fHUO' );

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'mdulcie';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
