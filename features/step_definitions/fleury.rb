Dado("que estou na pagina inicial do site do grupo fleury") do
    @fleury.acessar_pagina_inicial    
end

Quando("acesso o link de unidades") do
    @fleury.acessar_rota_unidades
end

E("Efetuo filtragem de unidades por facilidade") do
    @fleury.filtrar_por_facilidade
    @fleury.selecionar_opcao
end

E("Seleciono a primeira unidade que aparece como resultado de busca") do
    @fleury.selecionar_primeira_unidade
end

Então("valido o nome da unidade") do
    @fleury.verificar_igualdade
end