#language: pt
 
Funcionalidade: Entrega
    Contexto: 
        Dado que esteja logado
        E que possua endereço cadastrado
        E que esteja na tela de checkout

        Cenário: Selecionar endereço
            Quando selecionar endereço
            Então deverão ser exibidos os detalhes do endereço

        Cenário: Excluir endereço
            Quando excluir endereço
            Então o endereço deverá ser excluído

        Esquema do Cenário: Editar endereço
            Quando editar endereço com "<tipo_end>" e "<nome_destinatario>" e "<endereco>" e "<numero>" e "<bairro>" e "<estado>" e "<cidade>" 
            Então deverá ser alterado os dados do endereço

            Exemplos:
                | tipo_end | nome_destinatario | endereco           | numero | bairro | estado | cidade      |
                | casa     | Gustavo           | Av. 7 de Setembro  | 100    | Centro | RS     | Passo Fundo | 
                | trabalho | Gustavo           | Av. Brasil         | 200    | Centro | RS     | Passo Fundo | 
        
        Esquema do Cenário: Editar endereço Exception
            Quando editar endereço com "<tipo_end>" e "<nome_destinatario>" e "<endereco>" e "<numero>" e "<bairro>" e "<estado>" e "<cidade>" 
            Então deverá ser exibida a mensagem de erro "<mensagem>"

            Exemplos:
                | tipo_end | nome_destinatario | endereco           | numero | bairro | estado | cidade      | mensagem           |
                | casa     | Gustavo           |                    | 100    | Centro | RS     | Passo Fundo | Campo obrigatório. |
                | trabalho | Gustavo           | Av. Brasil         | 200    | Centro | RS     |             | Campo obrigatório. |

        Cenário: Escolher entrega
            Quando selecionar o tipo de entrega
            Então deverá ser atualizado o valor de frete

    Contexto: 
        Dado que esteja logado
        E que esteja na tela de checkout

        Esquema do Cenário: Cadastrar endereço
            Quando realizar cadastro com "<tipo_end>" e "<nome_destinatario>" e "<endereco>" e "<numero>" e "<bairro>" e "<estado>" e "<cidade>" 
            Então o endereço deverá ser cadastrado 

            Exemplos:
                | tipo_end | nome_destinatario | endereco           | numero | bairro | estado | cidade      |
                | vizinho  | Gustavo           | Av. 7 de Setembro  | 555    | Centro | RS     | Passo Fundo | 
                | casa 2   | Gustavo           | Av. Brasil         | 888    | Centro | RS     | Passo Fundo | 

        Esquema do Cenário: Cadastrar endereço Exception
            Quando realizar cadastro com "<tipo_end>" e "<nome_destinatario>" e "<endereco>" e "<numero>" e "<bairro>" e "<estado>" e "<cidade>" 
            Então deverá ser exibida a mensagem de erro "<mensagem>"

            Exemplos:
                | tipo_end | nome_destinatario | endereco           | numero | bairro | estado | cidade      | mensagem           |
                | vizinho  | Gustavo           | Av. 7 de Setembro  | 555    |        | RS     | Passo Fundo | Campo obrigatório. | 
                | casa 2   |                   | Av. Brasil         | 888    | Centro | RS     | Passo Fundo | Campo obrigatório. |    
            
        Cenário: Endereço não cadastrado
            Dado que não possua endereço cadastrado
            Então deverá ser exibido o formulário para cadastrar endereço