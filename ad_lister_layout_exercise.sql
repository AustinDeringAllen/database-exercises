USE new_data_db;

drop table if exists users;
drop table if exists posts;
drop table if exists users_posts;

truncate table users;

# Tables I need
CREATE TABLE IF NOT EXISTS users (
    id int unsigned not null auto_increment,
    user_email varchar(100),
    user_password varchar(100),
    primary key (id),
    unique (user_email)
);

CREATE TABLE IF NOT EXISTS posts (
    id int unsigned not null auto_increment,
    title varchar(100),
    content text,
    categories varchar(100),
    primary key (id)
);

create table if not exists users_posts (
    id int unsigned not null auto_increment,
    user_id int unsigned not null,
    post_id int unsigned not null,
    primary key (id),
    foreign key (user_id) references users (id),
    foreign key (post_id) references posts (id)
);


# Population of tables
insert into users (user_email, user_password) VALUES
    ('austinderingallen@icloud.com','dylanbird'),
    ('email2@icloud.com','dylanbird');

insert into posts (title, content, categories) VALUES
    ('how to cry','Please help me learn how to cry!','crying, sad, confused'),
    ('how to smile','Please help me learn how to cry!','happy, confused');

insert into users_posts (user_id, post_id) VALUES
    (3,1),
    (4,2);

insert into posts (title, content, categories) VALUES
    ('help me learn to ride a bike','I can''t ride a bike please help','confused, sad');

insert into users_posts (user_id, post_id) values
    (3,3);

# QUERIES
# For a given ad, what is the email address of the user that created it?
select user_email from users
join users_posts up on users.id = up.user_id
where up.post_id = 2;

# For a given ad, what category, or categories, does it belong to?
select categories from posts
join users_posts up on posts.id = up.post_id
where up.post_id = 1;

# For a given category, show all the ads that are in that category.
select * from posts
where categories like ('%confused%');

# For a given user, show all the ads they have posted.
select * from posts
join users_posts up on posts.id = up.post_id
join users u on up.user_id = u.id
where u.id = 3;


