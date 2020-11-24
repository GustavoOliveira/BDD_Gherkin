#language: pt
 
Funcionalidade: Pesquisar no Google
    Cenário: Pesquisar batata
        Dado que esteja no site Google
        Quando pesquisar por batata
        E ir na aba imagens
        E clicar na primeira imagem
        Então deverá ser exibido a imagem da batata 