module URLCEP
    include HTTParty
    #url de para busca do cep
    base_uri 'https://viacep.com.br/ws'    
    format :json
    headers 'Content-Type': 'application/json'    
end