# Script to set up a project directory to print out the sequence names
# Also to print out the sequence counts for each fasta files
# Initially created by Maggie Chen and Matthew Mcgregor
# on September 7,2018
# ychen254@dons.usfca.edu mmcgregor2@dons.usfca.edu

# Set up directory sturcture
echo "setting up directory structure"
echo "code data data/raw_data output"
mkdir code data data/raw_data output

#Downloads the 4 zip files
echo "Downloading the 4 zip files to data/raw_data directory...."
curl -L https://npk.io/NB6Y5a+ -o data/raw_data/sequence_data.zip

#unzip the files
echo "Unizping the files to data/raw_data directory..... "
unzip data/raw_data/sequence_data.zip -d data/raw_data/

# Pull out all of the sequence name from the fasta file
# and put them them into seperate text file in the output folder
echo "Extracting sequence name from each of the files"
grep ">" data/raw_data/animal_mRNA.fasta > output/sequence_names_animal_mRNA.txt
grep ">" data/raw_data/crab_mitochondrial_rRNA.fasta > output/sequence_names_crab_rRNA.txt
grep ">" data/raw_data/invertebrates_mRNA.fasta > output/sequence_names_invertebrates_mRNA.txt
grep ">" data/raw_data/plant_rRNA.fasta > output/sequence_names_plant_rRNA.txt

# Output sequence counts for each of the files
# and put them into seperate text file in the output folder
echo "Extracting sequence counts from each of the files"
