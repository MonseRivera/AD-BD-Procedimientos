-----------------------------Ejercicio numero 1
create table alumnos_tesoem (id_alumnos number (3) CONSTRAINT pk_id_alumnos primary KEY,
Matricula number (9) CONSTRAINT uni_matricula UNIQUE,
Nombre_Alumno varchar2(20),
Apell_Paterno varchar2(15),
Apell_Materno varchar2(15),
Carrera varchar2(40),
Grupo VARCHAR2(6),
Semestr number(1) CONSTRAINT ch_semestr CHECK(Semestr in('1','2','3','4','5','6','7','8','9')),
Edificio varchar2(1),
Promedio number(3));

create or replace procedure pa_inserdatos
(alu_id in number, alu_matricula in number, alu_nombre in varchar2 default 'nombre', alu_apellidoP in varchar2, alu_apellidoM in varchar2,
 alu_carrera in varchar2 default 'sin carrera', alu_grupo in varchar2 default 'no asignado', alu_semestre in number default '0',
 alu_edificio in varchar default '#', alu_promedio in number default '0')
    as
    begin
 insert into alumnos_tesoem values (alu_id, alu_matricula, alu_nombre, alu_apellidoP, alu_apellidoM, alu_carrera, alu_grupo,
 alu_semestre, alu_edificio, alu_promedio);
end;

select * from alumnos_tesoem;

drop procedure pa_inserdatos;
drop table alumnos_tesoem;

-----------------------------Ejercicio numero 1

create table Contador_Publico(id_cp number (3),
matricula_cp number (9),
nombre_del_alumno_cp varchar2(50),
grupo_cp varchar2(5),
edificio_cp varchar2 (1));

create or replace procedure pa_datos_cp
    as
    begin
insert into Contador_Publico 
Select id_alumnos,Matricula,Nombre_Alumno||Apell_Paterno||Apell_Materno, Grupo, Edificio
from alumnos_tesoem 
WHERE Carrera = 'Contabilidad';
end;

execute pa_datos_cp;
select * from Contador_Publico;


create table Gastronomia(id_gas number (3),
matricula_gas number (9),
nombre_del_alumno_gas varchar2(50),
grupo_gas varchar2(5),
edificio_gas varchar2 (1));

create or replace procedure pa_datos_gas
    as
    begin
insert into Gastronomia 
Select id_alumnos,Matricula,Nombre_Alumno||Apell_Paterno||Apell_Materno, Grupo, Edificio
from alumnos_tesoem 
WHERE Carrera = 'Lic en Gastronomia';
end;

execute pa_datos_gas;
select * from Gastronomia;


create table Ing_Ambiental(id_iamb number (3),
matricula_iamb number (9),
nombre_del_alumno_iamb varchar(50),
grupo_iamb varchar2(5),
edificio_iamb varchar2 (1));

create or replace procedure pa_datos_iamb
    as
    begin
insert into Ing_Ambiental 
Select id_alumnos,Matricula,Nombre_Alumno||Apell_Paterno||Apell_Materno, Grupo, Edificio
from alumnos_tesoem 
WHERE Carrera = 'Ing Ambiental';
end;

execute pa_datos_iamb;
select * from Ing_Ambiental;

create table Ing_Administracion(id_iadm number (3),
matricula_iadm number (9),
nombre_del_alumno_iadm char(50),
grupo_iadm varchar2(5),
edificio_iadm varchar2 (1));

create or replace procedure pa_datos_iadm
    as
    begin
insert into Ing_Administracion 
Select id_alumnos,Matricula,Nombre_Alumno||Apell_Paterno||Apell_Materno, Grupo, Edificio
from alumnos_tesoem 
WHERE Carrera = 'Ing Administracion';
end;

execute pa_datos_iadm;
select * from Ing_Administracion;


create table Ing_Sistemas(id_isc number (3),
matricula_isc number (9),
nombre_del_alumno_isc varchar2(50),
grupo_isc varchar2(5),
edificio_isc varchar2 (1));

create or replace procedure pa_datos_isc
    as
    begin
insert into Ing_Sistemas 
Select id_alumnos,Matricula,Nombre_Alumno||Apell_Paterno||Apell_Materno, Grupo, Edificio
from alumnos_tesoem 
WHERE Carrera = 'Ing Sistemas Computacionales';
end;

execute pa_datos_isc;
select * from Ing_Sistemas;



create table Ing_TICS(id_itic number (3),
matricula_itic number (9),
nombre_del_alumno_itic varchar2(50),
grupo_itic varchar2(5),
edificio_itic varchar2 (1));

create or replace procedure pa_datos_itic
    as
    begin
insert into Ing_TICS 
Select id_alumnos,Matricula,Nombre_Alumno||Apell_Paterno||Apell_Materno, Grupo, Edificio
from alumnos_tesoem 
WHERE Carrera = 'Ing TICS';
end;

execute pa_datos_itic;
select * from Ing_TICS;


create table Ing_EnerRenv(id_ier number (3),
matricula_ier number (9),
nombre_del_alumno_ier varchar2(50),
grupo_ier varchar2(5),
edificio_ier varchar2 (1));

create or replace procedure pa_datos_ier
    as
    begin
