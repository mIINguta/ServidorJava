from suds.client import Client
url = "http://localhost:10000/ValidaCNPJ?wsdl"  
client = Client(url)
cnpj = input("Digite o CNPJ: ")
response= client.service.isCNPJ(cnpj)
print(response)



     
                  
