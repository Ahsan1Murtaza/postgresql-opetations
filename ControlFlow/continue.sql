do $$

begin
    for i in 1..5
    loop
        if i = 3 then
            continue;
        end if;
        raise notice 'Current value of i: %', i;
    end loop;
end;
$$