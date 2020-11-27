#language: pt

Funcionalidade: Autenticação

    Contexto: Fazer login
        Dado que esteja na home
        Quando abrir Login
 
        Esquema do Cenário: Fazer Login
            Quando realizar login com "<email>" e "<senha>"
            Então deverá ser exibido o nome do usuário no header
 
            Exemplos:
                | email                          | senha    |
                | lgstvOliveira@gmail.com        | 777      | 
                | teste@aut.com                  | 888      | 
 
        Esquema do Cenário: Fazer Login Exception
            Quando realizar login com "<email>" e "<senha>"
            Então deverá ser exibida a mensagem de erro "<mensagem>"
 
            Exemplos:
                | email                          | senha    | mensagem                 |
                | lgstvOliveira@gmail.com        | 222      | Login ou senha inválida. |
                | teste@aut.com                  | 111      | Login ou senha inválida. |
                | teste@aut.com                  |          | Campo obrigatório.       |
                |                                | 888      | Campo obrigatório.       |

 
        Esquema do Cenário: Realizar Cadastro
            Quando realizar cadastro com "<nome>" e "<email>"
            E Preencher o formulário com "<cpf>" e "<data_nasc>" e "<telefone>" e "<senha>" 
            Então deverá ser exibido o nome do usuário no header
 
            Exemplos:
                | nome              | email              | cpf           | data_nasc  | telefone  | senha  |
                | Ricardo Santos    | test@automation    | 46441889056   | 01/01/2001 | 555555555 | 123321 |
                | Luiz gustavo      | aut@aut            | 46441889056   | 02/02/2002 | 666666666 | 456654 |
 
        Esquema do Cenário: Realizar Cadastro Exception
            Quando realizar cadastro com "<nome>" e "<email>"
            E Preencher o formulário com "<cpf>" e "<data_nasc>" e "<telefone>" e "<senha>" 
            Então deverá ser exibida a mensagem de erro "<mensagem>"
 
            Exemplos:
                | nome              | email              | cpf           | data_nasc  | telefone  | senha  | mensagem                    | 
                | Ricardo Santos    | asdasdasdasdas     | 46441889056   | 01/01/2001 | 555555555 | 123321 | E-mail inválido.            |
                | aut               | aut@aut            | 46441889056   | 02/02/2002 | 666666666 | 456654 | Campo inválido.             |
                | Luiz gustavo      |                    | 46441889056   | 02/02/2002 | 666666666 | 456654 | Campo obrigatório.          |
                | Luiz gustavo      | aut@aut            | 46441889056   | 02/02/2002 | 666666666 | 456654 | E-mail já cadastrado.       | 
                | Luiz gustavo      | test@automation    | 99999999999   | 02/02/2002 | 666666666 | 456654 | CPF inválido.               |
                | Ricardo Santos    | test@automation    | 46441889056   | 99/99/9999 | 555555555 | 123321 | Data de nascimento inválida.|