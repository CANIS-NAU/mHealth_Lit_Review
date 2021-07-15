#! /usr/bin/awk -f 

# Tab delimited files
BEGIN {FS="\t"}

# Filter by keyword. Assume all text is lowercase. 
{if($2 ~ /bot/ || $2 ~ /coach/ || $2 ~ /message/ || $2 ~ /comment/ || $2 ~ /chat\ room/ || $2 ~ /client/ || $2 ~ /community/ || $2 ~ /team/ ||$2 ~ /forum/ || $2 ~ /discussion/ || $2 ~ /feedback/ || $2 ~ /professional/ || $2 ~ /buddy/ || $2 ~ /chatbot/ || $2 ~ /friend/ || $2 ~ /\ ai\ / || $2 ~ /artificial\ intelligence/ || $2 ~ /counselor/ || $2 ~ /therapist/ || $2 ~ /provider/ || $2 ~ /mentor/){print $0; }}
