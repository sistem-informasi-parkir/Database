# Database

CREATE DATABASE SistemParkir;
use SistemParkir;

CREATE Table Pengunjung(
Nama VARCHAR(30),
Umur INT(2),
Identitas VARCHAR(15)
Primary Key(Identitas)
)ENGINE =INNODB;

CREATE Table Akun(
Username VARCHAR(25),
Password VARCHAR(12)
Primary Key(Username)
)ENGINE =INNODB;     

CREATE Table Kendaraan(
PlatNomor VARCHAR(9),
Jenis VARCHAR(15),
Primary Key(PlatNomor)
)ENGINE =INNODB;     

CREATE Table LapParkir(
Lokasi VARCHAR(25),
Kapasitas INT(4),
Primary Key(Lokasi)
)ENGINE =INNODB;

CREATE Table Security(
Nama VARCHAR(30),
Umur INT(2),
NIP VARCHAR(15)
Primary Key(NIP)
)ENGINE =INNODB;  
