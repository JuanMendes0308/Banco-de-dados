CREATE TABLE aluno (
    idAluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    dataNascimento DATETIME NOT NULL
);

CREATE TABLE curso (
    idCurso INT PRIMARY KEY AUTO_INCREMENT,
    nomeCurso VARCHAR(100) NOT NULL,
    cargaHoraria INT NOT NULL,
    valor DECIMAL(10,2) NOT NULL DEFAULT 0.00
    
    CHECK (cargaHoraria > 0),
    CHECK (valor >= 0)
);

INSERT INTO aluno (nome, email, dataNascimento)
VALUES ('Ana Souza', 'ana@gmail.com', '2005-03-10'), 
('Bruno Lima', 'bruno@gmail.com', '2000-07-21'),
('Carla Mendes', 'carla@gmail.com', '2003-11-05'),
('Daniel Rocha', 'daniel@gmail.com', '1997-01-18'),
('Amanda Silva', 'amanda@gmail.com', '2006-09-30')

INSERT INTO curso (nomeCurso, cargaHoraria, valor)
VALUES ('SQL Básico - Uma linguagem para banco de dados', '40', '299.90'),
('Java Fundamentos', '60', '399.90'),
('C# para iniciantes', '50', '349.90'),
('Banco de Dados Avançado', '80', '499.90'),
('Lógica de Programação', '30', '199.90')

/*EX 5*/
SELECT * FROM curso

/*EX 6, feito em 08/05/2026*/
SELECT nome FROM aluno
WHERE dataNascimento <= '2005-05-08'

/*EX 7*/
SELECT * FROM curso
WHERE valor < '400'

/*EX 8*/
SELECT * FROM aluno
WHERE nome LIKE 'A%'

/*EX 9*/
SELECT nomeCurso, valor FROM curso
WHERE nomeCurso LIKE '%Banco%'

/*EX 10*/
SELECT * FROM aluno
ORDER BY nome ASC

/*EX 11*/
SELECT * FROM curso
ORDER BY valor DESC

/*EX 12*/
UPDATE aluno
SET email = 'ana@gmail.com.br' 
WHERE idAluno = 1

/*EX 13*/
UPDATE curso
SET valor = '390.99'
WHERE idCurso = 3

/*EX 14*/
DELETE FROM aluno
WHERE nome = 'Daniel Rocha'

/*Extra*/
SELECT nome,
       dataNascimento,
       TIMESTAMPDIFF(YEAR, dataNascimento, CURDATE()) AS idade
FROM aluno
ORDER BY idade ASC;