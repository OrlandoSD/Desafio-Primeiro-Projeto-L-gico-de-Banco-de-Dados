# Desafio-Primeiro-Projeto-L-gico-de-Banco-de-Dados
Construindo seu Primeiro Projeto Lógico de Banco de Dados(desafio da DIO)

##Descrição do Projeto
Este projeto implementa a modelagem lógica e física de um banco de dados para um cenário de e-commerce. O objetivo é oferecer uma solução robusta para gerenciar clientes, pedidos, produtos, fornecedores, formas de pagamento e entregas, garantindo a consistência dos dados e viabilizando consultas complexas.

##Estrutura do Banco de Dados
O banco de dados foi modelado seguindo os requisitos do cenário:

Um cliente pode ser Pessoa Jurídica (PJ) ou Pessoa Física (PF), mas não pode ter ambos os tipos de informação.

Pedidos suportam múltiplas formas de pagamento.

Entregas possuem status e código de rastreio únicos.

Relacionamentos entre entidades foram definidos com base no modelo lógico e no modelo EER.

#Principais Tabelas
Clientes: Armazena informações sobre os clientes (PJ ou PF).

Pedidos: Registra os pedidos realizados pelos clientes.

Produtos: Contém os detalhes dos produtos disponíveis.

Fornecedores: Lista os fornecedores e suas informações de contato.

Pagamentos: Gerencia as diferentes formas de pagamento associadas aos pedidos.

Entregas: Controla o status e o código de rastreio das entregas.

Produtos_Fornecedores: Representa o relacionamento N:N entre Produtos e Fornecedores.

#Tecnologias Utilizadas
SGBD: MySQL ou SQL Server.

Ferramentas: MySQL Workbench para modelagem EER, GitHub para gerenciamento do repositório.

#Scripts Incluídos
criar_esquema.sql: Script para criação das tabelas e relacionamentos.

inserir_dados.sql: Script para popular o banco com dados de teste.

consultas.sql: Conjunto de queries SQL que respondem perguntas do cenário.

#Exemplos de Consultas
O projeto contempla queries que atendem aos seguintes tópicos:

Recuperações simples com SELECT Statement: Ex.: Quantos pedidos foram feitos por cada cliente.

Filtros com WHERE Statement: Ex.: Pedidos realizados após uma determinada data.

Expressões para gerar atributos derivados: Ex.: Calcular o valor total do estoque de produtos.

Ordenação dos dados com ORDER BY: Ex.: Ordenar produtos por preço decrescente.

Condições de filtros aos grupos com HAVING Statement: Ex.: Identificar clientes com mais de 5 pedidos.

Junções entre tabelas: Ex.: Relação entre produtos e fornecedores.

#Modelos de Dados
O modelo lógico e físico do banco foram estruturados e podem ser visualizados nos diagramas disponíveis no repositório:

diagramas/modelo_logico.png

diagramas/modelo_EER.png
