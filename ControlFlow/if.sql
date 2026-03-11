create or replace function check_age(age int)
returns text as $$


begin
    if age < 18 then
        return 'Cant Vote';
    elsif age >= 18 and age < 60 then
        return 'Can Vote';
    else
        return 'Unknown';
    end if;

end;
$$ language plpgsql

select check_age(50), check_age(17), check_age(65);
