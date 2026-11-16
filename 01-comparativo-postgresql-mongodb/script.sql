CREATE TABLE departamentos(
  id_departamento SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  sigla VARCHAR(10)
);

CREATE TABLE funcionarios (
  id_funcionario SERIAL PRIMARY KEY,
  nome VARCHAR(150) NOT NULL,
  email VARCHAR(200),
  salario DECIMAL(10,2),
  id_departamento INTEGER REFERENCES departamentos(id_departamento),
  data_admissao DATE DEFAULT CURRENT_DATE
  );
  
  INSERT INTO departamentos (nome, sigla)
VALUES ('Ciência de Dados', 'CD');
  INSERT INTO departamentos (nome, sigla)
VALUES ('Tecnologia da Informação', 'TI');

  INSERT INTO funcionarios (nome, email, salario, id_departamento)
 VALUES
  ('Ryan Marques', 'ryan03rodriguess@gmail.com', '1000','2'),
  ('Marques Ryan', 'rodriguess03ryan@gmail.com', '15000', '1')

  SELECT * FROM departamentos;

  SELECT * FROM funcionarios;

  SELECT * FROM funcionarios WHERE id_departamento = 1;


  UPDATE funcionarios
SET salario = 20000.00
WHERE id_funcionario = 2;


DELETE FROM funcionarios
WHERE id_funcionario = 1;
