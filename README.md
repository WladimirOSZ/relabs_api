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
  * Autentica um usuário e retorna um token de acesso.
  * Payload:
  ```json
  {
    "email": "user@rebase.com",
    "password": "password"
  }
  ```
