@echo off
call npm run build

set destinationDirectory=C:\Users\ReneKarkkainen\GitHub\karkkainen.net

xcopy /D /Y /E "C:\Users\ReneKarkkainen\GitHub\Website-Tool\dist\" "%destinationDirectory%"
xcopy /D /Y /E "C:\Users\ReneKarkkainen\GitHub\Website-Tool\vanilla\" "%destinationDirectory%"

cd "%destinationDirectory%"

git init
git add -A
git commit -m "Automatic Build Commit"

git push -u origin dev

echo Site build, copied and pushed to remote server successfully!

cmd /k
timeout /t 5
exit