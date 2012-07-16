<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'savvy_blog');

/** MySQL database username */
define('DB_USER', 'savvyblog');

/** MySQL database password */
define('DB_PASSWORD', 'qqyo11691');

/** MySQL hostname */
define('DB_HOST', 'localhost');

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
define('AUTH_KEY',         'w$<c!1V/}Z|]0/qOj,)hnD;Xr1 zEjM8$O#UkXLo 4X!j8{Y.>?;@VM DQHN|k9>');
define('SECURE_AUTH_KEY',  '=dm,{=E5^ZyPF%+/^Bx`?+YTRw!%(1|NurnHDap$VBae8t-N?%M8[2iGS3`Y%]|@');
define('LOGGED_IN_KEY',    '1?=J^k{F8voh/,pg2 tUKwu+(Ej3Ett;Y7-gHIeq03*#G.l&^lhYfWdh%y|cm},i');
define('NONCE_KEY',        'GkNB/)jE<)Do[!=z.pf|IZ#pUNy@YfycAWvCwKcob|5hF7&^WVO<ariF[(3xkN+e');
define('AUTH_SALT',        '0>N|+6++RiyA_nHO<ZM[fMFg`0/>qBR13iwktyZsY.%^6ke:a,Tzc,g+|hQT3;c4');
define('SECURE_AUTH_SALT', 'fh59lJ]{SA7<Q0<}(}K)rYj4N0n=Zx`duJg498jLR$CIvx=u^&%w)1FP-[Wx)RHy');
define('LOGGED_IN_SALT',   'eS0?:Q]lBd$n`C8,nYS|lm%?0:KJv23E.I3(b{~LoK3bbkeHfaONr-ZvJT(LE:-v');
define('NONCE_SALT',       'TE}<+Z8zR@*.S6Ti5.b~*HfEJ)(|~{B`arwRwi<=}J+xu<iD`}A>;^)H9<dZ}w$E');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
 * language support.
 */
define('WPLANG', '');

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
