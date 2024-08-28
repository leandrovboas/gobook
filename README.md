# Meu uso de GoLang ( Golang Intensivo - FullCycle) 

![GitHub repo size](https://img.shields.io/github/repo-size/iuricode/README-template?style=for-the-badge) 

![GitHub language count](https://img.shields.io/github/languages/count/iuricode/README-template?style=for-the-badge) 

Nesse projeto fiz um CRUD em um api e implementei mais um método que busca um livro pelo nome e um que simula a leitura de um livro. 
Criei também um CLI que faz a busca do livro pelo nome e a simulação de leitura 

## 💻 Pré-requisitos 

Antes de começar, verifique se você atendeu aos seguintes requisitos: 

Como estou usando o DevContainer só teremos a necessidade de instalação do [Docker](https://docs.docker.com/desktop/) e da [extensão DevContainer](https://code.visualstudio.com/docs/devcontainers/containers), o Go e o Sqlite estão instalados direto dentro do container usado pelo DevContainer 

**Caso tenha interesse em saber mais sobre o DevContainer pode dar uma olhadinha nessas referencias 
[Dev Containers tutorial](https://code.visualstudio.com/docs/devcontainers/tutorial) 
[DevContainers: A combinação perfeita do Docker e VSCode](https://www.youtube.com/watch?v=fLJ0e4n1m_g&list=PLTAdONoqgQwgtRJUuoCJTY1AIM0jwLSia) 


## ☕ Executar Go Book 

Para executar API: 

```bash 
go run cmd/gobook/main.go  

``` 
Para testar a API temos um arquivo test.html, que faz uso da extensão RestClient no VSCode 


Para executar CLI pelo terminal: 

```bash
go run cmd/gobook/main.go search <nome_do_livro> 

go run cmd/gobook/main.go simulate <book_id> <book_id> ... 

``` 

Caso não tenha a tabela criada no banco de dados basta rodar  

```sql 
sqlite3 books.db 

CREATE TABLE IF NOT EXISTS books (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT NOT NULL, author TEXT NOT NULL, genre TEXT NOT NULL); 

.tables 
``` 

Temos um Dockerfile para criar a imagem caso queira testar dessa forma 
```bash 
docker build -t gobook . 

docker run -p 8080:8080 gobook 
``` 

#### Download do código fonte 
O código está disponível nesse repositório no GItHub para quem tiver interesse em dar uma olhada. 

Usando o Git 

```bash 

git clone https://github.com/leandrovboas/gobook.git 

``` 

## Licence 
Source code can be found on [github](https:github.com/leandrovboas/gobook), licenced under [MIT](http://opensource.org/licenses/mit-license.php). 

Developed by [Leandro Vilas Boas](https://br.linkedin.com/in/leandro-vilas-boas-55403b2b) 