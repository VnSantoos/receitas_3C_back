create table if not exists usuario(
	id serial primary key,
	nome varchar(200) not null,
	ativo boolean default true,
	senha varchar(200) not null,
	criado_em timestamp default current_timestamp
);

create table if not exists receita (
	id serial primary key,
	nome varchar(200) not null,
	ingredintes text not null,
	instrucoes text not null,
	tempo_preparo_minutos integer not null, 
	usuario_id integer not null references usuario(id) on delete cascade
);