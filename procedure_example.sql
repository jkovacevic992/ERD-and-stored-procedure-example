select * from pacijent;
drop procedure if exists select_ic;
delimiter $$
create procedure select_ime(IN ime_pacijenta varchar(50))
begin
select * from pacijent where ime_pacijenta=ime;
end $$
delimiter ;

call select_ic('Goran');