insert into Ing_EnerRenv 
Select id_alumnos,Matricula,Nombre_Alumno||Apell_Paterno||Apell_Materno, Grupo, Edificio
from alumnos_tesoem 
WHERE Carrera = 'Ing Energias Renovables';
end;

execute pa_datos_ier;
select * from Ing_EnerRenv;


create table Ing_Industrial(id_ingi number (3),
matricula_ingi number (9),
nombre_del_alumno_ingi varchar2(50),
grupo_ingi varchar2(5),
edificio_ingi varchar2 (1));


create or replace procedure pa_datos_ingi
    as
    begin
insert into Ing_Industrial 
Select id_alumnos,Matricula,Nombre_Alumno||Apell_Paterno||Apell_Materno, Grupo, Edificio
from alumnos_tesoem 
WHERE Carrera = 'Ing Industrial';
end;

execute pa_datos_ingi;
select * from Ing_Industrial;


create table Ing_SistemasAuto(id_isau number (3),
matricula_isau number (9),
nombre_del_alumno_isau varchar2(50),
grupo_isau varchar2(5),
edificio_isau varchar2 (1));

create or replace procedure pa_datos_isau
    as
    begin
insert into Ing_SistemasAuto 
Select id_alumnos,Matricula,Nombre_Alumno||Apell_Paterno||Apell_Materno, Grupo, Edificio
from alumnos_tesoem 
WHERE Carrera = 'Ing Sistemas Automotrices';
end;

execute pa_datos_isau;
select * from Ing_SistemasAuto;



-------------------------------Ejercicio numero 1

select Ing_Industrial.nombre_del_alumno_ingi, Ing_SistemasAuto.nombre_del_alumno_isau
from Ing_Industrial
Inner join Ing_SistemasAuto
on Ing_Industrial.grupo_ingi = Ing_SistemasAuto.grupo_isau where Ing_Industrial.grupo_ingi like '%2%' or 
Ing_SistemasAuto.grupo_isau like '%2%';

select *from Ing_Industrial
Inner join Ing_SistemasAuto on grupo_ingi like '2%' and grupo_isau like '%2%' inner join Gastronomia on grupo_gas like '2%';

select * from alumnos_tesoem where grupo like '2%';

select * from Ing_Industrial inner join Ing_SistemasAuto on grupo_ingi like '%'
------------------------------Ejercicio numero 3

create table Apto_Para_Beca(Matricula_Alum number(9), 
Nombre_Alumno_Becado varchar2(50), 
Promedio_Alumno number(3),
Carrera_Alum varchar2(40));

create or replace procedure pa_beca
    as
    begin
insert into Apto_Para_Beca
Select Matricula, Nombre_Alumno||Apell_Paterno||Apell_Materno,Promedio, Carrera from alumnos_tesoem 
WHERE Promedio >=90;
end;

execute pa_beca;
select * from Apto_Para_Beca;

------------------------------Ejercicio numero 2

create table profesores_tesoem (id_profesor number (3) CONSTRAINT pk_id_profesor primary KEY,
Nombre_Profesor varchar2(20),
Apell_Paterno_P varchar2(15),
Apell_Materno_P varchar2(15),
Carrera_Imparte varchar2(40) CONSTRAINT ch_carrera_imparte CHECK(Carrera_Imparte in('Ing Sistemas Automotrices','Ing Industrial',
'Lic Gastronomia','Ing Sistemas Computacionales','Contabilidad','Ing Administracion','Ing Ambiental','Ing Energias Renovables','Ing TICS')),
Nombre_Clase varchar2(45),
Grupo_Prof VARCHAR2(6));


create or replace procedure pa_inserdatos_prof
(prof_id in number, prof_nombre in varchar2 default 'nombre', prof_apellidoP in varchar2, prof_apellidoM in varchar2,
 prof_carrera_imp in varchar2, prof_nom_clase in varchar2 default 'no asignado', prof_grupo in varchar2)
    as
    begin
 insert into profesores_tesoem values (prof_id, prof_nombre, prof_apellidoP, prof_apellidoM,prof_carrera_imp, prof_nom_clase, prof_grupo);
end;

select * from profesores_tesoem;

create table Ing_Sistemas_Prof(id_isc_p number (3),
nombre_del_profesor_isc varchar2(50),
materia_isc varchar2 (45),
grupo_isc varchar2(5));

create or replace procedure pa_datos_isc_prof
    as
    begin
insert into Ing_Sistemas_Prof
Select id_profesor,Nombre_Profesor||Apell_Paterno_P||Apell_Materno_p, Nombre_Clase, Grupo_Prof
from profesores_tesoem 
WHERE Carrera_Imparte = 'Ing Sistemas Computacionales';
end;

execute pa_datos_isc_prof;
select * from Ing_Sistemas_Prof;

drop table Ing_TICS_Prof;

create table Ing_TICS_Prof(id_itics_p number (3),
nombre_del_profesor_itics varchar2(50),
materia_itics varchar2 (45),
grupo_itics varchar2(5));

create or replace procedure pa_datos_tics_prof
    as
    begin
insert into Ing_TICS_Prof
Select id_profesor,Nombre_Profesor||Apell_Paterno_P||Apell_Materno_p, Nombre_Clase, Grupo_Prof
from profesores_tesoem 
WHERE Carrera_Imparte = 'Ing TICS';
end;

execute pa_datos_tics_prof;
select * from Ing_TICS_Prof;
