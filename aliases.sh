# alias pour installer une librairie composer
alias ccomposer='docker-compose run --rm $(docker ps --format '{{.Names}}' | grep apache) composer'

# alias pour utiliser le wizard symfony
alias cconsole='docker-compose run --rm $(docker ps --format '{{.Names}}' | grep apache) symfony console'

# alias pour entrer dans le container npm
alias nnpm='docker-compose exec $(docker ps --format '{{.Names}}' | grep apache) bash'

# alias pour exporter un snap de la base de données
alias db-export='sudo docker exec $(docker ps --format '{{.Names}}' | grep mariadb) /root/backup.sh'

# alias pour importer un snap de la base de données
alias db-import='sudo docker exec $(docker ps --format '{{.Names}}' | grep mariadb) /root/restore.sh'