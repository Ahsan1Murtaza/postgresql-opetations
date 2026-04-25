-- REGEXP_REPLACE(source, pattern, replacement_string, [, flags])

-- 'source_string': This is the original string where the search and replace operation is performed.
-- 'pattern': A POSIX regular expression pattern that identifies substrings to be replaced.
-- 'replacement_string': The string that replaces substrings matching the pattern.
-- 'flags (optional)': Controls the behavior of the matching operation. Commonly used flags include 'g' for global replacement and 'i' for case-insensitive matching.

SELECT REGEXP_REPLACE(
    '1234567890', 
    '(\d{3})(\d{3})(\d{4})', 
    '(\1) \2-\3'
);

SELECT REGEXP_REPLACE('Raju Kumar', '(.*) (.*)', '\2, \1');

SELECT REGEXP_REPLACE('ABC12345xyz', '[[:alpha:]]', '', 'g');