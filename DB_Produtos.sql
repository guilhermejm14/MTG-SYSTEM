CREATE TABLE PRODUTOS (
ID_Produtos INT PRIMARY KEY IDENTITY,
SKU NVARCHAR(8) NOT NULL UNIQUE,
Produtos NVARCHAR(50) NOT NULL,
Estoque_Produtos NVARCHAR(50) NOT NULL,
Categorias NVARCHAR(50) NOT NULL,
Preços DECIMAL (10,2) NOT NULL,
Data_Cadastro DATETIME NOT NULL DEFAULT GETDATE()
);
 GO

-- Inserção dos produtos (sem precisar informar Data_Cadastro)

INSERT INTO Produtos (SKU, Produtos, Estoque_Produtos, Categorias, Preços)
VALUES
(100001, 'Pastilha de Freio Dianteira', 120, 'Freios', 89.90),
(100002, 'Disco de Freio Ventilado',     45, 'Freios', 219.90),
(100003, 'Filtro de Ar do Motor',        80, 'Filtros', 39.90),
(100004, 'Filtro de Óleo',              150, 'Filtros', 29.90),
(100005, 'Filtro de Combustível',        95, 'Filtros', 34.90),
(100006, 'Amortecedor Dianteiro',        20, 'Suspensão', 289.00),
(100007, 'Amortecedor Traseiro',         18, 'Suspensão', 279.00),
(100008, 'Kit Embreagem Completo',       10, 'Motor', 829.90),
(100009, 'Correia Dentada',             140, 'Motor', 67.90),
(100010, 'Correia do Alternador',       110, 'Motor', 45.00),
(100011, 'Jogo de Velas',                90, 'Elétrica', 99.90),
(100012, 'Bobina de Ignição',            35, 'Elétrica', 189.90),
(100013, 'Bateria Automotiva 60Ah',      25, 'Elétrica', 499.00),
(100014, 'Bomba de Combustível',         30, 'Motor', 364.00),
(100015, 'Radiador',                     12, 'Arrefecimento', 589.90),
(100016, 'Ventoinha do Radiador',        22, 'Arrefecimento', 249.90),
(100017, 'Sensor de Oxigênio (Sonda Lambda)', 40, 'Elétrica', 179.90),
(100018, 'Sensor MAP',                   28, 'Elétrica', 159.90),
(100019, 'Alternador 120A',               8, 'Elétrica', 1050.00),
(100020, 'Motor de Partida',              9, 'Elétrica', 899.00),
(100021, 'Rolamento de Roda',            70, 'Direção', 79.90),
(100022, 'Terminal de Direção',          55, 'Direção', 69.90),
(100023, 'Pivô de Suspensão',            48, 'Suspensão', 74.90),
(100024, 'Braço de Suspensão',           15, 'Suspensão', 329.90),
(100025, 'Kit Correia + Tensor',         20, 'Motor', 249.90),
(100026, 'Óleo de Motor 5W30 (1L)',     200, 'Motor', 49.90),
(100027, 'Fluido de Freio DOT4',        160, 'Freios', 24.90),
(100028, 'Aditivo de Radiador',         130, 'Arrefecimento', 19.90),
(100029, 'Limpador de Para-brisa',      100, 'Acessórios', 22.90),
(100030, 'Cabo de Vela',                 60, 'Elétrica', 59.90);
GO

SELECT * FROM PRODUTOS;


SELECT * FROM PRODUTOS
WHERE Estoque_Produtos < 50;


UPDATE PRODUTOS
SET Estoque_Produtos = Estoque_Produtos + 100
WHERE ID_Produtos = 4;

UPDATE PRODUTOS
SET Estoque_Produtos = Estoque_Produtos - 100
WHERE ID_Produtos = 4;
