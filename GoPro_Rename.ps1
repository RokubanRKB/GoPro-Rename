#
# Rename GoPro's video filename to a organizable way
# May only works with HERO7 and HERO6 series
# Author: Rokuban
# verison: v1.0

$cnt = 0
$GX_file = Get-ChildItem -Filter "GX*.MP4"
Foreach ($file in $GX_file)
{
	$OrignalName = $file.basename
	$Chapter = $OrignalName.Substring(2, 2)
	$Number = $OrignalName.Substring(4, 4)
	$NewName = "GP" +  $Number + "_" + $Chapter + "X.MP4"
	echo "Rename $file to $NewName"
	Rename-Item -Path $file -NewName $NewName
	
	$cnt += 1
}

$GH_file = Get-ChildItem -Filter "GH*.MP4"
Foreach ($file in $GH_file)
{
	$OrignalName = $file.basename
	$Chapter = $OrignalName.Substring(2, 2)
	$Number = $OrignalName.Substring(4, 4)
	$NewName = "GP" +  $Number + "_" + $Chapter + "H.MP4"
	echo "Rename $file to $NewName"
	Rename-Item -Path $file -NewName $NewName

	$cnt += 1
}	
	

echo "Total $cnt files renamed."
echo ""
echo "Press Enter to exit..."
Read-Host