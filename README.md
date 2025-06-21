# GraphQLApi
[Em desenvolvimento...]

API backend em C# utilizando ASP.NET Core e HotChocolate para fornecer uma interface GraphQL.  
Integração com banco de dados SQL Server via Entity Framework Core.

---

## ✨ Funcionalidades

- Consultas (Queries) para categorias, produtos, clientes, vendas, etc.  
- Suporte a filtros, paginação e ordenação com HotChocolate.  
- Modelo de dados baseado em tabelas relacionais no SQL Server.  
- Estrutura modularizada com separação clara entre Data, Models e GraphQL (Queries/Mutations).  

---

## 🧰 Tecnologias Utilizadas

- [.NET 8](https://dotnet.microsoft.com/en-us/)  
- [ASP.NET Core](https://docs.microsoft.com/en-us/aspnet/core/)  
- [HotChocolate](https://chillicream.com/docs/hotchocolate) (GraphQL para .NET)  
- [Entity Framework Core](https://docs.microsoft.com/en-us/ef/core/)  
- SQL Server  

---

## 🚀 Como rodar o projeto

### 1. Clone o repositório:

```bash
git clone https://github.com/seuusuario/GraphQLApi.git
cd GraphQLApi
```

### 2. Crie o banco de dados

Execute o script SQL localizado em:

```
database/graphQL_script.sql
```

### 3. Configure a string de conexão

No arquivo `appsettings.json`, configure a string de conexão para o seu SQL Server:

```json
{
  "ConnectionStrings": {
    "DefaultConnection": "Server=SEU_SERVIDOR;Database=GraphQLDb;Trusted_Connection=True;"
  }
}
```

### 4. Execute o projeto

```bash
dotnet run
```

### 5. Acesse o Playground do GraphQL

```
https://localhost:5001/graphql
```

---

## 🗂️ Estrutura do projeto

```
GraphQLApi/
│
├── database/               # Script SQL para criação das tabelas
│   └── graphQL_script.sql
│
├── GraphQLApi/             # Código fonte do projeto
│   ├── Data/               # DbContext e configurações do EF Core
│   ├── GraphQL/            # Queries e Mutations GraphQL
│   ├── Models/             # Classes de domínio (Categoria, Produto, Cliente, etc)
│   ├── Program.cs          # Configuração e inicialização da aplicação
│   └── README.md           # Documentação do projeto
```

---
