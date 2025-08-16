
# Análise Cyclistic bike-share

A Cyclistic bike-share é uma empresa (ficticia) de compartilhamento de bicicletas que oferece dois tipos principais de acesso: o plano de assinatura anual (members) e o passe único (casual riders). A empresa busca aumentar sua base de assinantes, pois os membros anuais representam um fluxo de receita mais estável e previsível.

O objetivo deste estudo é analisar o comportamento de uso das bicicletas entre membros e usuários casuais, identificando padrões que ajudem a direcionar estratégias de marketing e conversão.

Para isso, foram utilizados dados de viagens reais da Cyclistic bike-share, abrangendo informações sobre duração dos passeios, datas, dias da semana e tipo de usuário. A análise buscou responder às seguintes perguntas:
* Qual grupo utiliza as bicicletas por mais tempo?
* Em quais dias da semana cada grupo mais utiliza o serviço? 

A partir dessas respostas, será possível propor ações específicas para aumentar o número de assinaturas anuais e otimizar a comunicação com cada perfil de usuário.

Os dados foram tirados daqui: "https://divvy-tripdata.s3.amazonaws.com/index.html", foram pegos os dados “202408-divvy-tripdata” à “202507-divvy-tripdata” completando 12 meses.

## Metodologia

A análise foi realizada utilizando o DuckDB (SQL) como ferramenta principal para consulta, organização e processamento dos dados.

Inicialmente, todos os dados brutos referentes aos 12 meses foram importados e organizados no DuckDB, garantindo que as tabelas estivessem corretamente estruturadas. Antes da análise, foi realizado um processo completo de limpeza e preparação, que incluiu:
* Verificação de inconsistências para identificar e corrigir possíveis erros de digitação ou formatação.
* Cálculo da duração das viagens a partir da diferença entre os horários de início e término, convertendo os resultados para minutos.

Após a limpeza, foram realizadas consultas SQL para obter métricas e padrões relevantes, incluindo:
* Média de duração das viagens (em minutos) por tipo de usuário (member e casual).
* Volume de viagens por dia da semana, permitindo identificar diferenças de comportamento entre dias úteis e finais de semana.
* Tipos de bicicletas mais utilizadas por grupo de usuários.

Os resultados foram organizados e comparados de forma segmentada, possibilitando identificar tendências e padrões de uso ao longo dos 12 meses analisados. Essa abordagem garantiu uma análise precisa e confiável, servindo de base para as conclusões e recomendações apresentadas ao final do estudo.

Para a visualização e interpretação dos resultados, foi utilizado o Tableau, onde os dados processados no DuckDB foram exportados e organizados em gráficos. O principal recurso visual adotado foi o gráfico de barras na horizontal, permitindo comparar de forma clara e intuitiva as métricas entre os grupos analisados. Essa abordagem garantiu uma análise precisa e confiável, servindo de base para as conclusões e recomendações apresentadas ao final do estudo.

## Resultados Principais (Insights)

A análise dos dados ao longo dos 12 meses revelou padrões claros de comportamento entre os dois grupos de usuários (member e casual), tanto em relação ao tipo de bicicleta utilizada quanto à frequência e duração das viagens.

* **Tipo de bicicleta mais utilizado:**
    * O grupo member utilizou majoritariamente a bicicleta elétrica, com 2.062.788 viagens registradas.
    * O grupo casual também apresentou preferência pela bicicleta elétrica, com 1.180.081 viagens.
    * O segundo tipo de bicicleta mais utilizado por ambos os grupos foi a bicicleta clássica.
    * As scooters elétricas foram o meio menos utilizado, com 59.122 viagens pelos members e 85.215 viagens pelos casuals.

* **Tempo médio de uso:**
    * Usuários casual apresentaram média de duração das viagens de aproximadamente 23 minutos.
    * Usuários member tiveram uma média significativamente menor, de cerca de 12 minutos.

* **Distribuição das viagens por dia da semana:**
    * Usuários casual realizaram mais viagens nos finais de semana, com destaque para o sábado (cerca de 419 mil viagens).
    * Usuários member tiveram maior volume de viagens nos dias úteis, com pico na quinta-feira (aproximadamente 570 mil viagens).

 
 ## Conclusão

A análise dos dados revelou padrões claros de comportamento entre os grupos member e casual no uso dos diferentes tipos de veículos. Os members registraram maior número de viagens com bicicletas elétricas (2.062.788), seguidos pelas bicicletas clássicas, enquanto as scooters elétricas foram as menos utilizadas (59.122 viagens). O mesmo padrão foi observado entre os casuals, com destaque para as bicicletas elétricas (1.180.081 viagens) e menor uso das scooters (85.215 viagens).

Em relação ao tempo médio de uso, os casuals tendem a permanecer mais tempo com o veículo, com cerca de 23 minutos por viagem, enquanto os members utilizam por cerca de 12 minutos.

A análise por dia da semana mostrou que os casuals concentram suas viagens nos finais de semana, especialmente aos sábados, quando atingem aproximadamente 419 mil viagens. Já os members utilizam mais nos dias úteis, com pico às quintas-feiras, alcançando cerca de 570 mil viagens.

Esses insights indicam diferenças claras de perfil: o público casual busca mais lazer e passeios prolongados, enquanto os members mantêm um uso mais frequente e funcional, voltado para deslocamentos no dia a dia.


## Os Gráficos Interativos dos Insights:

* **Gráfico de quais bicicletas os membros mais utilizam:** [Link para o Gráfico](https://public.tableau.com/views/Tiposdebicicletasmaisusadosporgrupo12meses/Planilha2?:language=pt-BR&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)
* **Média de minutos sobre quais grupos mais andam de bicicletas:** [Link para o Gráfico](https://public.tableau.com/views/Mdiadequalgrupoandamaisdebicicletaminutos/Planilha2?:language=pt-BR&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)
* **Número total de viagens por dia da semana MEMBER vs CASUAL:** [Link para o Gráfico](https://public.tableau.com/views/NumerodeViagensPordiadasemana/Planilha2?:language=pt-BR&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)


## Recomendações e próximos passos

### Sugestões baseadas nos resultados:
* Desenvolver campanhas promocionais e de desconto voltadas especificamente para usuários casuais nos finais de semana, quando a demanda desse grupo é mais alta.
* Criar planos de assinatura flexíveis ou de curta duração (por exemplo, assinatura semanal ou mensal) para atrair usuários casuais que demonstram alto engajamento aos sábados e domingos.
* Oferecer incentivos para membros regulares utilizarem mais as bicicletas nos finais de semana, equilibrando a demanda ao longo da semana.

### Possíveis ações que a empresa poderia tomar:
* Implementar parcerias com eventos locais, parques e pontos turísticos para oferecer vantagens aos assinantes, incentivando usuários casuais a migrarem para o plano de membros.
* Melhorar a comunicação e marketing digital segmentado, usando redes sociais e notificações no app, focando nas diferenças de uso entre semana e fim de semana.
* Otimizar a disponibilidade de bicicletas em horários e regiões de maior demanda dos usuários casuais, especialmente aos sábados e domingos.
