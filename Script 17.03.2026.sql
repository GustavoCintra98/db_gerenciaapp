CREATE DATABASE db_gerenciaapp;

USE db_gerenciaapp;

CREATE TABLE tblcategorias(
id_categoria INT PRIMARY KEY IDENTITY,
nome_categoria VARCHAR(40),
descricao_categoria VARCHAR(100)
);

CREATE TABLE tblclientes(
id_cliente INT PRIMARY KEY IDENTITY,
nome_cliente VARCHAR(80) NOT NULL,
cpf_cliente VARCHAR(14) UNIQUE NOT NULL,
data_nascimento_cliente DATE NOT NULL,
genero_cliente CHAR(1),
cep_endereco_cliente VARCHAR(10) NOT NULL,
logradouro_cliente VARCHAR(130) NOT NULL,
numero_logradouro_cliente INT NOT NULL,
bairro_logradouro_cliente VARCHAR(80) NOT NULL,
cidade_logradouro_cliente VARCHAR(40) NOT NULL,
uf_logradouro_cliente CHAR(2) NOT NULL,
complemento_logradouro_cliente VARCHAR(100),
telefone_cliente VARCHAR(14),
celular_cliente VARCHAR(14) NOT NULL,
celular_whatsapp_cliente CHAR(1) NOT NULL,
email_cliente VARCHAR(100),
observacoes_cliente VARCHAR(MAX)
);

CREATE TABLE tblfornecedores(
id_fornecedor INT PRIMARY KEY IDENTITY,
cnpj_fornecedor VARCHAR(18) UNIQUE NOT NULL,
razao_social_fornecedor VARCHAR(120) NOT NULL,
nome_fantasia_fornecedor VARCHAR(80) NOT NULL,
porte_empresa_fornecedor VARCHAR(10) NOT NULL,
cnae_principal_fornecedor VARCHAR(12) NOT NULL,
cnae_secundario_fornecedor VARCHAR(200),
inscricao_municipal_fornecedor VARCHAR(15),
inscricao_estadual_fornecedor VARCHAR(15) NOT NULL,
cep_endereco_fornecedor VARCHAR(10) NOT NULL,
logradouro_endereco_fornecedor VARCHAR(130) NOT NULL,
numero_logradouro_fornecedor INT NOT NULL,
bairro_logradouro_fornecedor VARCHAR(80) NOT NULL,
cidade_logradouro_fornecedor VARCHAR(40) NOT NULL,
uf_logradouro_fornecedor CHAR(2) NOT NULL,
complemento_logradouro_fornecedor VARCHAR(100),
telefone_fornecedor VARCHAR(14) NOT NULL,
celular_fornecedor VARCHAR(14) NOT NULL,
email_fornecedor VARCHAR(100),
responsavel_atendimento VARCHAR(50) NOT NULL,
observacoes_fornecedor VARCHAR(MAX)
);

CREATE TABLE tblprodutos(
id_produto INT PRIMARY KEY IDENTITY,
sku_produto VARCHAR(20) UNIQUE,
ean_produto VARCHAR(13),
descricao_produto VARCHAR(120) NOT NULL,
categoria_produto INT NOT NULL,
unidade_produto CHAR(3) NOT NULL,
preco_compra_produto MONEY NOT NULL,
preco_venda_produto MONEY NOT NULL,
peso_produto NUMERIC(10,3) NOT NULL,
composicao_produto VARCHAR(15) NOT NULL,
comprimento_produto NUMERIC(10,3) NOT NULL,
largura_produto NUMERIC(10,3) NOT NULL,
profundidade_produto NUMERIC(10,3) NOT NULL,
ncm_produto VARCHAR(12) NOT NULL,
fornecedor_produto INT NOT NULL,
estoque_minimo_produto NUMERIC(10,3) NOT NULL,
estoque_maximo_produto NUMERIC(10,3) NOT NULL,
marca_produto VARCHAR(50) NOT NULL,
data_validade_produto DATE,
descricao_detalhada_produto VARCHAR(MAX),
endereco_imagem1_produto VARCHAR(100),
endereco_imagem2_produto VARCHAR(100),
endereco_imagem3_produto VARCHAR(100),
endereco_imagem4_produto VARCHAR(100),
CONSTRAINT fk_categoria_produtos
FOREIGN KEY (categoria_produto) REFERENCES 
tblcategorias(id_categoria),
CONSTRAINT fk_fornecedor_produtos
FOREIGN KEY (fornecedor_produto) REFERENCES
tblfornecedores (id_fornecedor)
);

select * from tblclientes

delete from tblclientes where id_cliente = 1