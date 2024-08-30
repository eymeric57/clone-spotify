#!/usr/bin/sh

# Vérifier si la variable d'environnement MYSQL_DATABASE est définie
if [ -z "$MYSQL_DATABASE" ]; then
  echo "Erreur : La variable d'environnement MYSQL_DATABASE n'est pas définie."
  exit 1
fi

mariadb "$MYSQL_DATABASE" -uroot -p"$MYSQL_ROOT_PASSWORD" < /root/init.sql
echo "Restauration terminée"
