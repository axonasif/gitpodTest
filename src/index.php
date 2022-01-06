<?php

echo "Hello World";

echo "<pre>";

print_r($_SERVER);

print_r($_ENV);

echo "--". getenv("TEST_VARIABLE");