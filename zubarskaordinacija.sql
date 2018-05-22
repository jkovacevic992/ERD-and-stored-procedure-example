drop database if exists zubarska_ordinacija;

create database zubarska_ordinacija default character set utf8;


use zubarska_ordinacija;

create table zubar(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
oib varchar(11),
ziro_racun varchar(50)
);

create table pacijent(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
oib varchar(11),
zubar int
);

create table sestra(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
oib varchar(11),
ziro_racun varchar(50),
zubar int
);

alter table pacijent add foreign key (zubar) references zubar(sifra);
alter table sestra add foreign key (zubar) references zubar(sifra);

insert into zubar (sifra,ime,prezime,oib,ziro_racun) values
(null, 'Marko', 'Marković', '20277272610', null),
(null, 'Ivan', 'Ivanović', '69782470690', null),
(null, 'Mirko', 'Azenić', '98968155780', null),
(null, 'Stjepan', 'Radić', '02816656585', null),
(null, 'Adam', 'Adamović', '04806480122', null);

insert into pacijent (sifra, ime, prezime, oib, zubar) values
(null, 'Fran', 'Mažuranić', '28385868412', 1),
(null, 'Ivan', 'Mažuran', '67707807317', 2),
(null, 'Adam', 'Stjepanović', '59994411161', 3),
(null, 'Goran', 'Zidar', '97364648243', 4),
(null, 'Goran', 'Vidaković', '64819700493', 5),
(null, 'Marta', 'Ivković', '91259660998', 1),
(null, 'Josip', 'Kolar', '16001759856', 1),
(null, 'Tereza', 'Kesovija', '37414641744', 1);

insert into sestra (sifra, ime, prezime, oib, ziro_racun, zubar) values
(null, 'Marina', 'Marjanović', '48134019975', null, 1),
(null, 'Ivana', 'Galić', '57798257478', null, 1),
(null, 'Stjepana', 'Marković', '98952199480', null, 2),
(null, 'Iva', 'Stjepanović', '51727003381', null, 2),
(null, 'Ana', 'Korov', '13600007356', null, 3),
(null, 'Gorana', 'Brkić', '31907826345', null, 3),
(null, 'Tena', 'Premužić', '17430151257', null, 4),
(null, 'Katarina', 'Greganić', '41827151373', null, 5);


