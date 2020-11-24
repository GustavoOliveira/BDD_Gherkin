#language: pt
 
Funcionalidade: Favoritos
    Contexto: 
        Dado que esteja logado
        E que esteja na home

        Cenário: Adicionar produto aos favoritos    
            Quando pesquisar por produto
            E abri o primeiro produto
            E favoritar o produto
            Então deverá ser alterado o ícone de favoritar

        Cenário: Visualizar produto favoritos
            Quando clicar em acesse seus favoritos
            Então deverá ser mostrado os produtos favoritos