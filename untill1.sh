count=0
until false
do
  ((count++))
  if [[ $count -eq 5 ]]
  then
    continue
  elif [[ $count -ge 10 ]]
  then
    break
  fi
  echo "Counter = $count"
done
