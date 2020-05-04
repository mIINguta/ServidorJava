const soap = require("soap");
const url = "http://localhost:10000/ValidaCNPJ?wsdl";
const cnpj= {cnpj: '09407595000179'};
   soap.createClient(url, function (err,client) {
  client.isCNPJ(cnpj, function (err,result) {
    console.log(result);
  });
});