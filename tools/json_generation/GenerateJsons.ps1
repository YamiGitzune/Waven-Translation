[Reflection.Assembly]::LoadFile("Newtonsoft.Json.dll")
$PSDefaultParameterValues['Out-File:Encoding'] = 'utf8'


$Pathlist = @(
    "Achievements",
    "Adventures",
    "Application",
    "Challenges",
    "CharacterSkins",
    "Companions",
    "Customizations",
    "CustomRules",
    "Effects",
    "Equipments",
    "Fight",
    "Gifts",
    "Gods",
    "Mechanisms",
    "Quest",
    "Resources",
    "Skills",
    "Spells",
    "Subtitles",
    "Summonings",
    "Tuto",
    "TutoBook",
    "Tutorial",
    "UI",
    "Weapons",
    "Worlds",
    "Zones"
    )

$y = 0
for($y = 0; $y -le $Pathlist.length-1; $y++)
{
$path = '.\'+$Pathlist[$y]+'.json'
$outpath = '.\Generation'
$outfile = $Pathlist[$y]+'.json'
$value = Get-Content $path -Encoding UTF8 -raw | Out-String | ConvertFrom-Json
$i = 0
$valueKey = $value.m_dataDictionary.m_keys
$valueText = $value.m_dataDictionary.m_values
$valuelength = $value.m_dataDictionary.m_keys.length - 1
$resultObject = New-Object -TypeName psobject

for($i; $i -le $valuelength; $i++) {$resultObject | Add-Member -MemberType NoteProperty -Name $valueKey[$i] -Value $valueText[$i]}
$resultObject = $resultObject | ConvertTo-Json | % { [System.Text.RegularExpressions.Regex]::Unescape($_) }
New-Item -Path $outpath -Name $outfile -ItemType "file" -Value $resultObject 

}
Write-Host "Finished Generating Files"