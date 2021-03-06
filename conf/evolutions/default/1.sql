# --- Created by Slick DDL
# To stop Slick DDL generation, remove this comment and start using Evolutions

# --- !Ups

create table "directors" ("id" BIGINT GENERATED BY DEFAULT AS IDENTITY(START WITH 1) NOT NULL PRIMARY KEY,"name" VARCHAR NOT NULL);
create table "movies" ("id" BIGINT GENERATED BY DEFAULT AS IDENTITY(START WITH 1) NOT NULL PRIMARY KEY,"title" VARCHAR NOT NULL,"director_id" BIGINT);
alter table "movies" add constraint "movies_director_fk" foreign key("director_id") references "directors"("id") on update NO ACTION on delete SET NULL;

# --- !Downs

alter table "movies" drop constraint "movies_director_fk";
drop table "movies";
drop table "directors";

