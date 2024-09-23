<?php

namespace Core\Helpers;

function slugify(string $string): string
{
    // Strip html tags
    $string = strip_tags($string);
    // Replace non letter or digits by -
    $string = preg_replace('~[^\pL\d]+~u', '-', $string);
    // Transliterate
    setlocale(LC_ALL, 'en_US.utf8');
    $string = iconv('utf-8', 'us-ascii//TRANSLIT', $string);
    // Remove unwanted characters
    $string = preg_replace('~[^-\w]+~', '', $string);
    // Trim
    $string = trim($string, '-');
    // Remove duplicate -
    $string = preg_replace('~-+~', '-', $string);
    // Lowercase
    $string = strtolower($string);
    // Check if it is empty
    if (empty($string)) {
        return 'n-a';
    }
    // Return result
    return $string;
}
