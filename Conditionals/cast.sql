select cast('123' as int) as string_to_integer;

select cast(123 as text) as integer_to_string;

select cast('2024-01-20' as date) as string_to_date;
select cast('01-20-2024' as date) as string_to_date;

-- Using Cast operator
select '123'::int as string_to_integer;