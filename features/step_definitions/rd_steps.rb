  Dado('uma requisição GET para o serviço CEP com logradouro') do
    require 'openssl'
    OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
    @response_cep = service.get_cep_mooca
  end

  Dado('uma requisição GET para o serviço CEP com DD') do
    require 'openssl'
    OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
    @response_cep = service.get_cep_itaquera
  end

  Dado('uma requisição GET para o serviço CEP invalido') do
    require 'openssl'
    OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
    @response_cep = service.get_cep_invalido
  end

  Quando('o serviço responder com status {int}') do |status_code|
    expect(@response_cep.code).to eq status_code
    end
    
  Então('retorna uma lista de CEP') do
    expect(@response_cep.message).not_to be_empty
    expect(@response_cep.code).to eq(200) 
    puts "cep :              #{@cep = @response_cep.parsed_response["cep"]}"
    puts "logradouro :       #{@logradouro = @response_cep.parsed_response["logradouro"]}"
    puts "complemento :      #{@complemento = @response_cep.parsed_response["complemento"]}"
    puts "bairro :           #{@bairro = @response_cep.parsed_response["bairro"]}"
    puts "localidade :       #{@cep = @response_cep.parsed_response["localidade"]}"
    puts "ddd :              #{@ddd = @response_cep.parsed_response["ddd"]}"   
  end

  Então('retorna uma lista com DD correto') do
    expect(@response_cep.message).not_to be_empty
    expect(@response_cep.code).to eq(200) 
    puts "cep :              #{@cep = @response_cep.parsed_response["cep"]}"
    puts "logradouro :       #{@logradouro = @response_cep.parsed_response["logradouro"]}"
    puts "complemento :      #{@complemento = @response_cep.parsed_response["complemento"]}"
    puts "bairro :           #{@bairro = @response_cep.parsed_response["bairro"]}"
    puts "localidade :       #{@cep = @response_cep.parsed_response["localidade"]}"
    puts "ddd :              #{@ddd = @response_cep.parsed_response["ddd"]}"  
  end

  Então('retorna uma lista com logradouro correto') do
    expect(@response_cep.message).not_to be_empty
    expect(@response_cep.code).to eq(200) 
    puts "cep :              #{@cep = @response_cep.parsed_response["cep"]}"
    puts "logradouro :       #{@logradouro = @response_cep.parsed_response["logradouro"]}"
    puts "complemento :      #{@complemento = @response_cep.parsed_response["complemento"]}"
    puts "bairro :           #{@bairro = @response_cep.parsed_response["bairro"]}"
    puts "localidade :       #{@cep = @response_cep.parsed_response["localidade"]}"
    puts "ddd :              #{@ddd = @response_cep.parsed_response["ddd"]}"  
  end

