for($i=10;$i -lt 25;$i++){
$nfs3name = "nfs3team0"+$i
$nfs4name = "nfs4team0"+$i
$nfs3name1 = "nfs3team" + $i
$nfs4name1 = "nfs4team" + $i
if ($i -lt 10){
$path = "/shares/"+$nfs3name
$path1= "/shares/"+$nfs4name
    New-Datastore -VMHost cumulus6.sjsu.edu -Name $nfs3name -nfs -path $path -NfsHost 130.65.132.58
    New-Datastore -VMHost cumulus6.sjsu.edu -Name $nfs4name -nfs -path $path1 -NfsHost 130.65.132.59
    }
else{
    $path = "/shares/"+$nfs3name1
    $path1= "/shares/"+$nfs4name1
    New-Datastore -VMHost cumulus6.sjsu.edu -Name $nfs3name1 -nfs -path $path -NfsHost 130.65.132.58
    New-Datastore -VMHost cumulus6.sjsu.edu -Name $nfs4name1 -nfs -path $path1 -NfsHost 130.65.132.59
    }
}