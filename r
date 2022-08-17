#this is supposed to execute automatically the file as soon as it is finished the compiling process 
#so lests test it out by executing the file


while :
do



 	
#first it will compile the system
sudo  /home/mel/Documents/csharp/console/script/./c.sh
# this will  make sure that the program is exsecured 
sudo mono /home/mel/Documents/csharp/console/exe/p.exe
# this will sleep 3 seconds  to be executed 
sleep 2
echo "Compiled at " 
date 
done 
