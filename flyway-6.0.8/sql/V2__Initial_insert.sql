INSERT INTO INGREDIENTES
    (NOME, QUANTIDADE_EM_ESTOQUE, QUANTIDADE_MINIMA, UNIDADE_MEDIDA)
VALUES
    ('MARGARINA', 200, 10, 'kg'),
    ('TRIGO', 100, 10, 'kg'),
    ('LEITE', 100, 10, 'litro'),
    ('OVO', 30, 20, 'unidade'),
    ('CHOCOLATE', 20, 5, 'kg'),
    ('CAFE_SOLUVEL', 20, 10, 'kg'),
    ('SACHE DE CHA', 50, 20, 'unidade'),
    ('AÇUCAR', 50, 25, 'kg'),
    ('CREME DE LEITE', 20, 5, 'kg'),
    ('LEITE CONDENSADO', 15, 5, 'kg');


INSERT INTO PESSOA
    (CPF, TELEFONE, NOME, TIPO_PESSOA)
VALUES
    ('03646092531', '065996101816', 'William', 2),
    ('03897892123', '065981009829', 'Irojapa', 2),
    ('02938588392', '065968563826', 'Paula', 1),
    ('01294148192', '065932411236', 'Marco', 1),
    ('01294148192', '065932411236', 'Matheus', 1);

INSERT INTO FUNCIONARIO
    (ID_FUNCIONARIO, SALARIO)
VALUES
    (1, 10),
    (2, 15);

INSERT INTO CLIENTE
    (ID_CLIENTE, ENDERECO)
VALUES
    (3, 'shoppantanal'),
    (4, 'ShoppingEstacao'),
    (5, 'UFMT');


INSERT INTO PRODUTO
    (PRECO, NOME)
VALUES
    (15, 'frapuccino'),
    (5, 'bolo_de_chocolate'),
    (3, 'Cookie_red_velvet'),
    (4, 'cha_Matte');

INSERT INTO BEBIDA
    (ID_BEBIDA)
VALUES
    (1),
    (4);

INSERT INTO COMIDA
    (ID_COMIDA, CALORIAS)
VALUES
    (2, 500),
    (3, 120);

INSERT INTO CAFE
    (ID_BEBIDA, GOURMET, TAMANHO)
VALUES
    (1, TRUE, 'G');

INSERT INTO BOLO
    (ID_COMIDA, PESO, SABOR)
VALUES
    (2, 2, 'Chocolate');

INSERT INTO COOKIE
    (ID_COMIDA, SABOR)
VALUES
    (3, 'red_velvet');

INSERT INTO CHA
    (ID_BEBIDA, SABOR, GELADO)
VALUES
    (4, 'matte', TRUE);

INSERT INTO PRODUTO_INGREDIENTE
    (ID_PRODUTO, ID_INGREDIENTE, QUANTIDADE_RECEITA)
VALUES
    (1, 3, 0.2),
    (1, 6, 0.2),
    (1, 10, 0.1),
    (2, 2, 0.3),
    (2, 1, 0.05),
    (2, 4, 2),
    (2, 5, 0.1),
    (2, 8, 0.1);

INSERT INTO PEDIDO
    (ID_CLIENTE, ID_FUNCIONARIO, TIPO_PEDIDO)
VALUES
    (3, 1, 10),
    (3, 2, 20),
    (4, 2, 20);

INSERT INTO PEDIDO_PRODUTO
    (ID_PRODUTO, ID_PEDIDO, QUANTIDADE_PRODUTO)
VALUES
    (2, 1, 8),
    (1, 2, 2),
    (2, 2, 3),
    (4, 3, 20);
