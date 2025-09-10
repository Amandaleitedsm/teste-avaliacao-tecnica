# Teste de Avaliação Técnica

Este repositório contém as respostas ao Teste de Avaliação Técnica, com exercícios envolvendo PHP, SQL, HTML/JavaScript e habilidades comportamentais.

## Organização do projeto
- **Questão 1:** Função em PHP para aplicar desconto em lista de preços  
- **Questão 2:** Consulta SQL com JOIN e GROUP BY para somar vendas por produto  
- **Questão 3:** Página HTML/JavaScript simples com botão de interação  
- **Questão 4:** Criação de VIEW em SQL para relatório diário de vendas  
- **Questão 5:** Resposta dissertativa sobre resolução de problemas em PHP/Laravel

## Abordagem
- **Questão 1:** Foi priorizado nomear a função e as variáveis de forma clara para facilitar o entendimento. Busquei saber sobre a existência de uma função interna para facilitar a soma dos valores do array sem utilizar de muitas linhas (como aconteceria com laços de repetição) e encontrei a função interna "array_sum".  
- **Questão 2:** Usei "if not exists" para evitar conflitos com a possibilidade da existência do Database. Montei as tabelas de forma simples e lógica, além de criar cinco Inserts de dados para cada uma, permitindo testes rápidos. Para o select, usei o "left join" para garantir que o nome do produto antecedesse a quantidade e agrupei por nome para verificar por produto. Além disso, utilizei de SUM() para garantir que fossem somadas as quantidades por venda ao agrupar os produtos.
- **Questão 3:** Foi feito um HTML com CSS simples mas levemente atrativo, atribuindo IDs para os elementos dispostos na tela. Para o script, busquei os elementos pelo ID atribuído e criei uma função assíncrona para não impedir o fluxo do programa durante a execução do clique do botão.
- **Questão 4:** Para a base (criação do Database, tabelas e inserts) foi adotada a mesma lógica da questão 2. Já, para a criação da view, utilizei da função DATE() para ignorar a parte da hora em diante, deixando somente o dia, mês e ano. Sendo assim, facilitaria o agrupamento das vendas por dia.
- **Questão 5:** Na questão comportamental, busquei ser sincera sobre o meu passo a passo, mencionando desde a tentativa de desvendar o erro sozinha até utilizar de meios externos disponíveis para aprendizagem.
