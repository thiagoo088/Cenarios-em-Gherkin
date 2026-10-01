            # language: pt

            Funcionalidade: Concluir cadastro
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que estou na página de cadastro da EBAC-SHOP

            Cenário: Cadastro com todos os dados obrigatórios preenchidos
            Quando preencho todos os campos obrigatórios marcados com asterisco
            E informo um e-mail com formato válido
            E clico no botão de cadastrar
            Então o cadastro deve ser concluído com sucesso
            E devo poder finalizar minha compra

            Cenário: Cadastro com e-mail em formato inválido
            Quando preencho todos os campos obrigatórios marcados com asterisco
            E informo um e-mail com formato inválido
            E clico no botão de cadastrar
            Então devo ver uma mensagem de erro informando que o e-mail é inválido
            E o cadastro não deve ser concluído

            Cenário: Cadastro com todos os campos vazios
            Quando deixo todos os campos em branco
            E clico no botão de cadastrar
            Então devo ver uma mensagem de alerta
            E o cadastro não deve ser concluído

            Cenário: Cadastro com um campo obrigatório vazio
            Quando preencho todos os campos obrigatórios, exceto o campo "<campo>"
            E clico no botão de cadastrar
            Então devo ver uma mensagem de alerta para o campo "<campo>"
            E o cadastro não deve ser concluído

            Esquema do Cenário: Validar formatos de e-mail
            Quando preencho todos os campos obrigatórios marcados com asterisco
            E informo o e-mail "<email>"
            E clico no botão de cadastrar
            Então o resultado deve ser "<resultado>"

            Exemplos:
            | email | resultado |

            | jessica@ebac.com.br  | cadastro concluído         |
            | jessicahbac.com.br   | mensagem de erro de e-mail |
            | jessica@             | mensagem de erro de e-mail |
            | @jeca.com.br         | mensagem de erro de e-mail |
            | jessicv@ebac         | mensagem de erro de e-mail |
            | jessika @ebac.com.br | mensagem de erro de e-mail |