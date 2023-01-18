#! /bin/bash

# SPDX-FileCopyrightText: 2023 Davidson <twister@davidson.fr>
# SPDX-License-Identifier: GPL-3.0-or-later

WDIR=$( dirname -- "$0" )

write_import_Line() {
		echo "LOAD DATA LOCAL INFILE '/tmp/cache/${1##*/}' INTO TABLE mesures_originales FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 ROWS;" >> $2
}

# month 1
rm -f $WDIR/import_months_1.sql
for f in $WDIR/../../cache/FR_E2_2022-01-*.csv
do
		write_import_Line $f $WDIR/import_months_1.sql
done;

# month 2
rm -f $WDIR/import_months_2.sql
for f in $WDIR/../../cache/FR_E2_2022-02-*.csv
do
		write_import_Line $f $WDIR/import_months_2.sql
done;

# month 4 
rm -f $WDIR/import_months_4.sql
for f in $WDIR/../../cache/FR_E2_2022-03-*.csv
do
		write_import_Line $f $WDIR/import_months_4.sql
done;
for f in $WDIR/../../cache/FR_E2_2022-04-*.csv
do
		write_import_Line $f $WDIR/import_months_4.sql
done;

# month 8
rm -f $WDIR/import_months_8.sql
for f in $WDIR/../../cache/FR_E2_2022-05-*.csv
do
		write_import_Line $f $WDIR/import_months_8.sql
done;
for f in $WDIR/../../cache/FR_E2_2022-06-*.csv
do
		write_import_Line $f $WDIR/import_months_8.sql
done;
for f in $WDIR/../../cache/FR_E2_2022-07-*.csv
do
		write_import_Line $f $WDIR/import_months_8.sql
done;
for f in $WDIR/../../cache/FR_E2_2022-08-*.csv
do
		write_import_Line $f $WDIR/import_months_8.sql
done;
