select * from products;

drop function if exists qunatityEval;
delimiter $$
create function quantityEval(quantityOver double) returns varchar(100)
deterministic
begin
declare fill_quantity varchar(100);
if quantityOver>9000 then set fill_quantity='Quantity in stock is over 9000';
end if;
return (fill_quantity);
end $$
delimiter ;



