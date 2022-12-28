#Powershell sees curly brackets as codeblocks so use quotations marks "{}" or just write your guids without them
C:\"Program Files"\LieberLieber\LemonTree.Automation\LemonTree.Automation.exe ConsistencyCheck --Model .\..\..\demosqlite.qeax
echo Exitcode $LASTEXITCODE
pause