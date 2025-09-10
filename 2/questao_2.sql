CREATE DATABASE IF NOT EXISTS eCommerce;
USE eCommerce;

CREATE TABLE produtos (
    id INT PRIMARY KEY NOT NULL,
    nome_produto VARCHAR(50) NOT NULL,
    preco DECIMAL(10,2) NOT NULL
);

CREATE TABLE vendas (
    id INT PRIMARY KEY NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    data_venda DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_produto) REFERENCES produtos(id)
);

# SEGUE INSERTS PARA TESTE
INSERT INTO produtos (id, nome_produto, preco) VALUES
(1, 'Notebook Dell Inspiron', 3500.00),
(2, 'Smartphone Samsung A54', 1800.00),
(3, 'Headset HyperX Cloud', 450.00),
(4, 'Teclado Mecânico Redragon', 320.00),
(5, 'Mouse Gamer Logitech G203', 150.00);

INSERT INTO vendas (id, id_produto, quantidade) VALUES
(1, 1, 2),   
(2, 2, 1),   
(3, 5, 3),   
(4, 3, 2),   
(5, 4, 1);   

SELECT p.nome_produto, v.quantidade
FROM vendas v
LEFT JOIN produtos p ON p.id = v.id_produto
GROUP BY p.nome_produto
ORDER BY quantidade DESC;
