// =========================================================
// CONSULTAS E AGREGAÇÕES - BANCO DE DADOS MONGODB
// Banco: empresa_simples | Coleção: funcionarios
// =========================================================

// 1. Filtrar funcionários com salário acima de R$ 4.000
db.funcionarios.find({ 
  salario: { $gt: 4000 } 
});

// 2. Filtrar funcionários que dominam Python (busca dentro de Array)
db.funcionarios.find({ 
  habilidades: "Python" 
});

// 3. Filtrar funcionários do departamento de Dados (busca em Documento Aninhado)
db.funcionarios.find({ 
  "departamento.nome": "Dados" 
});

// 4. Agregação: Total de funcionários e média salarial por departamento
db.funcionarios.aggregate([
  {
    $group: {
      _id: "$departamento.nome",
      total_funcionarios: { $sum: 1 },
      media_salarial: { $avg: "$salario" }
    }
  },
  {
    $sort: { media_salarial: -1 }
  }
]);

