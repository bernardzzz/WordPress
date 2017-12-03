
#!/usr/bin/env bash

if [ ! -e wp-config.php ]; then
	cat > wp-config.php <<-'EOF'
		<?php
		define('DB_NAME', '$WP_DB_NAME');
		define('DB_USER', '$WP_DB_USER');
		define('DB_PASSWORD', '$WP_DB_PASSWORD');
		define('DB_HOST', '$WP_DB_HOST');
		define('DB_CHARSET', '$WP_DB_CHARSET');
		define('DB_COLLATE', '$WP_DB_COLLATE');

		define('AUTH_KEY',         '$WP_AUTH_KEY');
		define('SECURE_AUTH_KEY',  '$WP_SECURE_AUTH_KEY');
		define('LOGGED_IN_KEY',    '$WP_LOGGED_IN_KEY');
		define('NONCE_KEY',        '$WP_NONCE_KEY');
		define('AUTH_SALT',        '$WP_AUTH_SALT');
		define('SECURE_AUTH_SALT', '$WP_SECURE_AUTH_SALT');
		define('LOGGED_IN_SALT',   '$WP_LOGGED_IN_SALT');
		define('NONCE_SALT',       '$WP_NONCE_SALT');

		$table_prefix  = 'wp_';

		define('WP_DEBUG', false);

		if ( !defined('ABSPATH') )
			define('ABSPATH', dirname(__FILE__) . '/');

		/** Sets up WordPress vars and included files. */
		require_once(ABSPATH . 'wp-settings.php');
	EOF
fi