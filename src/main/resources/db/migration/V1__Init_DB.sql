-- create sequence hibernate_sequence start 1 increment 1;

create table usr (
    id bigint not null,
    activation_code varchar(255),
    active bit not null,
    email varchar(255),
    password varchar(255) not null,
    username varchar(255) not null,
    primary key (id)
);
create table message (
    id bigint not null,
    filename varchar(255),
    tag varchar(255),
    text varchar(2000) not null,
    user_id bigint,
    primary key (id),
    constraint message_user_fk
    foreign key (user_id) references usr
);

create table user_role (
    user_id bigint not null,
    roles varchar(255),
    constraint user_role_user_fk
    foreign key (user_id) references usr
);

