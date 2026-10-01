            # language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login de autenticação na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que estou na página de login da EBAC-SHOP

            Cenário: Login com dados válidos
            Quando informo um usuário válido: gessica.com.br
            E informo uma senha válida: gessica.123
            E clico no botão de login
            Então devo ser direcionado para a tela inicial do sistema

            Cenário: Login com usuário inválido
            Quando informo um usuário inválido: Fernando.com.br
            E informo uma senha válida: Fernando.123
            E clico no botão de login
            Então devo ver a mensagem de alerta "Usuário ou senha inválidos"
            E devo permanecer na página de login

            Cenário: Login com senha inválida
            Quando informo um usuário válido: gessica.com.br
            E informo uma senha inválida: Fernando.123
            E clico no botão de login
            Então devo ver a mensagem de alerta "Usuário ou senha inválidos"
            E devo permanecer na página de login

            Cenário: Login com usuário e senha inválidos
            Quando informo um usuário inválido: miguel.com.br
            E informo uma senha inválida: miguel.4312
            E clico no botão de login
            Então devo ver a mensagem de alerta "Usuário ou senha inválidos"
            E devo permanecer na página de login

            Cenário: Login com campos em branco
            Quando deixo os campos de usuário e senha em branco
            E clico no botão de login
            Então devo ver a mensagem de alerta "Usuário ou senha inválidos"
            E devo permanecer na página de login

            Esquema do Cenário: Validar combinações de dados no login
            Quando informo o usuário "<usuario>"
            E informo a senha "<senha>"
            E clico no botão de login
            Então o resultado deve ser "<resultado>"

            Exemplos:
            |usuario|senha|resultado|
      
            |fernanda@ebac.com.br|Fernanda@123|"direcionado para a tela inicial"|
            |maria@ebac.com.br|maria@123| alerta "Usuário ou senha inválidos"|
            |renata@ebac.com.br|renata.765| alerta "Usuário ou senha inválidos"|
            |miguel@ebac.com.br |Miguel.326| alerta "Usuário ou senha inválidos" |
            |Campo em braco|Campo em branco| alerta "Usuário ou senha inválidos" |