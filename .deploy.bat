@echo off
call npm run build

set destinationDirectory=C:\Users\ReneKarkkainen\GitHub\karkkainen.net

xcopy /D /Y /E "C:\Users\ReneKarkkainen\GitHub\Website-Tool\dist\" "%destinationDirectory%"
xcopy /D /Y /E "C:\Users\ReneKarkkainen\GitHub\Website-Tool\vanilla\" "%destinationDirectory%"

cd "%destinationDirectory%"

git add -A
git commit -m "Automatic Build Commit"

git push -u origin dev

echo Site build, copied and pushed to dev remote server successfully!
start https://github.com/JAAKKQ/karkkainen.net/compare/main...dev?expand=1

timeout /t 5
exit