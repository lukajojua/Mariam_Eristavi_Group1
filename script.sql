create table if not exists movies
(
    Movie_ID    int auto_increment
        primary key,
    Title       varchar(256) null,
    Director    varchar(256) null,
    ReleaseDate date         null,
    Rating      double       null,
    Description text         null,
    constraint Movies_Movie_ID_uindex
        unique (Movie_ID)
);