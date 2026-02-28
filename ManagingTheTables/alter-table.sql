create table links(
    id serial primary key,
    url varchar(255) not null,
    description text
);

SELECT * FROM links;
SELECT * from link_collection;

alter table links
RENAME to link_collection;

alter table link_collection
add column created_at timestamp default timestamp 'now()';

alter table link_collection
add column updated_at timestamp default timestamp 'now()';

alter table link_collection
drop column updated_at;

alter table link_collection
alter column description set not null;

alter table link_collection
alter column description  type varchar(500);

alter table link_collection
rename column url to link_url;


insert into link_collection(link_url, description)
VALUES ('https://www.example.com', 'Example website');

select * from link_collection;