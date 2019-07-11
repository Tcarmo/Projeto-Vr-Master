Quando("Realizo um Get na API utilizando o CEP {string} válido.") do |cep|
    @resposta = URLCEP.get("/#{cep}/json")  
end

Então("Valido o retorno da API.") do
    expect(@resposta.code).to equal(200)
end

Então("exibo o código do IBGE.") do
  puts 'Código IBGE: ' + @resposta.parsed_response['ibge']
end

Quando("Realizo um Get na API dos correios utilizando o CEP {string} invalido.") do |cep|
  @resposta =  URLCEP.get("/#{cep}/json")
end

Então("Valido a mensagem de erro do retorno da API.") do
  expect(@resposta.body).to eql("<h3>ViaCEP Bad Request (400)</h3>")
  expect(@resposta.code).to equal(400)
end