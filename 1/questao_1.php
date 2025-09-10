<?php

function calcularTotalComDesconto(array $precos, float $desconto){
    $total = array_sum($precos);
    $totalDesconto = $total * (1 - $desconto);
    return $totalDesconto;
}

$values = [];
$desconto = 0.0;

while (true) {
    $input = readline("Digite um valor numérico (ou qualquer tecla para encerrar): R$ ");
    if (!is_numeric($input)){
        break;
    }
    $values[] = $input;
}
if (count($values) === 0){
    echo "Nenhum valor numérico foi inserido. Encerrando o programa.";
    exit;
}
while (true){
    $input = readline("Digite o valor de desconto (entre 0 e 1): ");
    if (!is_numeric($input) || $input < 0 || $input > 1){
        echo "Valor inválido. Digite novamente seguindo as instruções.";
    } else {
        $desconto = $input;
        break;
    }
}

$totalDesconto = calcularTotalComDesconto($values, $desconto);
echo "Valor total com desconto: R$ {$totalDesconto}";