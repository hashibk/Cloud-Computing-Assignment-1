mkdir -p Images Documents Archives Others

> report.txt

for file in *
do
	if [ -f "$file" ] && [ "$file" != "file_organizer.sh" ] && [ "$file" != "report.txt" ]
	then
		case "$file" in
			*.jpg|*.png)
				mv "$file" Images/
				echo "$file moved to Images/" >> report.txt
                		;;
            		*.pdf|*.txt)
				mv "$file" Documents/
                		echo "$file moved to Documents/" >> report.txt
                		;;
            		*.zip|*.tar)
                		mv "$file" Archives/
                		echo "$file moved to Archives/" >> report.txt
                		;;
            		*)
                		mv "$file" Others/
                		echo "$file moved to Others/" >> report.txt
                		;;
		esac
	fi
done

echo "File Organisation complete. Check report.txt for details."

