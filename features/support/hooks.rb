require "selenium-webdriver"
require "report_builder"

$num_cenario = 0

Before do |scn|
  @fleury = PaginaFleury.new
  Capybara.page.driver.browser.manage.window.maximize

end

After do |scn|
  
end

at_exit do
  
end
