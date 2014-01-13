#!/bin/bash
LANG="en"
if [[ -z $1 ]]; then
  echo -e "No argument given. \nUsage: wiki QUERY "
else
  var=$(echo $* | sed 's/ /_/g')
  wiki_data=$(curl -s "http://"$LANG".wikipedia.org/w/api.php?format=json&action=query&prop=extracts&exintro&explaintext&titles="$var"&redirects" | jq '.query.pages | to_entries[0] | .value.extract')
  #echo "http://"$LANG".wikipedia.org/w/api.php?format=json&action=query&prop=extracts&exintro&explaintext&titles="$var"&redirects"
  echo -e ${wiki_data:1:${#wiki_data}-2}
fi