# Relabs API

O Relabs API é uma api simples para os desafios de Flutter da Relabs.

## Setup

#### 1. Configurar o .env
Observe que na pasta raiz do nosso projeto existe um arquivo `.env.example` e que nele já existe algumas chaves que estão apenas aguardando valores.

Essas chaves já estão sendo utilizadas em alguns pontos da nossa aplicação, tudo o que precisamos fazer é criar uma cópia desse `.env.example`, e renomeá-la para `.env`.

#### 2. Popular os dados

```bash
$ docker compose run app bash -c "bundle exec rails db:reset"
```

#### 3. Rodar a aplicação

```bash
$ docker compose up app
```


## Endpoints
#### Endpoints de autenticação:

* POST /auth/sign_in
  * Autentica o usuário do paciente e retorna dados de acesso nos headers. São necessários o access-token, client e uid para acessar os endpoints protegidos. 
  * Payload:
  ```json
  {
    "email": "user@rebase.com",
    "password": "password"
  }
  ```

* GET /api/v1/exams
  * Retorna todos os exames do paciente atual.
  * Headers necessários:
  ```json
  {
    "access-token": "token",
    "client": "client",
    "uid": "uid",
  }
  ```

* GET /api/v1/exams/:id
  * Retorna um exame específico com resultados
  * Headers:
  ```json
  {
    "access-token": "token",
    "client": "client",
    "uid": "uid",
  }
  ```

