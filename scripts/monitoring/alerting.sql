-- Configuração para alertas de performance
SELECT
    datname AS '{{DB_NAME}}',
    usename AS '{{DB_USER}}',
    wait_event_type,
    wait_event,
    query
FROM pg_stat_activity
WHERE
    wait_event_type IS NOT NULL;

#!/bin/bash
# Carregar variáveis do .env
export $ (grep - v '^#'.env | xargs)
# Substituir placeholders no SQL e executar o script
envsubst < monitoring_template.sql | psql - U "$DB_USER" - h "$DB_HOST" - p "$DB_PORT" - d "$DB_NAME"