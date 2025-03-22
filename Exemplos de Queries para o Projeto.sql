SELECT ID_Cliente, COUNT(*) AS Total_Pedidos 
FROM Pedidos 
GROUP BY ID_Cliente;


SELECT DISTINCT Nome_Fornecedor 
FROM Fornecedores 
WHERE Nome_Fornecedor IN (SELECT Nome FROM Clientes);


SELECT Produtos.Nome_Produto, Fornecedores.Nome_Fornecedor, Produtos.Estoque
FROM Produtos
JOIN Produtos_Fornecedores ON Produtos.ID_Produto = Produtos_Fornecedores.ID_Produto
JOIN Fornecedores ON Produtos_Fornecedores.ID_Fornecedor = Fornecedores.ID_Fornecedor;


SELECT Fornecedores.Nome_Fornecedor, Produtos.Nome_Produto
FROM Fornecedores
JOIN Produtos_Fornecedores ON Fornecedores.ID_Fornecedor = Produtos_Fornecedores.ID_Fornecedor
JOIN Produtos ON Produtos_Fornecedores.ID_Produto = Produtos.ID_Produto;


SELECT Pedidos.ID_Pedido, GROUP_CONCAT(Pagamentos.Tipo_Pagamento) AS Formas_Pagamento
FROM Pedidos
JOIN Pedidos_Pagamentos ON Pedidos.ID_Pedido = Pedidos_Pagamentos.ID_Pedido
JOIN Pagamentos ON Pedidos_Pagamentos.ID_Pagamento = Pagamentos.ID_Pagamento
GROUP BY Pedidos.ID_Pedido;


----Perguntas e Queries SQL


SELECT ID_Cliente, COUNT(*) AS Total_Pedidos
FROM Pedidos
GROUP BY ID_Cliente;



SELECT DISTINCT Nome_Fornecedor 
FROM Fornecedores 
WHERE Nome_Fornecedor IN (SELECT Nome FROM Clientes);



SELECT Produtos.Nome_Produto, Fornecedores.Nome_Fornecedor, Produtos.Estoque
FROM Produtos
JOIN Produtos_Fornecedores ON Produtos.ID_Produto = Produtos_Fornecedores.ID_Produto
JOIN Fornecedores ON Produtos_Fornecedores.ID_Fornecedor = Fornecedores.ID_Fornecedor;


SELECT Fornecedores.Nome_Fornecedor, Produtos.Nome_Produto
FROM Fornecedores
JOIN Produtos_Fornecedores ON Fornecedores.ID_Fornecedor = Produtos_Fornecedores.ID_Fornecedor
JOIN Produtos ON Produtos_Fornecedores.ID_Produto = Produtos.ID_Produto;
