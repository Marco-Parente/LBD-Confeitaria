CREATE SEQUENCE public.ingredientes_id_ingrediente_seq;

CREATE TABLE public.Ingredientes
(
    id_ingrediente INTEGER NOT NULL DEFAULT nextval('public.ingredientes_id_ingrediente_seq'),
    nome VARCHAR NOT NULL,
    quantidade_em_estoque INTEGER NOT NULL,
    unidade_medida VARCHAR NOT NULL,
    quantidade_minima INTEGER NOT NULL,
    CONSTRAINT ingredientes_pk PRIMARY KEY (id_ingrediente)
);


ALTER SEQUENCE public.ingredientes_id_ingrediente_seq
OWNED BY public.Ingredientes.id_ingrediente;

CREATE SEQUENCE public.produto_id_seq_10;

CREATE TABLE public.Produto
(
    id_produto INTEGER NOT NULL DEFAULT nextval('public.produto_id_seq_10'),
    preco REAL NOT NULL,
    nome VARCHAR NOT NULL,
    CONSTRAINT produto_pk PRIMARY KEY (id_produto)
);


ALTER SEQUENCE public.produto_id_seq_10
OWNED BY public.Produto.id_produto;

CREATE SEQUENCE public.produto_ingrediente_id_produto_ingrediente_seq;

CREATE TABLE public.Produto_Ingrediente
(
    id_produto INTEGER NOT NULL,
    id_ingrediente INTEGER NOT NULL,
    id_produto_ingrediente INTEGER NOT NULL DEFAULT nextval('public.produto_ingrediente_id_produto_ingrediente_seq'),
    quantidade_receita INTEGER NOT NULL,
    CONSTRAINT produto_ingrediente_pk PRIMARY KEY (id_produto, id_ingrediente, id_produto_ingrediente)
);


ALTER SEQUENCE public.produto_ingrediente_id_produto_ingrediente_seq
OWNED BY public.Produto_Ingrediente.id_produto_ingrediente;

CREATE SEQUENCE public.produto_id_seq_5;

CREATE TABLE public.Bebida
(
    id_bebida INTEGER NOT NULL DEFAULT nextval('public.produto_id_seq_5'),
    CONSTRAINT bebida_pk PRIMARY KEY (id_bebida)
);


ALTER SEQUENCE public.produto_id_seq_5
OWNED BY public.Bebida.id_bebida;

CREATE SEQUENCE public.produto_id_seq_7;

CREATE TABLE public.Milkshake
(
    id_bebida INTEGER NOT NULL DEFAULT nextval('public.produto_id_seq_7'),
    tamanho CHAR NOT NULL,
    sabor VARCHAR NOT NULL,
    CONSTRAINT milkshake_pk PRIMARY KEY (id_bebida)
);


ALTER SEQUENCE public.produto_id_seq_7
OWNED BY public.Milkshake.id_bebida;

CREATE SEQUENCE public.produto_id_seq_6;

CREATE TABLE public.Cha
(
    id_bebida INTEGER NOT NULL DEFAULT nextval('public.produto_id_seq_6'),
    sabor VARCHAR NOT NULL,
    gelado BOOLEAN NOT NULL,
    CONSTRAINT cha_pk PRIMARY KEY (id_bebida)
);


ALTER SEQUENCE public.produto_id_seq_6
OWNED BY public.Cha.id_bebida;

CREATE SEQUENCE public.produto_id_seq_8;

CREATE TABLE public.Cafe
(
    id_bebida INTEGER NOT NULL DEFAULT nextval('public.produto_id_seq_8'),
    Gourmet BOOLEAN NOT NULL,
    Tamanho CHAR NOT NULL,
    CONSTRAINT cafe_pk PRIMARY KEY (id_bebida)
);


ALTER SEQUENCE public.produto_id_seq_8
OWNED BY public.Cafe.id_bebida;

CREATE SEQUENCE public.produto_id_seq;

