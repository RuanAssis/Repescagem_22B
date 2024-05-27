use respecagem_22B;

-- Selecionar os nomes e especialidades de todos os médicos --
SELECT nome, especialidade
FROM Medicos;

-- Selecionar os nomes dos médicos que são especialistas em Cardiologia --
SELECT nome, especialidade
FROM Medicos
WHERE especialidade = "Cardiologia";

-- Selecionar os médicos que foram contratados após o ano de 2020 --
SELECT nome
FROM Medicos
WHERE data_contratacao > 2020;

-- Selecionar os médicos ordenados pela data de contratação, do mais recente para o mais antigo --
SELECT nome
FROM Medicos
ORDER BY data_contratacao desc;

-- Selecionar os médicos com especializações adicionais que contenham a palavra 'Cirurgia' --
SELECT nome
FROM Medicos
WHERE especializacoes_adicionais LIKE "%Cirurgia%"; 

-- Selecionar os nomes e e-mails dos médicos, exibindo os resultados em ordem alfabética pelo nome. --

-- Selecionar os médicos que trabalham no horário da tarde (12:00 - 20:00 ou 11:00 - 19:00)--
SELECT nome
FROM Medicos
WHERE horario_trabalho = "12:00 - 20:00" or horario_trabalho = "11:00 - 19:00";

-- Selecionar os médicos cujo número de telefone termina com "8901" -- 
SELECT nome
FROM Medicos
WHERE telefone LIKE "%8901"; 

-- Selecionar os médicos que possuem um salário entre 15000 e 16000 --

-- Selecionar a média dos salários de todos os médicos --
SELECT AVG(salario)
FROM Medicos;
