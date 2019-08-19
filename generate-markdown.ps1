pushd $PSScriptRoot\docx\
ls | %{ pushd ..; $dirName = $_.Name.Substring(0,$_.Name.Length - 5); mkdir $dirName; pushd $dirName; pandoc --extract-media ./assets $_.FullName -o "$($_.Name).md" ; popd; popd;}
popd