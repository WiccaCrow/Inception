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
define( 'AUTH_KEY',          'PKEOc(o>OH24ZI)SOB<6bUg2?wPN?1LZOF{uDk)a{$,WtyjS*.ExW4r)u?#@U1iM' );
define( 'SECURE_AUTH_KEY',   'Yf7u@)*`%c_!Tfaudte{>^_t18ABi,cX6m5+<<:-v.;3_MbCf;O/ ACqgT;OpFz1' );
define( 'LOGGED_IN_KEY',     'BHb]F47 q0}3G[^p:T3~%JOr9}kru4Z2k8(@IUg2Qr2d.*Ew/n0|D{<c%p?u`MI>' );
define( 'NONCE_KEY',         '(*K;.RDI;LF1,:zpJe/T< *z$Dd)iE~!5`7LYB4zBKx/LO=dfFJU4{IIgVx=A|gj' );
define( 'AUTH_SALT',         'z!K)1=4@aM.D b@M38QgQ:)(%YKk#AS`aa^CDX0xmOa7.z+.VwUVI5tA6,+,(/qt' );
define( 'SECURE_AUTH_SALT',  'N}dJ`Tu;u.I_WUF<W/w()~E%GM4wKv7PZQ<-m$B7,~VV;pDk(c+fm1efZR7J$#S+' );
define( 'LOGGED_IN_SALT',    'sg=yRjTVsw_kiK0e/q#L3H|R6N2}}|;3|fj82:d5*8<8 kN6YUoYzBv=|g`Df*{|' );
define( 'NONCE_SALT',        'WN]2WD,;wK={#*P[%!qeuMW8kP%r>VT(`oSiSglC$&VmOd7#bwygS1v%p=z[[/]h' );
// define( 'WP_CACHE_KEY_SALT', 'LMUS?8M0t+bZZ]PG:i.nmQGb{jqr` 8^@IMBd?VZ.vE`n^)vg)Y+/RhQ?(yp1dae' );

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'mdulcie';


/**
* REDIS 
* https://wp-kama.ru/plugin/redis-object-cache
*/

define('WP_CACHE_KEY_SALT', 'mdulcie_cache_prefix');
define('WP_REDIS_HOST', '127.0.0.1');
define('WP_REDIS_PORT', '6379');

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
