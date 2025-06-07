<?php 
echo "Teste GET /signos\n";
$response = file_get_contents("http://api:8000/signos");
$data = json_decode($response, true);
assert(count($data)===12);

echo "Todos os testes passaram com sucesso.\n";
