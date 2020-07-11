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
	cp ~/Spymer_Lite_Edition/main.py /data/data/com.termux/files/usr/bin/spymer2
	dos2unix /data/data/com.termux/files/usr/bin/spymer2
	chmod -R 777 ~/spymer2
	chmod 777 /data/data/com.termux/files/usr/bin/spymer2
	clear
	echo "Готово! (Чтобы запустить впишите spymer2)"
else
	if [ $numb = "2" ]
	then
		if [ "$(whoami)" != 'root' ];
		then
			echo "У вас нет прав. Запустите install.sh с root правами (sudo sh ~/spymer/install.sh)"
			exit
		else
			apt install python3 python3-pip dos2unix
			cp ~/Spymer_Lite_Edition/main.py /usr/bin/spymer2
			dos2unix /usr/bin/spymer2
			chmod 777 /usr/bin/spymer2
			chmod -R 777 ~/spymer2
			clear
			echo "Готово! (Чтобы запустить впишите spymer2)"
		fi
	else
		if [ $numb = "3" ] 
		then
			apk add python
			apk add python3
			apk add dos2unix
			cp ~/Spymer_Lite_Edition/main.py /usr/bin/spymer2
			dos2unix /usr/bin/spymer2
			chmod 777 /usr/bin/spymer2
			clear
			echo "Готово! (Чтобы запустить впишите spymer2)"
		else
			clear
			echo "Некорректный ввод"
		fi
	fi
fi
