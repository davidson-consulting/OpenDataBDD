#! /bin/bash

## Arguments

NB_MONTHS=$(($1))

if [[ ! $NB_MONTHS || ( $NB_MONTHS != 1  && $NB_MONTHS != 2 && $NB_MONTHS != 4 && $NB_MONTHS != 8 ) ]]; then
	echo "Usage: $0 nb-months 1, 2, 4 or 8"
	exit -1
fi


## creating folder

mkdir -p cache


## downloading

for (( m = 1; m <= $NB_MONTHS; m++ ))
do
	echo "Downloading month 2022-0$m in ./cache"
	wget -nc -r -nd --no-parent -A "FR_E2_2022-0$m-*.csv" -P cache/ https://files.data.gouv.fr/lcsqa/concentrations-de-polluants-atmospheriques-reglementes/temps-reel/2022/
done
