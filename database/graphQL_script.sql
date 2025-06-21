create database graphQL;
use graphQL;

CREATE TABLE Categorias (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(100) NOT NULL
);

CREATE TABLE Produtos (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(100) NOT NULL,
    Preco DECIMAL(10, 2) NOT NULL,
    QuantidadeEstoque INT NOT NULL,
    CategoriaId INT FOREIGN KEY REFERENCES Categorias(Id)
);

CREATE TABLE Clientes (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(100) NOT NULL,
    Email NVARCHAR(150),
    Telefone NVARCHAR(20)
);

CREATE TABLE Vendas (
    Id INT PRIMARY KEY IDENTITY(1,1),
    ClienteId INT FOREIGN KEY REFERENCES Clientes(Id),
    DataVenda DATETIME NOT NULL DEFAULT GETDATE(),
    Total DECIMAL(10, 2) NOT NULL
);

CREATE TABLE ItensVenda (
    Id INT PRIMARY KEY IDENTITY(1,1),
    VendaId INT FOREIGN KEY REFERENCES Vendas(Id),
    ProdutoId INT FOREIGN KEY REFERENCES Produtos(Id),
    Quantidade INT NOT NULL,
    PrecoUnitario DECIMAL(10, 2) NOT NULL
);


INSERT INTO Categorias (Nome) VALUES ('Eletrônicos');
INSERT INTO Categorias (Nome) VALUES ('Livros');
INSERT INTO Categorias (Nome) VALUES ('Roupas');

alter table produtos 
add constraint UQ_produtos_nome unique(nome)

INSERT INTO Produtos (Nome, Preco, QuantidadeEstoque, CategoriaId) VALUES
('Notebook Lenovo IdeaPad', 3400.00, 10, 3),
('Impressora Epson EcoTank', 980.00, 12, 3),
('Smartwatch Fitness', 250.00, 25, 3),
('Caneta Esferográfica Preta', 2.50, 300, 1),
('Cola Escolar Líquida', 3.00, 180, 1),
('Caderno 1 matéria', 8.00, 120, 2),
('Livro Contabilidade Básica', 46.00, 35, 2),
('Camisa Social Masculina', 70.00, 50, 3),
('Camisa Social Feminina', 72.00, 45, 3),
('Pen Drive 128GB', 120.00, 20, 3),
('Livro Finanças Pessoais', 48.00, 40, 2),
('Calculadora Básica', 30.00, 100, 2),
('Lápis de Cor 48 cores', 58.00, 45, 1),
('Kit Escolar Infantil', 85.00, 60, 1),
('Mouse Óptico USB', 35.00, 70, 3),
('Teclado Padrão ABNT2', 60.00, 40, 3),
('Carregador Portátil 10000mAh', 90.00, 35, 3),
('Livro Python para Iniciantes', 60.00, 50, 2),
('Lápis Preto HB Nº2', 1.80, 250, 1),
('Camiseta Manga Curta', 38.00, 70, 3),
('Livro Redes de Computadores', 72.00, 30, 2),
('Caixa Organizadora', 25.00, 80, 3),
('Caderno Inteligente', 40.00, 60, 2),
('Kit Canetas Coloridas', 15.00, 120, 1),
('Luminária Touch LED', 65.00, 25, 3),
('Adaptador USB-C para HDMI', 70.00, 20, 3),
('Livro Marketing Digital', 55.00, 45, 2),
('Caderno Executivo', 28.00, 65, 2),
('Garrafa Térmica 1L', 75.00, 30, 3),
('Livro Teoria Geral do Estado', 60.00, 40, 2),
('Cola em Gel', 4.80, 150, 1),
('Caneta Marca Texto Azul', 5.90, 120, 1),
('Pasta com Elástico A4', 6.00, 140, 2),
('Livro Análise de Dados', 65.00, 35, 2),
('Mochila Antifurto', 160.00, 20, 3),
('Caderno Brochura Capa Dura', 13.00, 90, 2),
('Smartphone Xiaomi', 2300.00, 8, 3),
('Livro Programação Web', 50.00, 45, 2),
('Fone com fio P2', 35.00, 60, 3),
('Cartolina Branca', 2.50, 200, 2),
('Caderno para Bullet Journal', 35.00, 55, 2),
('Papel Sulfite A3', 28.00, 95, 2),
('Camiseta Longline', 48.00, 45, 3),
('Livro Banco de Dados', 70.00, 38, 2),
('Blusa Térmica Masculina', 85.00, 30, 3),
('Apontador com Depósito', 3.50, 150, 1),
('Livro Lógica de Programação', 58.00, 40, 2),
('Caderno Planner Semanal', 40.00, 50, 2),
('Kit Papelaria Completo', 95.00, 40, 1),
('Mouse Gamer com 7 botões', 140.00, 20, 3),
('Lápis Preto 2B', 2.00, 180, 1),
('Caneta Gel Azul', 3.20, 200, 1),
('Livro Ciência de Dados', 68.00, 35, 2),
('Monitor 27 polegadas', 1600.00, 10, 3),
('Fita Corretiva', 5.00, 110, 1),
('Estojo 3 divisórias', 20.00, 70, 3),
('Livro Álgebra Linear', 60.00, 40, 2),
('Caneta Tinteiro Azul', 25.00, 80, 1),
('Smartband Fitness', 220.00, 25, 3),
('Livro Segurança da Informação', 65.00, 38, 2),
('Camiseta Gola V', 42.00, 60, 3),
('Pasta Sanfonada A4', 18.00, 70, 2),
('Livro Educação Financeira', 52.00, 40, 2),
('Caneta Nanquim Preta', 9.00, 100, 1),
('Fone de Ouvido com Case', 95.00, 30, 3),
('Papel Vegetal', 12.00, 80, 2),
('Livro História do Brasil Colonial', 55.00, 50, 2),
('Camisa Jeans Masculina', 85.00, 45, 3),
('Giz de Cera 12 Cores', 10.00, 140, 1),
('Livro Biomedicina', 60.00, 35, 2),
('Kit de Apontadores', 8.00, 110, 1),
('Caneta para Quadro Branco', 7.00, 90, 1),
('Livro Economia Aplicada', 62.00, 45, 2),
('Papel Couchê A4', 30.00, 100, 2),
('Livro Inteligência Artificial', 70.00, 30, 2),
('Notebook Acer Aspire', 3200.00, 10, 3),
('Camisa Polo Slim', 68.00, 50, 3),
('Marcador de Quadro Vermelho', 6.50, 100, 1),
('Livro Sociologia Crítica', 58.00, 40, 2),
('Mochila Universitária', 130.00, 25, 3),
('Fita Dupla Face', 4.80, 150, 1),
('Livro Administração Pública', 63.00, 35, 2),
('Lápis de Cor Neon', 18.00, 60, 1),
('Blusa de Moletom Canguru', 88.00, 35, 3),
('Livro Mecânica dos Fluidos', 72.00, 30, 2),
('Caderno Espiral 96 folhas', 17.00, 80, 2),
('Caneta Brush Pen Preta', 6.90, 100, 1),
('Mouse Silencioso', 95.00, 20, 3),
('Livro Química Experimental', 58.00, 40, 2),
('Camiseta Dry Fit', 52.00, 45, 3),
('Teclado Compacto', 78.00, 30, 3),
('Livro História da Filosofia', 59.00, 35, 2),
('Fone Intra-Auricular Bluetooth', 140.00, 25, 3),
('Apontador Elétrico', 45.00, 20, 1),
('Caneta Roller Azul Escuro', 4.80, 120, 1),
('Livro Lógica Matemática', 62.00, 35, 2);

