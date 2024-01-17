c:
diskpart.exe /s G:\BeHappy\script1.txt
bcdboot c:\Windows /f UEFI /s s:
bootrec /rebuildbcd
echo "Chckdsk press ENTER to continue or press CTRL+C to exit"
pause 
chkdsk c: /X /F
echo "Procedimento de restauracao concluido!!!"
