#language: pt

Funcionalidade: Validar busca no site do Grupo Fleury


# Validação da pesquisa por unidades
@validar_busca
Cenario: Validar o nome da unidade que é exibida em tela ao efetuar busca por unidades
    Dado que estou na pagina inicial do site do grupo fleury
    Quando acesso o link de unidades
    E Efetuo filtragem de unidades por facilidade
    E Seleciono a primeira unidade que aparece como resultado de busca
    Então valido o nome da unidade