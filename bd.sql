create table creador(
    id_creador int,
    edad int,
    nombre varchar(20),
    experiencia varchar(50),
    numero_de_serie varchar(20);

    primary key(id_creador),
    foreign key(numero_de_serie) references juego.numero_de_serie 
);

create table juego(
    numero_de_serie varchar(20),
    dificultad varchar(5),
    nombre_creador varchar(20),
    nivel int,
    id_creador varchar(20),
    id_tematica varchar(20),

    primary key(numero_de_serie),
    foreign key(id_creador) references creador.id_creador
    foreign key(id_tematica) references tematica.id_tematica
);

create table tematica(
    id_tematica int,
    interfaz varchar(20),
    arcade varchar(20),
    fantasia varchar(20),

    primary key(id_tematica),
);

create table consola(
    generaciones varchar(20),
    xbox360 varchar(20),
    playstation varchar(20),

    primary key(generaciones),
)

create table juega(
    generaciones varchar(20),
    numero_de_serie varchar(20),
    fecha date(),

    foreign key(generaciones) references consola.generaciones
    foreign key(numero_de_serie) references juego.numero_de_serie

)

