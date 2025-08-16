## 1. Cálculo da Duração Média da Viagem

## a consulta foi usada para encontrar a duração média das viagens para cada grupo de ciclista (member e casual). O resultado ajudou a responder à pergunta de qual grupo utiliza as bicicletas por mais tempo.

## Comando SQL:

SELECT
    member_casual,
    AVG(EXTRACT(EPOCH FROM (ended_at - started_at))) AS avg_length_seconds
FROM (
    SELECT * FROM "202408-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202409-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202410-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202411-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202412-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202501-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202502-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202503-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202504-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202505-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202506-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202507-divvy-tripdata"
) AS all_trips
GROUP BY member_casual;

## NOTA: os resultados deram em segundos, mas depois eu converti eles em minutos decimais no tableau(campo calculado)


## 2. Contagem de Viagens por Tipo de Bicicleta
## Esta consulta foi usada para identificar qual tipo de bicicleta (classic, electric ou scooter) foi mais utilizado por cada grupo de ciclista.

## Comando SQL:

SELECT
    member_casual,
    rideable_type,
    COUNT(*) AS total_viagens
FROM (
    SELECT * FROM "202408-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202409-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202410-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202411-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202412-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202501-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202502-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202503-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202504-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202505-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202506-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202507-divvy-tripdata"
) AS all_trips
GROUP BY
    member_casual,
    rideable_type
ORDER BY
    member_casual,
    total_viagens DESC;


## 3. Contagem de Viagens por Dia da Semana

## Esta consulta foi usada para descobrir em quais dias da semana cada grupo de ciclista (member e casual) mais utiliza o serviço.

## Comando SQL:

SELECT
    member_casual,
    strftime(started_at, '%A') AS dia_da_semana,
    COUNT(*) AS total_viagens
FROM (
    SELECT * FROM "202408-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202409-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202410-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202411-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202412-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202501-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202502-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202503-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202504-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202505-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202506-divvy-tripdata"
    UNION ALL
    SELECT * FROM "202507-divvy-tripdata"
) AS all_trips
GROUP BY
    member_casual,
    dia_da_semana
ORDER BY
    member_casual,
    CASE dia_da_semana
        WHEN 'Sunday' THEN 1
        WHEN 'Monday' THEN 2
        WHEN 'Tuesday' THEN 3
        WHEN 'Wednesday' THEN 4
        WHEN 'Thursday' THEN 5
        WHEN 'Friday' THEN 6
        WHEN 'Saturday' THEN 7
    END;

