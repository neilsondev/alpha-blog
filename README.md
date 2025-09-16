# Alpha Blog

Alpha Blog é um sistema simples de blog desenvolvido em Ruby on Rails, criado como parte de um curso de Ruby on Rails. O projeto permite que usuários se cadastrem, façam login, criem artigos e vinculem categorias a esses artigos.

## Funcionalidades

- Cadastro e login de usuários.
- Criação e edição de artigos.
- Vinculação de categorias aos artigos.
- Interface simples para visualização dos artigos e categorias.

## Requisitos

Para rodar o projeto, você precisa ter o seguinte instalado na sua máquina:

- Ruby 3.4.5
- Rails 8.0.2
- Node.js 24.5.0

### Instalar Node.js, Yarn e Nodemon

Se você não tem o Node.js e as ferramentas necessárias, siga estas instruções:

1. Instale o [Node.js](https://nodejs.org/) (ele já inclui o npm).
2. Instale o Yarn:
   ```bash
   npm install -g yarn
   ```

3. Instale o Nodemon:

   ```bash
   npm install -g nodemon
   ```

## Como rodar o projeto

1. Clone o repositório:

   ```bash
   git clone https://github.com/neilsondev/alpha-blog.git
   cd alpha-blog
   ```

2. Instale as dependências do Ruby e do Node.js:

   * Para instalar as dependências do Ruby:

     ```bash
     bundle install
     ```
   * Para instalar as dependências do Node.js:

     ```bash
     yarn install
     ```

3. Crie e migre o banco de dados:

   ```bash
   rails db:create
   rails db:migrate
   ```

4. Inicie o servidor de desenvolvimento:

   ```bash
   ./bin/dev
   ```

Isso irá iniciar o servidor e a aplicação estará disponível no seu navegador no `http://localhost:3000`.

## Contribuindo

Se você quiser contribuir com o projeto, fique à vontade para fazer um fork, criar uma branch, fazer suas modificações e enviar um pull request.

## Licença

Esse projeto está licenciado sob a [MIT License](LICENSE).