CREATE TABLE public.Comida
(
    id_comida INTEGER NOT NULL DEFAULT nextval('public.produto_id_seq'),
    calorias INTEGER NOT NULL,
    CONSTRAINT comida_pk PRIMARY KEY (id_comida)
);


ALTER SEQUENCE public.produto_id_seq
OWNED BY public.Comida.id_comida;

CREATE SEQUENCE public.produto_id_seq_3;

CREATE TABLE public.Cookie
(
    id_comida INTEGER NOT NULL DEFAULT nextval('public.produto_id_seq_3'),
    sabor VARCHAR NOT NULL,
    CONSTRAINT cookie_pk PRIMARY KEY (id_comida)
);


ALTER SEQUENCE public.produto_id_seq_3
OWNED BY public.Cookie.id_comida;

CREATE SEQUENCE public.produto_id_seq_1;

CREATE TABLE public.Cupcake
(
    id_comida INTEGER NOT NULL DEFAULT nextval('public.produto_id_seq_1'),
    sabor_massa VARCHAR NOT NULL,
    sabor_cobertura VARCHAR NOT NULL,
    CONSTRAINT cupcake_pk PRIMARY KEY (id_comida)
);


ALTER SEQUENCE public.produto_id_seq_1
OWNED BY public.Cupcake.id_comida;

CREATE SEQUENCE public.produto_id_seq_4;

CREATE TABLE public.Donut
(
    id_comida INTEGER NOT NULL DEFAULT nextval('public.produto_id_seq_4'),
    recheio VARCHAR NOT NULL,
    CONSTRAINT donut_pk PRIMARY KEY (id_comida)
);


ALTER SEQUENCE public.produto_id_seq_4
OWNED BY public.Donut.id_comida;

CREATE SEQUENCE public.produto_id_seq_2;

CREATE TABLE public.Bolo
(
    id_comida INTEGER NOT NULL DEFAULT nextval('public.produto_id_seq_2'),
    peso REAL NOT NULL,
    sabor VARCHAR NOT NULL,
    CONSTRAINT bolo_pk PRIMARY KEY (id_comida)
);


ALTER SEQUENCE public.produto_id_seq_2
OWNED BY public.Bolo.id_comida;

CREATE SEQUENCE public.pessoa_id_seq;

CREATE TABLE public.Pessoa
(
    id_pessoa INTEGER NOT NULL DEFAULT nextval('public.pessoa_id_seq'),
    tipo_pessoa INTEGER NOT NULL,
    CPF VARCHAR NOT NULL,
    Telefone VARCHAR NOT NULL,
    Nome VARCHAR NOT NULL,
    CONSTRAINT pessoa_pk PRIMARY KEY (id_pessoa)
);


ALTER SEQUENCE public.pessoa_id_seq
OWNED BY public.Pessoa.id_pessoa;

CREATE TABLE public.Cliente
(
    id_cliente INTEGER NOT NULL,
    endereco VARCHAR NOT NULL,
    CONSTRAINT cliente_pk PRIMARY KEY (id_cliente)
);


CREATE TABLE public.Funcionario
(
    id_funcionario INTEGER NOT NULL,
    Salario REAL NOT NULL,
    CONSTRAINT funcionario_pk PRIMARY KEY (id_funcionario)
);


CREATE SEQUENCE public.pedido_id_pedido_seq;

CREATE TABLE public.Pedido
(
    id_pedido INTEGER NOT NULL DEFAULT nextval('public.pedido_id_pedido_seq'),
    id_cliente INTEGER NOT NULL,
    id_funcionario INTEGER NOT NULL,
    tipo_pedido INTEGER NOT NULL,
    valor_pedido REAL DEFAULT 0 NOT NULL,
    CONSTRAINT pedido_pk PRIMARY KEY (id_pedido)
);


ALTER SEQUENCE public.pedido_id_pedido_seq
OWNED BY public.Pedido.id_pedido;

