#!/bin/sh
#SBATCH --job-name=PlantHeight
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=60:00:00
#SBATCH --mem=50G
#SBATCH --error=PlantHeight.err
#SBATCH --output=PlantHeight.out
#SBATCH --licenses=common
#SBATCH --partition=jclarke
GEMMA -bfile /common/jyanglab/zhikaiyang/projects/mediation-analysis/largedata/geno_282/allchr_bisnp_n282_snpid_maf01_geno2 -k Centered_IBS_kinship_GEMMA.txt -c PCA.txt -p phenotype_282_GEMMA.txt -lmm 4 -n 23 -o PlantHeight -miss 0.9 -r2 1 -hwe 0 -maf 0.01