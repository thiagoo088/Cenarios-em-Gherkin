            # language: pts

            Funcionalidade: Configurar produto e adicionar ao carrinho
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            e escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que estou na página de um produto da EBAC-SHOP

            Cenário: Adicionar ao carrinho com cor, tamanho e quantidade selecionados
            Quando seleciono um tamanho
            E seleciono uma cor
            E informo a quantidade "2"
            E clico em "Comprar"
            Então o produto deve ser inserido no carrinho
            E a quantidade no carrinho deve ser "2"

            Cenário: Tentar adicionar ao carrinho sem selecionar a cor
            Quando seleciono um tamanho
            E informo a quantidade "1"
            E clico em "Comprar"
            Então devo ver uma mensagem de campo obrigatório para a cor
            E o produto não deve ser inserido no carrinho

            Cenário: Tentar adicionar ao carrinho sem selecionar o tamanho
            Quando seleciono uma cor
            E informo a quantidade "1"
            E clico em "Comprar"
            Então devo ver uma mensagem de campo obrigatório para o tamanho
            E o produto não deve ser inserido no carrinho

            Cenário: Tentar adicionar ao carrinho sem informar a quantidade
            Quando seleciono um tamanho
            E seleciono uma cor
            E removo a quantidade informada
            E clico em "Comprar"
            Então devo ver uma mensagem de campo obrigatório para a quantidade
            E o produto não deve ser inserido no carrinho

            Cenário: Adicionar ao carrinho com o limite máximo de 10 produtos
            Quando seleciono um tamanho
            E seleciono uma cor
            E informo a quantidade "10"
            E clico em "Comprar"
            Então o produto deve ser inserido no carrinho
            E a quantidade no carrinho deve ser "10"

            Cenário: Tentar adicionar ao carrinho mais de 10 produtos
            Quando seleciono um tamanho
            E seleciono uma cor
            E informo a quantidade "11"
            E clico em "Comprar"
            Então devo ver uma mensagem informando que o limite é de 10 produtos por venda
            E o produto não deve ser inserido no carrinho

            Cenário: Limpar as seleções do produto
            Dado que selecionei um tamanho
            E selecionei uma cor
            E informei a quantidade "3"
            Quando clico no botão "Limpar"
            Então as seleções de tamanho e cor devem ser removidas
            E a quantidade deve voltar ao estado original

            Esquema do Cenário: Validar quantidades permitidas por venda
            Quando seleciono um tamanho
            E seleciono uma cor
            E informo a quantidade "<quantidade>"
            E clico em "Comprar"
            Então o resultado deve ser "<resultado>"

            Exemplos:
            | quantidade | resultado                       |
            | 1          | produto inserido no carrinho    |
            | 5          | produto inserido no carrinho    |
            | 10         | produto inserido no carrinho    |
            | 11         | mensagem de limite excedido     |
            | 0          | mensagem de quantidade inválida |