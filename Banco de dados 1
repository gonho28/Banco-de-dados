CREATE TABLE Cidade(
Cod_cidade int primary key,
Cod_nome varchar(30) not null
);

CREATE TABLE Curso(
Cod_curso int primary key,
Cod int not null,
Nome varchar(30) not null
);

CREATE TABLE Aluno(
Cod_aluno INT primary key,
Nome_aluno varchar(50),
Cod_curso int,
Cod_cidade int,
FOREIGN KEY (Cod_cidade) references Cidade(Cod_cidade),
FOREIGN key (Cod_curso) references Curso(Cod_curso)
);

INSERT INTO Cidade Values
(1, 'Pilões'),
(2, 'Cuitegi'),
(3, 'Araçagi'),
(4, 'Balneário Camboriú');

update Cidade
set Cod_nome = 'Guarabababababa'
where Cod_cidade = 1;

select * from Cidade;

INSERT INTO Curso Values
(1392, 1, 'informática'),
(2182, 2, 'Edificações'),
(3291, 3, 'Culinária'),
(4728, 4, 'Contabilidade');

update Curso
set Nome = 'Engenharia'
where Cod_curso = 3291 ;

INSERT INTO Aluno Values
(0001, 'Iago', 1392, 4),
(0003, 'Neto', 4728, 2),
(0032, 'Pedro', 3291, 1),
(4002, 'Gabriel', 2182, 3);

select * from Curso;

UPDATE Aluno
SET Nome_aluno = 'Kamyla'
WHERE Cod_curso = 4728;

SELECT * FROM Aluno;

SELECT Nome_aluno, Cod_nome, Nome
FROM ALUNO A
join curso C
on A.Cod_curso = c.Cod_curso
Join Cidade CI
On A.Cod_cidade = CI.Cod_cidade
