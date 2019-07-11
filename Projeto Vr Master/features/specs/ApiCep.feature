#language: pt
Funcionalidade: Api de retorno para consulta de CEP
    Esquema do Cenario: Realizar Get utilizando CEP valido e exibir codigo IBGE
        Quando Realizo um Get na API utilizando o CEP <CEP> válido.
        Então Valido o retorno da API.
        E exibo o código do IBGE.
    Exemplos:
    | CEP | 
    |'06414000'|
    |'11075301'|
    |'13414157'|
    Esquema do Cenario: Realizar Get utilizando um CEP invalido
        Quando Realizo um Get na API dos correios utilizando o CEP <CEP> invalido.
        Então Valido a mensagem de erro do retorno da API.
    Exemplos:
    | CEP | 
    |'110022556'|
    |'555555555'|
    |'666666666'|