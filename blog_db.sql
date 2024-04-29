create table users(
	id serial primary key,
	firstname varchar (50),
	lastname varchar (50),
	email varchar (50)
);

select * from users

insert into users (firstname, lastname, email) values
('emanuel', 'cobo', 'emanuel@gmail.com'),
('patricia', 'gonzales', 'patricia@gmail.com'),
('yesica', 'rodriguez', 'yesica@gmail.com');
 
select * from users

create table posts (
	id serial primary key,
	creator_id int references users(id),
	title varchar (50),
	text varchar(50)	
);

select * from posts

insert into posts (creator_id, title, text) values
(1,'La vida', 'Disfrutala y seas feliz'),
(2,'Aventuras','Es viajar y conocer lugares magicos'),
(1,'Tu futuro','Comienza hacer ahora lo que seras en el futuro'),
(3,'Los sueños','Si puedes soñarlo puedes hacerlo'),
(2,'No te rindas','prohivido rendirte');

select * from posts

create table likes(
	id serial primary key,
	user_id int references users(id),
	post_id int references posts(id)	
);

select * from likes

insert into likes (user_id, post_id) values
(1, 11),
(2, 12),
(3, 13),
(1, 14),
(3, 15);

select * from likes

select posts.*, firstname,lastname,email from posts
join users
on posts.creator_id = users.id;


select posts.*, firstname, lastname, email from posts
join likes 
on posts.id = likes.post_id
join users 
on likes.user_id = users.id;


