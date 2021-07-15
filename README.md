# mHealth_Lit_Review
Scripts to automate filtering for mHealth lit review

# Set Up Python Virtual Environment
python3 -m venv venv

source venv/bin/activate

pip install -r requirements.txt

# Repo Structure
There are two directories: data and scripts.

scripts/ contains all the bash, awk, and Python scripts you need to filter the results of a wget command to a clearing house.
At the moment, the initial commit only supports Psyberguide. 

data/ contains a wget script that will download all web files from a clearing house URL. I suggest letting the wget script write the results to the data directory so that the relative path structure in the scripts is preserved, but do what you will :)
