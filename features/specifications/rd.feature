#language: pt


Funcionalidade: CEP
    Validar operações da API CEP

    Cenário: Validar GET API codigo 200
        Dado uma requisição GET para o serviço CEP com logradouro
        Quando o serviço responder com status 200
        Então retorna uma lista de CEP

    Cenário: Validar GET API codigo 200
        Dado uma requisição GET para o serviço CEP com DD
        Quando o serviço responder com status 200
        Então retorna uma lista com DD correto 

    Cenário: Validar GET API codigo 200
        Dado uma requisição GET para o serviço CEP invalido
        Quando o serviço responder com status 200
        Então retorna uma lista com logradouro correto 

  