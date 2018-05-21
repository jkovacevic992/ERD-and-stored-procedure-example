drop procedure if exists select_ic;
delimiter $$
create procedure select_ic()
begin
select * from pacijent where prezime like '%ic%';
end $$
delimiter ;

call select_ic;