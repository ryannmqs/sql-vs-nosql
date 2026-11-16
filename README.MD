# Estudo Comparativo: SQL (PostgreSQL) vs. NoSQL (MongoDB)

Este repositório reúne estudos práticos sobre modelagem, manipulação e análise de dados estruturados e semiestruturados, comparando o modelo relacional (**PostgreSQL**) com o modelo orientado a documentos (**MongoDB**).

## 📂 Estrutura do Repositório

* **`01-comparativo-postgresql-mongodb/`**: Modelagem e operações CRUD comparando tabelas relacionais rígidas no PostgreSQL com documentos JSON flexíveis no MongoDB Compass.
* **`02-projeto-pratico-mongodb/`**: Base de dados de colaboradores (`funcionarios.json`), consultas de filtro (`find`) em arrays e objetos aninhados, além de pipelines de agregação (`$group` e `$sort`) para métricas salariais por departamento.
* **`consultas.js`**: Script com as principais queries e agregações desenvolvidas no MongoDB.

## 🛠️ Tecnologias Utilizadas
* **Banco Relacional (SQL):** PostgreSQL / pgAdmin
* **Banco Não Relacional (NoSQL):** MongoDB / MongoDB Compass
* **Formatos e Linguagens:** SQL, JSON, JavaScript (MongoDB Shell)

## 🎯 Principais Conceitos Aplicados
* **Flexibilidade de Esquema:** Uso de campos opcionais, arrays (`habilidades`) e subdocumentos (`departamento`) sem necessidade de alteração estrutural no banco.
* **Consultas Avançadas:** Filtros com operadores de comparação (`$gt`), busca em arrays e documentos aninhados.
* **Aggregation Pipeline:** Agrupamento de registros com `$group` para cálculo de contagem (`$sum`) e média salarial (`$avg`) por área.
