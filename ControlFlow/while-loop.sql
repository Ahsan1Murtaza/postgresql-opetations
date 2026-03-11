do $$

declare
    i int:=10;
    n int:=0;

begin
    while i > n 
    loop
        raise notice 'Current value of i: %', i;
        i := i - 1;
    end loop;
end;
$$

