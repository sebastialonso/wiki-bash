#!/bin/bash
LANG="en"
if [[ -z $1 ]]; then
  echo -e "No argument given. \nUsage: wiki QUERY "
else
  var=$(echo $* | sed 's/ /_/g') #Transforms 'One Time' to 'One_Time'
  wiki_data=$(curl -s "http://"$LANG".wikipedia.org/w/api.php?format=json&action=query&prop=extracts&exintro&explaintext&titles="$var"&redirects" | jq '.query.pages | to_entries[0] | .value.extract')
  data=$(echo $wiki_data | sed 's/\\\"/"/g') #Eliminates \" characters
  if [[ $data = "null" ]]; then
    echo "Nothing to fetch. Check your arguments (write it wrong maybe?)."
  else
    url=https://en.wikipedia.org/wiki/$var
    echo -e ${data:1:${#data}-2}"\n"
    echo "See more on "$url
  fi
fi