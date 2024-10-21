# Projeto de Automação de APIs - Burger Eats

Este repositório contém a automação de testes para APIs RESTful utilizando Robot Framework, MongoDB, e RabbitMQ como serviço de mensageria. O projeto foi desenvolvido como parte de um curso focado na automação de testes de integração para operações CRUD (Create, Read, Update, Delete) utilizando as principais operações do protocolo HTTP: POST, GET, PUT, DELETE.

## 📚 Tecnologias Utilizadas

- **Robot Framework**: Framework de automação de testes.
- **RequestsLibrary**: Biblioteca utilizada para realizar as requisições HTTP.
- **MongoDB**: Banco de dados NoSQL para persistência e validação de dados.
- **RabbitMQ**: Serviço de mensageria utilizado para comunicação entre os sistemas.
- **Python**: Utilizado para criação de métodos de geração de dados dinâmicos (factories).

## 📋 Estrutura dos Testes

O projeto foi estruturado em cenários de teste cobrindo operações CRUD para a entidade "Parceiros Comerciais". A seguir, estão os casos de teste implementados:

### Cenários para o método POST:
- **CT-01**: Criar um novo parceiro com sucesso.
- **CT-02**: Retornar erro ao tentar criar um parceiro com nome duplicado.

### Cenários para o método GET:
- **CT-01**: Listar todos os parceiros cadastrados.
- **CT-02**: Buscar um parceiro pelo nome.

### Cenários para o método DELETE:
- **CT-01**: Remover um parceiro existente com sucesso.
- **CT-02**: Retornar erro 404 ao tentar remover um parceiro que não existe.

### Cenários para o método PUT:
- **CT-01**: Habilitar um parceiro existente.
- **CT-02**: Desabilitar um parceiro existente.
- **CT-03**: Retornar erro 404 ao tentar habilitar um parceiro inexistente.
- **CT-04**: Retornar erro 404 ao tentar desabilitar um parceiro inexistente.

## 🛠 Funcionalidades Implementadas

- **Integração com MongoDB**: Operações de inserção, exclusão e consultas diretamente no banco de dados usando a biblioteca `RobotMongoDBLibrary`.
- **Integração com RabbitMQ**: Validação de emails na fila de eventos usando RabbitMQ como serviço de mensageria.
- **Factories em Python**: Geração de dados dinâmicos e consistentes para os parceiros comerciais nas requisições, evitando duplicidade e cobrindo diferentes cenários de teste.

## 🏗 Estrutura do Projeto

- `tests/`: Contém os arquivos de teste em Robot Framework.
- `factories/`: Contém métodos em Python para geração de dados dinâmicos.
- `resources/`: Arquivos de suporte, como variáveis e bibliotecas.

## 📊 Resultados Obtidos

- Desenvolvimento de 10 casos de teste cobrindo operações CRUD.
- Integração direta com MongoDB para validação dos dados no banco.
- Validação de email na fila de eventos do RabbitMQ.
- Automação dos testes utilizando Robot Framework e a `RequestsLibrary` com dados em formato JSON, gerados dinamicamente por factories Python.

## 📎 Links Úteis

- [Documentação do Robot Framework](https://robotframework.org/).
- [Documentação da RequestsLibrary](https://robotframework-requests.netlify.app/).
- [Documentação do MongoDB](https://www.mongodb.com/docs/).
- [Documentação do RabbitMQ](https://www.rabbitmq.com/documentation.html).

## 📬 Contato

- [LinkedIn](https://www.linkedin.com/in/vinicius-ramos95/)
- [GitHub](https://github.com/Vini-Franca)

