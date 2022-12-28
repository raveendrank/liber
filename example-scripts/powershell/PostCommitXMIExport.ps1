# Create the EA object
Echo "Create EA"
$ea = New-Object -ComObject "EA.Repository" -Strict
Echo "Created EA"
$ea.OpenFile("C:\Users\Administrator\Documents\GitHub\liber\demosqlite.qeax")

foreach($model in $ea.models) 
{ 
    echo $model.PackageGUID
}



$theProject = $ea.GetProjectInterface();
$theProject.ExportPackageXMI("{02BAEABD-6A12-4489-BCA3-8D33C05B81DB}",22,0,-1,0,0,"C:\Users\Administrator\Documents\GitHub\liber\export.xmi");
$ea.CloseFile()
$ea.Exit()