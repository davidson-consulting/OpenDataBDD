<!--
SPDX-FileCopyrightText: 2023 Davidson <twister@davidson.fr>
SPDX-License-Identifier: CC-BY-NC-SA-4.0
-->

# OpenDataBDD

## About

The goal of this project is to provide a simple dataset for testing eco-rules and other practices.

So you have only to learn and be familiar with one *(actualy)* database schema for all the testing projects.

For scale effect, we want to be able to test differents BDD size: 250Mo, 500Mo, 1Go, 2Go, etc.

**WARN** It's a beta version without normalization of data into db


## Pollution agent (French open data set)

See: https://www.data.gouv.fr/fr/datasets/donnees-temps-reel-de-mesure-des-concentrations-de-polluants-atmospheriques-reglementes-1/

With this report we can get the required amount of datas and we can normalized by grouping values *(area/nature of pollution/...)*


## Installing

### Prerequists

We use docker & docker-compose so you need to install it

* Ubuntu: 
    * `sudo apt install docker-compose`
    * `sudo usermod -aG docker $USER`
    * `sudo apt install mysql-client` *if you want to access db from host*

### Downloading cvs into cache directory

* `./slurp_data.sh` *update this command with 1,2,4 or 8 months*

### Mysql

**WARN** You cannot use multiple bdd months as the same time *(so you need to stop the current one before starting another one)*

1. Create sql script to import data `./mysql/sql/create_import.sh`
1. Select the database that you want to run (ie: 1 month)
	1. First start
		* `cd mysql/polluants_1m/`
    	* `docker-compose up --build`
		* *You can explore database:* `mysql -u odtest -p -P 13306 -h 127.0.0.1 polluants`
		* *Login in container:* `docker exec -it opendatabdd-polluants-1m /bin/bash`
	1. Normal start
    	* `docker-compose up`
    1. Stopping
    	* `docker-compose down`
	1. Re-create
		* `sudo rm -rf ./mysql_data`
    	* `docker-compose up -d --build`

## License

This work is licensed under multiple licences. Because keeping this section
up-to-date is challenging, here is a brief summary:

- All original source code is licensed under GPL-3.0-or-later.
- All documentation is licensed under CC-BY-SA-4.0.
- Some configuration and data files are licensed under CC0-1.0.

For more accurate information, check the individual files.
