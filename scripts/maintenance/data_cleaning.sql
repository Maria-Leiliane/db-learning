-- Script para limpeza de dados antigos
DELETE FROM logs WHERE log_date < NOW() - INTERVAL '30 days';
