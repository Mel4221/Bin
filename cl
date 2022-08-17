#!/bin/bash
#this will be the script that will make sure that a library is 
#compiled and it is supposed to give me back a dll library by 
#defaulst
#sadly this script is only applicable under this machine 
#due to the simple fact that every single directory could 
#change , so is required an update in the directory system
#to make it to function in any machine 

#this will compile it with the dll from QuickTools
echo "Compiling the Main.cs file"; 
sleep 2; 
sudo csc "/home/mel/Documents/csharp/console/cs/main.cs" -r:"/home/mel/Documents/csharp/QuickTools/bin/Release/QuickTools.dll";
#now lets move this to the exe file with
echo "Moving it to the exe folder"; 
sleep 2; 
sudo mv -u main.exe /home/mel/Documents/csharp/console/exe/p.exe
#also we need a copy of the lastest QuickTools Version 
echo "Moving the lastest version from QuickTools to the exe folder";
sleep 2; 
sudo cp -u "/home/mel/Documents/csharp/QuickTools/bin/Release/QuickTools.dll" "/home/mel/Documents/csharp/console/exe/QuickTools.dll"
#this will make it as an executable file
echo "Making it an executable file"; 
sleep 2; 
sudo chmod a+x ~/Documents/csharp/console/exe/p.exe
sleep 1; 
echo "Done"; 
