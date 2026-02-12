<?php
header('Content-Type: text/plain');

echo "PHP: " . PHP_VERSION . PHP_EOL;
echo "SAPI: " . php_sapi_name() . PHP_EOL;
echo "GD loaded: " . (extension_loaded('gd') ? 'YES' : 'NO') . PHP_EOL;

if (function_exists('gd_info')) {
    print_r(gd_info());
}
