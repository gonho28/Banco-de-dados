CREATE TABLE candidates (
candidate_id INT PRIMARY KEY,
candidate_name VARCHAR(100),
party VARCHAR(50)
);

CREATE TABLE votes (
vote_id INT PRIMARY KEY,
candidate_id INT,
region_id INT,
vote_count INT
);
CREATE TABLE regions (
region_id INT PRIMARY KEY,
region_name VARCHAR(100)
);

INSERT INTO candidates VALUES
(1,'Daniel','PT'),
(2,'John','PL');

INSERT INTO votes Values
(11, 1, 12, 500),
(22, 1, 12, 623),
(32, 2, 33, 142),
(34, 1, 94, 209),
(44, 1, 94, 552),
(56, 2, 56, 245);

INSERT INTO regions Values
(12, 'Nordeste'),
(33, 'Sul'),
(94, 'Norte'),
(56, 'Centro-Oeste');

SELECT candidate_id as Candidato, sum(vote_count) as Total_votos from votes group by candidate_id;

select region_id as Região, avg(vote_count) as Média from votes group by region_id;

select vote_count as Votos_da_região, candidate_id as Mais_votado_nordeste from votes where region_id = 12 group by vote_count, candidate_id;

select vote_count as Votos_da_região, candidate_id as Mais_votado_sul from votes where region_id = 33 group by vote_count, candidate_id;

select vote_count as Votos_da_região, candidate_id as Mais_votado_norte from votes where region_id = 94 group by vote_count, candidate_id;

select vote_count as Votos_da_região, candidate_id as Mais_votado_centro_oeste from votes where region_id = 56 group by vote_count, candidate_id;

SELECT region_id as Região_mais_votada, sum(vote_count) as Votos from votes group by region_id; 

SELECT candidate_id as Candidato_mais_votado, sum(vote_count) as Votos from votes group by candidate_id;

SELECT candidate_id as Candidato_com_mais_de_500_votos, sum(vote_count) as Total from votes group by candidate_id having sum(vote_count) > 500;

select vote_id as ID_do_voto, candidate_id as Candidato, region_id as ID_da_região, vote_count as Total_votos from votes order by vote_count desc;

select candidate_id as Candidato, max(vote_count) as Maior_Voto, min(vote_count) as Menor_voto, sum(vote_count) as Soma_dos_votos, avg(vote_count) as Média from votes group by candidate_id;

select candidate_id as Candidato, avg(vote_count) as Média_dos_votos from votes group by candidate_id having avg(vote_count) > 300