CREATE SEQUENCE public.pedido_produto_id_pedido_produto_seq;

CREATE TABLE public.pedido_produto
(
    id_pedido INTEGER NOT NULL,
    id_produto INTEGER NOT NULL,
    id_pedido_produto INTEGER NOT NULL DEFAULT nextval('public.pedido_produto_id_pedido_produto_seq'),
    quantidade_produto INTEGER NOT NULL,
    CONSTRAINT pedido_produto_pk PRIMARY KEY (id_pedido, id_produto, id_pedido_produto)
);


ALTER SEQUENCE public.pedido_produto_id_pedido_produto_seq
OWNED BY public.pedido_produto.id_pedido_produto;

CREATE TABLE public.Encomenda
(
    id_pedido INTEGER NOT NULL,
    prazo_entrega TIMESTAMP NOT NULL,
    data_pedido TIMESTAMP NOT NULL,
    CONSTRAINT encomenda_pk PRIMARY KEY (id_pedido)
);


ALTER TABLE public.Produto_Ingrediente ADD CONSTRAINT ingredientes_produto_ingrediente_fk
FOREIGN KEY (id_ingrediente)
REFERENCES public.Ingredientes (id_ingrediente)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Bebida ADD CONSTRAINT produto_bebida_fk
FOREIGN KEY (id_bebida)
REFERENCES public.Produto (id_produto)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Comida ADD CONSTRAINT produto_comida_fk
FOREIGN KEY (id_comida)
REFERENCES public.Produto (id_produto)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Produto_Ingrediente ADD CONSTRAINT produto_produto_ingrediente_fk
FOREIGN KEY (id_produto)
REFERENCES public.Produto (id_produto)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.pedido_produto ADD CONSTRAINT produto_pedido_produto_fk
FOREIGN KEY (id_produto)
REFERENCES public.Produto (id_produto)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Cafe ADD CONSTRAINT bebida_caf_fk
FOREIGN KEY (id_bebida)
REFERENCES public.Bebida (id_bebida)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Cha ADD CONSTRAINT bebida_ch_fk
FOREIGN KEY (id_bebida)
REFERENCES public.Bebida (id_bebida)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Milkshake ADD CONSTRAINT bebida_milkshake_fk
FOREIGN KEY (id_bebida)
REFERENCES public.Bebida (id_bebida)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Bolo ADD CONSTRAINT comida_bolo_fk
FOREIGN KEY (id_comida)
REFERENCES public.Comida (id_comida)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Donut ADD CONSTRAINT comida_donut_fk
FOREIGN KEY (id_comida)
REFERENCES public.Comida (id_comida)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Cupcake ADD CONSTRAINT comida_cupcake_fk
FOREIGN KEY (id_comida)
REFERENCES public.Comida (id_comida)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Cookie ADD CONSTRAINT comida_cookie_fk
FOREIGN KEY (id_comida)
REFERENCES public.Comida (id_comida)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Funcionario ADD CONSTRAINT pessoa_funcionrio_fk
FOREIGN KEY (id_funcionario)
REFERENCES public.Pessoa (id_pessoa)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Cliente ADD CONSTRAINT pessoa_cliente_fk
FOREIGN KEY (id_cliente)
REFERENCES public.Pessoa (id_pessoa)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Pedido ADD CONSTRAINT cliente_pedido_fk
FOREIGN KEY (id_cliente)
REFERENCES public.Cliente (id_cliente)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Pedido ADD CONSTRAINT funcionrio_pedido_fk
FOREIGN KEY (id_funcionario)
REFERENCES public.Funcionario (id_funcionario)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Encomenda ADD CONSTRAINT pedido_encomenda_fk
FOREIGN KEY (id_pedido)
REFERENCES public.Pedido (id_pedido)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.pedido_produto ADD CONSTRAINT pedido_pedido_produto_fk
FOREIGN KEY (id_pedido)
REFERENCES public.Pedido (id_pedido)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
