require 'savon'

client  = Savon.client(wsdl: 'http://localhost:10000/ValidaCNPJ?wsdl')

puts "Digite um CNPJ: "
cnpjj = gets

response = client.call(:is_cnpj, message: {cnpj:cnpjj.strip})

puts response.body[:is_cnpj_response][:return]