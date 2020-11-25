#language: pt
 
Funcionalidade: Produto
    Cenário: Adicionar produto ao carrinho pela busca
        Dado que esteja na home 
        Quando buscar por computador
        E abrir o primeiro produto
        E adicionar ao carrinho
        Então o produto deverá ser adicionado no carrinho