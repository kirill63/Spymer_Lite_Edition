clear
echo "Spymer Lite Edition installer"
echo "Кто ты ?"
echo ""
echo "1) Termux"
echo "2) Другой Unix"
echo "3) iSH"
read numb
clear
if [ $numb = "1" ]
then
	pkg install python
	pkg install dos2unix
	cp ~/Spymer_Lite_Edition/main.py /data/data/com.termux/files/usr/bin/spymer
	dos2unix /data/data/com.termux/files/usr/bin/spymer
	chmod -R 777 ~/spymer
	chmod 777 /data/data/com.termux/files/usr/bin/spymer
	clear
	echo "Готово! (Чтобы запустить впишите spymer)"
else
	if [ $numb = "2" ]
	then
		if [ "$(whoami)" != 'root' ];
		then
			echo "У вас нет прав. Запустите install.sh с root правами (sudo sh ~/Spymer_Lite_Edition/install.sh)"
			exit
		else
			apt install python3 python3-pip dos2unix
			cp ~/Spymer_Lite_Edition/main.py /usr/bin/spymer
			dos2unix /usr/bin/spymer
			chmod 777 /usr/bin/spymer
			chmod -R 777 ~/spymer
			clear
			echo "Готово! (Чтобы запустить впишите spymer)"
		fi
	else
		if [ $numb = "3" ] 
		then
			apk add python
			apk add python3
			apk add dos2unix
			cp ~/Spymer_Lite_Edition/main.py /usr/bin/spymer
			dos2unix /usr/bin/spymer
			chmod 777 /usr/bin/spymer
			clear
			echo "Готово! (Чтобы запустить впишите spymer)"
		else
			clear
			echo "Некорректный ввод"
		fi
	fi
fi
