<#
    REPLACE "PATH" WITH THE FOLDER WHERE FILES ARE LOCATED AND REPLACE "FILE_EX" WITH THE FILE EXTENSION
    AND DESTINY_PATH WITH THE OUTPUT FOLDER WHEN FILES ARE LOCATED
#>
Get-ChildItem -Path "PATH" -Include "*.FILE_EX" -Recurse |
Where-Object {$_.CreationTime -gt "dd/mm/aaaaa" -and $_.CreationTime -lt "dd/mm/aaaaa"} |
Copy-Item -Destination "DESTINY_PATH"