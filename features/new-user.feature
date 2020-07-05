#language: pt

Funcionalidade: Cliente
    Para que o usuário possa realizar compras, sendo que ele ainda não tem cadastro no site
    Posso cadastrar um novo cliente 

    @cadastro
    Esquema do Cenario: Cadastro de Cliente
        Dado que o usuário acessou o site de compras
        Quando realizar um cadastro informando <NovoCliente>
        Então devo validar se o usuário está logado no site

        Exemplos:
            |  NovoCliente  |
            | "ClientOne"   |
            | "ClientTwo"   |
            | "ClientThree" |
            | "ClientFour"  |
            | "ClientFive"  |

    @compras
    Esquema do Cenario: Compras
        Dado que o usuário realizou login <NovoUsuario>, clicou no link 'Women'
        Quando realizar a compra do produto <Produto>, quantidade <Quantidade>, tamanho <Tamanho>, cor <Cor> 
        E finalizar o pagamento com a opção <Pagamento>
        Então devo validar se a minha compra foi finalizada

        Exemplos:
           | NovoUsuario   |  Produto                      | Quantidade | Tamanho | Cor      | Pagamento          |  
           | "ClientOne"   | "Blouse"                      | "1"        | "S"     | "White"  | "Pay by bank wire" |
           | "ClientTwo"   | "Faded Short Sleeve T-shirts" | "2"        | "M"     | "Blue"   | "Pay by check"     |
           | "ClientThree" | "Blouse"                      | "3"        | "L"     | "Black"  | "Pay by bank wire" |
           | "ClientFour"  | "Faded Short Sleeve T-shirts" | "2"        | "M"     | "Orange" | "Pay by check"     |
           | "ClientFive"  | "Blouse"                      | "1"        | "S"     | "White"  | "Pay by bank wire" |
           
    @remover_produto_carinho
    Esquema do Cenário: Cancelar Compra
        Dado que o usuário realizou login <NovoUsuario>, clicou no link 'Women'
        Quando adicionou no carrinho de compras o produto <Produto>
        Então o cliente decidiu remover o produto do seu carrinho

         Exemplos:
           | NovoUsuario   |  Produto                      | 
           | "ClientOne"   | "Blouse"                      | 
           | "ClientTwo"   | "Faded Short Sleeve T-shirts" | 
           | "ClientThree" | "Blouse"                      | 
           | "ClientFour"  | "Faded Short Sleeve T-shirts" | 
           | "ClientFive"  | "Blouse"                      | 
           
        
    