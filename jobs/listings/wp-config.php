<?php
define('WP_AUTO_UPDATE_CORE', 'minor');// This setting is required to make sure that WordPress updates can be properly managed in WordPress Toolkit. Remove this line if this WordPress website is not managed by WordPress Toolkit anymore.
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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'qqdexcob_wordpress_3');

/** MySQL database username */
define('DB_USER', 'qqdex_wordpres_4');

/** MySQL database password */
define('DB_PASSWORD', 'gsm78692@Admin');

/** MySQL hostname */
define('DB_HOST', '154.0.170.55:3306');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'NnHjP%@jAWzfSLOYSB1Y3yJyHjvimVe2X0N^0*XOcAw7a0gBtaQjNFt#5TiYK#UX');
define('SECURE_AUTH_KEY',  '9gCG8jeygbujRWsg)s^D1!TSIJohFArHe%ilvIEcf6d#948OJ8ervX&LDQf^Yy!I');
define('LOGGED_IN_KEY',    'R4xOPa(li8izSc#yFEJKjuCW)fpD2iYJ!BJMhlP)Aqf87BMWV5npEj@261TbT*wc');
define('NONCE_KEY',        'QLhre0F@C9S8879Kyom%gHmYBkqYLJK#vPWygvuNGqIfDG!R#edUkw9Z8o@&#2rg');
define('AUTH_SALT',        'P0wdzutUSipI(l9Y6e*Nmcg7Jddqc%I0VvI7KVyeSzYNkFwJFPknxWKILZv52GLU');
define('SECURE_AUTH_SALT', 'aLmsTEcdaVMgYKrIi9Wp829DWe5YXr%TIDg&qEW^iLe!PP*aH5C*98qEu#XR4^X5');
define('LOGGED_IN_SALT',   'E3&P*952r0D#rfZ3RZ9qIXKGdYxCEW08QXcJ1lAuUzAfqh(hw)cLDD(K6ap)jH5p');
define('NONCE_SALT',       '6kvKKBUhNSxq#3#eR!7pKhR8OqCO9q&gDPryAQ3q)AznWz*0#sWYZvX30j%O3hQX');
/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'c8_wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

define( 'WP_ALLOW_MULTISITE', true );

define ('FS_METHOD', 'direct');
