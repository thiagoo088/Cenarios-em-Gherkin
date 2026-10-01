🧪 Cenários de Testes em Gherkin — EBAC-SHOP

📋 Sobre o projeto

Este repositório reúne cenários de testes funcionais escritos em Gherkin, desenvolvidos durante meus estudos em QA e Engenharia de Qualidade de Software.

Os cenários foram elaborados para representar comportamentos esperados da plataforma EBAC-SHOP, utilizando diferentes situações de sucesso, erro, validação de campos e regras de negócio.

📁 Cenários desenvolvidos

🔐 Login
Cenários para validar a autenticação de clientes na plataforma.

Foram considerados:
- Login com usuário e senha válidos;
- Usuário inválido;
- Senha inválida;
- Usuário e senha inválidos;
- Campos de usuário e senha em branco;
- Diferentes combinações de usuário e senha utilizando Esquema do Cenário e Exemplos.

Arquivo: "login.feature"

---

👤 Tela de cadastro
Cenários para validar o processo de cadastro de clientes.

Foram considerados:
- Cadastro com todos os dados obrigatórios preenchidos;
- E-mail em formato inválido;
- Todos os campos vazios;
- Campo obrigatório não preenchido;
- Validação de diferentes formatos de e-mail utilizando Esquema do Cenário e Exemplos.

Arquivo: "cadastro.feature"

---

🛍️ Configuração de produto
Cenários para validar a configuração de produtos antes de adicioná-los ao carrinho.

Foram considerados:
- Seleção de tamanho, cor e quantidade;
- Adição do produto ao carrinho;
- Campos obrigatórios de cor e tamanho;
- Quantidade não informada;
- Limite máximo de 10 produtos por venda;
- Tentativa de adicionar mais de 10 produtos;
- Limpeza das seleções;
- Validação de diferentes quantidades utilizando Esquema do Cenário e Exemplos.

Arquivo: "configuracao.feature"

Conceitos praticados
- Feature / Funcionalidade
- Contexto (Background)
- Cenário (Scenario)
- Esquema do Cenário (Scenario Outline)
- Exemplos (Examples)
- Dado (Given)
- Quando (When)
- Então (Then)
- Cenários positivos e negativos
- Validação de campos obrigatórios
- Validação de dados de entrada
- Testes de limite
- Regras de negócio
- Reutilização de cenários com tabelas de exemplos


🎯 Objetivo
O objetivo deste projeto é demonstrar minha prática na elaboração e documentação de cenários de testes funcionais utilizando Gherkin, explorando diferentes condições de entrada e comportamentos esperados do sistema.
