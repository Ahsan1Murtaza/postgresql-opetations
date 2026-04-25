-- REGEXP_MATCHES(source_string, pattern [, flags])

-- source_string: The string from which the regular expression will match and return the substrings.
-- pattern: A POSIX regular expression used to match against the source string.
-- flags (optional): Flags that modify the matching behavior. For example, 'g' (global) allows for multiple matches within the source string.

SELECT REGEXP_MATCHES('Call me at 212-555-0199 or 516-555-0200', '(\d{3})-\d{3}-\d{4}', 'g');

SELECT REGEXP_MATCHES('ABC', '^(A)(..)$', 'g');
