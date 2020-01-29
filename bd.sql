create table creador(
    id_creador int,
    edad int,
    nombre varchar(20),
    experiencia varchar(50),
    numero_de_serie varchar(20)  
);

create table juego(
    numero_de_serie varchar(20),
    dificultad varchar(5),
    nombre_creador varchar(20),
    nivel int,
    id_creador varchar(20),
    id_tematica varchar(20)
);

create table tematica(
    id_tematica int,
    interfaz varchar(20),
    arcade varchar(20),
    fantasia varchar(20)
);

create table consola(
    generaciones varchar(20),
    xbox360 varchar(20),
    playstation varchar(20)   
);

create table juega(
    generaciones varchar(20),
    numero_de_serie varchar(20),
    fecha date()
);

alter table 
    add constraint creador_pk1 primary key(id_creador),
    add constraint creador_fk1 foreign key(numero_de_serie) references juego(numero_de_serie);

alter table
    add constraint juego_pk1 primary key(numero_de_serie),
    add constraint juego_fk1 foreign key(id_creador) references creador(id_creador),
    add constraint juego_fk2 foreign key(id_tematica) references tematica(id_tematica);

alter table
    add constraint tematica_pk1 primary key(id_tematica);

alter table
    add constraint consola_pk1 primary key(generaciones);

alter table
    add constraint juega_fk1 foreign key(generaciones) references consola(generaciones),
    add constraint juega_fk2 foreign key(numero_de_serie) references juego(numero_de_serie);