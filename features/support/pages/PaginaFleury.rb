
class PaginaFleury
  include RSpec::Matchers
  include Capybara::DSL

  def acessar_pagina_inicial
    if has_no_selector?(ELEMENTS["div_pagina_fleury"], wait: 1)
      visit ("https://www.fleury.com.br/")
      sleep 1
    end

    begin
        assert_selector(ELEMENTS["div_pagina_fleury"])
    rescue
        $erro = "Nao carregou a pagina inicial"
        raise $erro
    end    
  end

  def acessar_rota_unidades
    sleep 3
    begin
        assert_selector(ELEMENTS["link_unidades"])
    rescue
        $erro = "Não carregou o link para acessar unidades"
        raise $erro
    end

    begin
        all(ELEMENTS["link_unidades"])[3].click
    rescue
        $erro = "Não foi possivel clicar no link para acessar unidades"
        raise $erro
    end
  end

  def filtrar_por_facilidade
    sleep 3
    begin
        assert_selector(ELEMENTS["select_facilidade"])
    rescue
        $erro = "Não carregou o select de filtragem por facilidade"
        raise $erro
    end

    begin
        within (ELEMENTS["select_facilidade"]) do
            find("div").click
        end
    rescue
        $erro = "Não foi possivel clicar no select de filtragem"
        raise $erro
    end
  end

  def selecionar_opcao

    sleep 3

    opcao_1 = ELEMENTS["opcao_acessibilidade"]
    opcao_2 = ELEMENTS["opcao_metro"]
    opcao_3 = ELEMENTS["opcao_bicicletario"]
    opcao_4 = ELEMENTS["opcao_noturno"]
    opcao_5 = ELEMENTS["opcao_shoppings"]
    opcao_6 = ELEMENTS["opcao_domingos"]
    opcao_7 = ELEMENTS["opcao_vacinacao"]

    array_opcoes = [opcao_1, opcao_2, opcao_3, opcao_4, opcao_5, opcao_6, opcao_7]

    opcoes_random = rand(1.. 3)

    for i in 0..opcoes_random -1
        opcao_escolhida = array_opcoes.sample
        find(opcao_escolhida).click
    end

    sleep 3
  end

  def selecionar_primeira_unidade
    sleep 3
    $unidade_resultado = all("h3")[0].text

    begin
        all("h3")[0].click
    rescue
        $erro = "Não foi possível clicar no primeiro resultado"
        raise $erro
    end
  end

  def verificar_igualdade
    sleep 3

    $unidade_pagina = find("h1").text

    begin
        $unidade_resultado = $unidade_pagina
    rescue
        $erro = "Não foi possível clicar no primeiro resultado"
        raise $erro
    end
  end
end