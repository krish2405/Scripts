#!bin/bash
if [[ $# -eq 0 ]]; then
    echo "Error: No input file provided."
    exit 1
fi
current_date=$(date +"%Y-%m-%d %H:%M:%S")

echo $current_date
echo $1
file=$1

error_count(){
	count=$(grep -i -e "ERROR" -e "failed" "$file" | wc -l) 
	echo "Error count is : $count"

 }

critical_event(){
     Lines=$(grep -i -n -e "CRITICAL" "$file" )
     count=$(grep -i -n -e "CRITICAL" "logfile.log" |awk 'BEGIN{count =0 } {count+=1}END{print(count)}')

     echo $Lines
     echo "critical event count is: $count"

}
top_error()
{
  top_error=$(grep -i -e "ERROR" -e "failed" logfile.log | awk 'NR<=5 {print}')
  echo "Top error : $top_error"
}
error_count
critical_event
top_error
