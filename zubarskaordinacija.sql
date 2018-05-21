drop database if exists zubarska_ordinacija;

create database zubarska_ordinacija;

use zubarska_ordinacija;

create table zubar(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
oib int,
ziro_racun varchar(50)
);

create table pacijent(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
oib int,
zubar int
);

create table sestra(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
oib int,
ziro_racun varchar(50),
zubar int
);

alter table pacijent add foreign key (zubar) references zubar(sifra);
alter table sestra add foreign key (zubar) references zubar(sifra);

insert into zubar (sifra,ime,prezime,oib,ziro_racun) values
(null, 'Marko', 'Markovic', 20277272610, null),
(null, 'Ivan', 'Ivanovic', 69782470690, null),
(null, 'Mirko', 'Azenic', 98968155780, null),
(null, 'Stjepan', 'Radic', 02816656585, null),
(null, 'Adam', 'Adamovic', 04806480122, null);

insert into pacijent (sifra, ime, prezime, oib, zubar) values
(null, 'Fran', 'Mazuranic', 28385868412, 1),
(null, 'Ivan', 'Mazuran', 67707807317, 2),
(null, 'Adam', 'Stjepanovic', 59994411161, 3),
(null, 'Goran', 'Zidar', 97364648243, 4),
(null, 'Goran', 'Vidakovic', 64819700493, 5),
(null, 'Marta', 'Ivkovic', 91259660998, 1),
(null, 'Josip', 'Kolar', 16001759856, 1),
(null, 'Tereza', 'Kesovija', 37414641744, 1);

insert into sestra (sifra, ime, prezime, oib, ziro_racun, zubar) values
(null, 'Marina', 'Marjanovic', 48134019975, null, 1),
(null, 'Ivana', 'Galic', 57798257478, null, 1),
(null, 'Stjepana', 'Markovic', 98952199480, null, 2),
(null, 'Iva', 'Stjepanovic', 51727003381, null, 2),
(null, 'Ana', 'Korov', 13600007356, null, 3),
(null, 'Gorana', 'Brkic', 31907826345, null, 3),
(null, 'Tena', 'Premuzic', 17430151257, null, 4),
(null, 'Katarina', 'Greganic', 41827151373, null, 5);


