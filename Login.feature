            # language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login de autenticação na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que estou na página de login da EBAC-SHOP

            Cenário: Login com dados válidos
            Quando informo um usuário válido, informo uma senha válida
            E clico no botão de login
            Então devo ser direcionado para a tela inicial do sistema

            Cenário: Login com usuário inválido
            Quando informo um usuário inválido, informo uma senha válida
            E clico no botão de login
            Então devo ver a mensagem de alerta "Usuário ou senha inválidos"

            Cenário: Login com senha inválida
            Quando informo um usuário válido, informo uma senha inválida
            E clico no botão de login
            Então devo ver a mensagem de alerta "Usuário ou senha inválidos"

            Cenário: Login com usuário e senha inválidos
            Quando informo um usuário inválido, informo uma senha inválida
            E clico no botão de login
            Então devo ver a mensagem de alerta "Usuário ou senha inválidos"

            Cenário: Login com campos em branco
            Quando deixo os campos de usuário e senha em branco e clico no botão de login
            Então devo ver a mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Validar combinações de dados no login
            Quando informo o usuário "<usuario>", informo a senha "<senha>"
            E clico no botão de login
            Então o resultado deve ser "<resultado>"

            Exemplos:
            |usuario|senha|resultado|
      
            |fernanda@ebac.com.br|Fernanda@123|"direcionado para a tela inicial"|
            |fernanda@ebac.com.br|fernanna@123| alerta "Usuário ou senha inválidos"|
            |fernAn1a@ebac.com.br|fernanda@123| alerta "Usuário ou senha inválidos"|
            |FernAn1a@ebac.com.br|Fernanna@123| alerta "Usuário ou senha inválidos"|
            |                    |            | alerta "Usuário ou senha inválidos"|