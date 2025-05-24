CREATE TABLE Estudantes (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    curso VARCHAR(30),
    idade INT,
    nota DECIMAL(3,1),
    cidade VARCHAR(30)
);

INSERT INTO Estudantes values
(1, 'Antônio', 'Informática', 17, 9.6, 'Pilões'),
(2, 'Iago', 'Informática', 15, 10.0, 'Guarabira'),
(3, 'Kamyla', 'Odontologia', 27, 9.5, 'Araçagi'),
(4, 'John', 'Biologia', 45, 10.0, 'Sobral'),
(5, 'Isadora', 'Culinária', 15, 8.0, 'Araçagi'),
(6, 'Jordan', 'Música', 30, 9.0, 'San Diego'),
(7, 'Gabriel', 'Moda', 2025, 10.0, 'Jerusalém'),
(32, 'Lebron', 'Informática', 55, 7.0, 'Osasco'),
(174, 'João', 'Informática', 15, 2.0, 'Mari'),
(202, 'Daniel', 'Informática', 18, 9.0, 'Pilões'),
(92, 'Hálisson', 'Matemática', 45, 10.0, 'João Pessoa'),
(10, 'Barros', 'Banco de Dados', 31, 10.0, 'João Pessoa'),
(929, 'Gabriela', 'Informática', 17, 1.0, 'Caiçara'),
(22, 'Pedro', 'Culinária', 12, 7.0, 'Mari');

SELECT * FROM Estudantes where nome like 'A%';
SELECT * FROM Estudantes order by nota desc;
SELECT AVG(nota)
from Estudantes;
SELECT min(nota)
from Estudantes;
SELECT max(nota)
from Estudantes;
SELECT count(*) from Estudantes;
SELECT count(*) as Informática;
SELECT count(*) as Odontologia;
SELECT count(*) as Biologia;
SELECT count(*) as Culinária;
SELECT count(*) as Música;
SELECT count(*) as Moda;

SELECT sum(idade)
from Estudantes;

SELECT curso, count(*) as cursos_com_mais_alunos
FROM Estudantes
group by curso
having count(*) > 5;

SELECT curso, AVG(nota) as média
FROM Estudantes
where cidade like 'S%'
group by curso
having AVG(nota) > 7;
