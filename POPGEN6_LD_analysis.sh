#Beagle (phasing command)
java -jar -Xmx160g ../Programs/beagle.22Jul22.46e.jar impute=false 
gt=ALL_merged_chr18_3000000.VCF chrom=chr18 
out=ALL_merged_chr18_3000000.BEAGLE.VCF nthreads=8
 
# VCFtools commands
vcftools --gzvcf ALL_merged_chr18_3000000.BEAGLE.VCF.vcf.gz --thin 1000 
--remove-indels --maf 0.2 --max-alleles 2 --min-alleles 2 --max-missing 
0.9 --hap-r2 --out LD_Hmel218_ros --indv ros.CAM1841 --indv ros.CAM1880 
--indv ros.CAM2045 --indv ros.CAM2059 --indv ros.CAM2519 --indv 
ros.CAM2552 --indv ros.CJ2071 --indv ros.CJ531 --indv ros.CJ533 --indv 
ros.CJ546
vcftools --gzvcf ALL_merged_chr18_3000000.BEAGLE.VCF.vcf.gz --thin 1000 
--remove-indels --maf 0.2 --max-alleles 2 --min-alleles 2 --max-missing 
0.9 --hap-r2 --out LD_Hmel218_chi --indv chi.CAM25091 --indv chi.CAM25137 
--indv chi.CAM580 --indv chi.CAM582 --indv chi.CAM585 --indv chi.CAM586 
--indv chi.CJ553 --indv chi.CJ560 --indv chi.CJ564 --indv chi.CJ565
vcftools --gzvcf ALL_merged_chr18_3000000.BEAGLE.VCF.vcf.gz --thin 1000 
--remove-indels --maf 0.2 --max-alleles 2 --min-alleles 2 --max-missing 
0.9 --hap-r2 --out LD_Hmel218_tri --indv CAM40013 --indv CAM40100 --indv 
R_4266 --indv R_4303 --indv R_4311 --indv R_4410 --indv R_4413 --indv 
R_4523 --indv R_4525
vcftools --gzvcf ALL_merged_chr18_3000000.BEAGLE.VCF.vcf.gz --thin 1000 
--remove-indels --maf 0.2 --max-alleles 2 --min-alleles 2 --max-missing 
0.9 --hap-r2 --out LD_Hmel218_cyd --indv 1 --indv 2 --indv 3 --indv 4 
--indv 5 --indv 6 --indv 7 --indv C2_2 --indv C2_3
 
vcftools --gzvcf ALL_merged_chr18_3000000.BEAGLE.VCF.vcf.gz --thin 1000 
--remove-indels --maf 0.2 --max-alleles 2 --min-alleles 2 --max-missing 
0.9 --hap-r2 --out LD_Hmel218_cydtri --indv 1 --indv 2 --indv 3 --indv 4 
--indv 5 --indv 6 --indv 7 --indv C2_2 --indv C2_3 --indv CAM40013 --indv 
CAM40100 --indv R_4266 --indv R_4303 --indv R_4311 --indv R_4410 --indv 
R_4413 --indv R_4523 --indv R_4525
vcftools --gzvcf ALL_merged_chr18_3000000.BEAGLE.VCF.vcf.gz --thin 1000 
--remove-indels --maf 0.2 --max-alleles 2 --min-alleles 2 --max-missing 
0.9 --hap-r2 --out LD_Hmel218_roschi --indv ros.CAM1841 --indv ros.CAM1880 
--indv ros.CAM2045 --indv ros.CAM2059 --indv ros.CAM2519 --indv 
ros.CAM2552 --indv ros.CJ2071 --indv ros.CJ531 --indv ros.CJ533 --indv 
ros.CJ546 --indv chi.CAM25091 --indv chi.CAM25137 --indv chi.CAM580 --indv 
chi.CAM582 --indv chi.CAM585 --indv chi.CAM586 --indv chi.CJ553 --indv 
chi.CJ560 --indv chi.CJ564 --indv chi.CJ565
