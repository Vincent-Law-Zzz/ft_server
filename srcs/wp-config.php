<?php
define( 'DB_NAME', 'aapollo_db' );

define( 'DB_USER', 'aapollo' );

define( 'DB_PASSWORD', 'aapollo' );

define( 'DB_HOST', 'localhost' );

define( 'DB_CHARSET', 'utf8' );

define( 'DB_COLLATE', '' );
define('AUTH_KEY',         '[3L)5+*<Li&j=zM^8SBx5Q@eY-OVQX }>1^s_/e=YvsU3s+^Rnw<-P!0IJtp1;%G');
define('SECURE_AUTH_KEY',  '~Y<HEIE;&;?hb*w}od,(z|X)V#C3<Kf+_HodyU3}G=O<1P3D#xKfwOB|a1ZK5!],');
define('LOGGED_IN_KEY',    'go^]qA,=`xT|lO&A1U,Kk3HrFAb-4q3<`F1uhS_:Q({^Ti!yTL3[xsaW1~hgDw{i');
define('NONCE_KEY',        'h,(gMtqZF5c-N0TFHB,sQY+#hLrRm.d*97AILw(3K|7>E~PSUq;A]=?LC%gEB*{~');
define('AUTH_SALT',        'b3-0wh0)K^kp|fI%:?;Qky8Wv:iZi0PFNXg3BMqr8WwX-:,$#C}*-]oCgdxPzj2s');
define('SECURE_AUTH_SALT', 'AvO7Dlf}&!`Kg>mwV!i9na=,}w)c$sYn {?`cgNA{{uG+#VAmWOX _Z8+w:[Ayj-');
define('LOGGED_IN_SALT',   'vk)tcTZfIz@Fx8(2.QV#j`}5>WS/JHc%A*?Ah<9g&h9qbR-|nb;*OuIyu+Bg:5kM');
define('NONCE_SALT',       '7K[8 mn*}8_SjbxB)tO$@zj%b(--.+n{.|Lnh4-<mD3;&B+@$2Jog-a<;3gcM^z,');

$table_prefix = 'wp_';

define( 'WP_DEBUG', false );

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

require_once( ABSPATH . 'wp-settings.php' );