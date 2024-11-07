#!/bin/bash

# Script para restaurar backup de banco de dados
DB_NAME=${DB_NAME}
BACKUP_FILE="$1"

if [ -z "$BACKUP_FILE" ]; then
    echo "Uso: $0 <caminho_do_arquivo_de_backup>"
    exit 1
fi

echo "Restaurando banco de dados $DB_NAME a partir do backup $BACKUP_FILE..."
pg_restore -U meu_usuario -d $DB_NAME -v "$BACKUP_FILE"
echo "Restauração concluída!"
