#!/bin/bash

# Define variables
github_repo="https://github.com/DillaDeborah/GROUP-E-BIOINFO-PRO"
output_csv="Group_E_File.csv"
temp_dir="Group_E_Folder"

rm -f $output_csv

# Clone the GitHub repository
echo "Cloning repository..."
git clone $github_repo $temp_dir
cd $temp_dir

# Run Python script and append to CSV
echo "Running Bilkisu's Python script..."
echo "Group E" >> $output_csv
echo "Project,Name ,Email, Slack Username, Area of interest" >> $output_csv
echo "python,Bilkisu Yusuf ,balkisu yusuf221@gmail.com ,@balkisu yusuf,Bioinformatics">> $output_csv


# Compile and run C++ script and append to CSV
echo "Compiling and running zailani's C++ script..."
gcc zailani.c -o script_c++
c++_script_output=$(./script_c++)
echo "C++,Deborah Dilla, dillajimruna18@gmail.com,@Dilla Deborah,Biotechnology">> $output_csv

# Run R script and append to CSV
echo "Running R script..."
echo "R language,Favour Isaac,Favourabajue@gmail.com,@favour isaac Paul,functional genomics">> $output_csv

# Compile and run Java script and append to CSV
echo "Compiling and running Java script..."
javac Imam Ibrahim.js
java_script_output=$(java Imam)
echo " Javascript,Ibrahim Imam Ibrahim,imamibrahim259@gmail.com,@khaleeel004,Data analysis">> $output_csv


# Run HTML script and append to CSV
echo "Running HTML script..."
mcs Courage Hussaini
HTML_output=$(mono Courage.exe)
echo " HTML,Courage Hussaini,jonklevah@gmail.com,@Anchorage,Genomics">> $output_csv

# Clean up
cd ..



echo "CSV file generated: $output_csv"