#!/usr/bin/bash -l
#SBATCH -p short -c 96 --mem 16gb --out logs/unzip.log

CPU=96

parallel -j $CPU pigz -dc {} \> input/{/.} ::: $(ls pep/*.faa.gz)

