#language: pt
 
Funcionalidade: Favoritos
    Contexto: 
        Dado que esteja logado

        Cenário: Adicionar produto aos favoritos    
            Quando pesquisar por produto
            E abrir o primeiro produto
            E favoritar o produto
            Então o produto deverá ser favoritado

        Cenário: Visualizar produtos favoritos
            Quando acessar favoritos
            Então deverão ser mostrados os produtos favoritos