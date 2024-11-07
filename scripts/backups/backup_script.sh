#!/bin/bash

# Script para realizar backup de banco de dados
DB_NAME=${DB_NAME}
BACKUP_PATH=${BACKUP_PATH}
DATE=$(date +"%Y%m%d")

echo "Iniciando backup do banco de dados $DB_NAME..."
pg_dump -U meu_usuario -F c -b -v -f "$BACKUP_PATH/$DB_NAME-$DATE.backup" $DB_NAME
echo "Backup concluído: $BACKUP_PATH/$DB_NAME-$DATE.backup"
