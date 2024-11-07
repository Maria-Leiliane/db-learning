-- monitoring_template.sql

-- Script SQL para monitoramento de desempenho
SELECT
    pid,
    datname AS '{{DB_NAME}}',
    usename AS '{{DB_USER}}',
    state,
    query,
    query_start,
    NOW() - query_start AS duration
FROM pg_stat_activity
WHERE
    state != 'idle'
ORDER BY duration DESC;

#!/bin/bash
# Carregar variáveis do .env
export $ (grep - v '^#'.env | xargs)
# Substituir placeholders no SQL e executar o script
envsubst < monitoring_template.sql | psql - U "$DB_USER" - h "$DB_HOST" - p "$DB_PORT" - d "$DB_NAME"