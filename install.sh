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
	cp ~/Spymer_Lite_Edition/main.py /data/data/com.termux/files/usr/bin/spymer
	clear
	echo "Готово! (Чтобы запустить впишите python main.py)"
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
			clear
			echo "Готово! (Чтобы запустить впишите python main.py)"
		fi
	else
		if [ $numb = "3" ] 
		then
			apk add python
			apk add python3
			cp ~/Spymer_Lite_Edition/main.py /usr/bin/spymer
			clear
			echo "Готово! (Чтобы запустить впишите python main.py)"
		else
			clear
			echo "Некорректный ввод"
		fi
	fi
fi
