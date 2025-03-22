-- Criação da tabela Clientes
CREATE TABLE Clientes (
    ID_Cliente INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Tipo_Cliente ENUM('PJ', 'PF') NOT NULL,
    CPF_CNPJ VARCHAR(14) UNIQUE NOT NULL,
    Endereço VARCHAR(255),
    Contato VARCHAR(50),
    CHECK (Tipo_Cliente IN ('PJ', 'PF'))
);

-- Criação da tabela Pedidos
CREATE TABLE Pedidos (
    ID_Pedido INT PRIMARY KEY AUTO_INCREMENT,
    ID_Cliente INT NOT NULL,
    Data_Pedido DATE,
    Valor_Total DECIMAL(10, 2),
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente)
);

-- Criação da tabela Pagamentos
CREATE TABLE Pagamentos (
    ID_Pagamento INT PRIMARY KEY AUTO_INCREMENT,
    Tipo_Pagamento VARCHAR(50),
    Status_Pagamento VARCHAR(50)
);

-- Tabela associativa entre Pedidos e Pagamentos
CREATE TABLE Pedidos_Pagamentos (
    ID_Pedido INT NOT NULL,
    ID_Pagamento INT NOT NULL,
    PRIMARY KEY (ID_Pedido, ID_Pagamento),
    FOREIGN KEY (ID_Pedido) REFERENCES Pedidos(ID_Pedido),
    FOREIGN KEY (ID_Pagamento) REFERENCES Pagamentos(ID_Pagamento)
);

-- Criação da tabela Produtos
CREATE TABLE Produtos (
    ID_Produto INT PRIMARY KEY AUTO_INCREMENT,
    Nome_Produto VARCHAR(100),
    Preço DECIMAL(10, 2),
    Estoque INT
);

-- Criação da tabela Fornecedores
CREATE TABLE Fornecedores (
    ID_Fornecedor INT PRIMARY KEY AUTO_INCREMENT,
    Nome_Fornecedor VARCHAR(100),
    Contato VARCHAR(50),
    Endereço VARCHAR(255)
);

-- Tabela associativa Produtos_Fornecedores
CREATE TABLE Produtos_Fornecedores (
    ID_Produto INT NOT NULL,
    ID_Fornecedor INT NOT NULL,
    PRIMARY KEY (ID_Produto, ID_Fornecedor),
    FOREIGN KEY (ID_Produto) REFERENCES Produtos(ID_Produto),
    FOREIGN KEY (ID_Fornecedor) REFERENCES Fornecedores(ID_Fornecedor)
);

-- Criação da tabela Entregas
CREATE TABLE Entregas (
    ID_Entrega INT PRIMARY KEY AUTO_INCREMENT,
    ID_Pedido INT NOT NULL,
    Status_Entrega VARCHAR(50),
    Codigo_Rastreamento VARCHAR(100),
    FOREIGN KEY (ID_Pedido) REFERENCES Pedidos(ID_Pedido)
);
