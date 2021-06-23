Dado('acessar a tela inicial') do
# forma simplificada (muito códico pouco reuso)
  find_element(:id, "android:id/button1").click

  # Forma estruturada (melhor manutebilidade)
  acessar_screen.click_button_ok
end

Quando('Inserir os dado do tringulo {string} {string} {string}') do |lado1, lado2, lado3|
# forma simplificada (muito códico pouco reuso)
  # find_element(:id, "com.eliasnogueira.trianguloapp:id/txtLado1").send_key(lado1)
  # find_element(:id, "com.eliasnogueira.trianguloapp:id/txtLado2").send_key(lado2)
  # find_element(:id, "com.eliasnogueira.trianguloapp:id/txtLado3").send_key(lado3)
  # find_element(:id, "com.eliasnogueira.trianguloapp:id/btnCalcular").click


# Forma estruturada (melhor manutebilidade)
  # acessar_screen.fill_lado1(lado1)
  # acessar_screen.fill_lado2(lado2)
  # acessar_screen.fill_lado3(lado3)
  # acessar_screen.click_button_calcular

# Forma estruturada (melhor manutebilidade)
# OpenStruct 

  @lado = Dados.medidas(lado1,lado2,lado3,cpf)
  acessar_screen.fill_lado1(@lado.lado1)
  acessar_screen.fill_lado2(@lado.lado2)
  acessar_screen.fill_lado3(@lado.lado3)
  acessar_screen.fill_lado3(@lado.cpf)
  acessar_screen.click_button_calcular

end
Então('validar que o tringulo é "{string}"') do |tringulo|
  # resultado = find_element(:id, "com.eliasnogueira.trianguloapp:id/txtResultado").text
  # expect(resultado).to eql tringulo
  # print tringulo
  binding.pry
  # Forma estruturada (melhor manutebilidade)
  wait = Selenium::WebDriver::Wait.new :timeout => 20 
  wait.until { driver.find_element("com.eliasnogueira.trianguloapp:id/txtResultado").displayed? }

  expect(acessar_screen.resultado.text).to eql tringulo
  print tringulo
end