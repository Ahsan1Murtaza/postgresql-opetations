do $$

declare
    i int:=10;

begin
    loop
        exit when i = 5;
        raise notice 'Current value of i: %', i;
        i := i - 1;
    end loop;
end;
$$