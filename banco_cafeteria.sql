
--  Modelo de Banco de Dados--


--Entidades:
    --Produtos
    --Pedidos

--Relacionamento:
    --Um pedido pode conter vários produtos (relação N:N). Para simplificar, 
    --assumiremos que a tabela pedidos lista apenas um produto por linha (modelo simplificado).



-- Criação das tabelas
CREATE TABLE produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL
);

CREATE TABLE pedidos (
    id INT PRIMARY KEY,
    produto_id INT NOT NULL,
    quantidade INT NOT NULL,
    data_pedido DATE NOT NULL,
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Inserção de produtos
INSERT INTO produtos (id, nome, preco, estoque) VALUES
(1, 'Café Expresso', 5.50, 100),
(2, 'Cappuccino', 7.00, 50),
(3, 'Pão de Queijo', 3.00, 200);

-- Inserção de pedidos
INSERT INTO pedidos (id, produto_id, quantidade, data_pedido) VALUES
(1, 1, 2, '2025-05-08'),
(2, 3, 5, '2025-05-08'),
(3, 2, 1, '2025-05-07');
