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
unzip data/raw_data/sequence_data.zip
