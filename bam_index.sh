#!/bin/bash

#This script will use samtools from docker to create an index of any local bam files that end with .bam.


docker pull biocontainers/samtools:v1.9-4-deb_cv1

docker run -it -v $(pwd):/data biocontainers/samtools:v1.9-4-deb_cv1

samtools index *.bam

exit
