-- Script para manutenção de índices
REINDEX DATABASE ${DB_NAME};
VACUUM ANALYZE;
