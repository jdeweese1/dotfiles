domains=$(defaults domains | sed 's/,/\n/g' | grep apple)
for line in $domains
do
  cleaned_name=$(echo $line | sed 's/\./_/g')
  echo $cleaned_name
  defaults read $line > "defaults_${cleaned_name}"
done
