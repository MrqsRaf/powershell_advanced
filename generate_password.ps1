$length = 10 ## characters
$characters = 'abcdefghiklmnoprstuvwxyzABCDEFGHKLMNOPRSTUVWXYZ1234567890!"§$%&/()=?}][{@#*+'

function Get-RandomCharacters($length, $characters) { 
    $random = 1..$length | ForEach-Object { Get-Random -Maximum $characters.length } 
    $private:ofs="" 
    return [String]$characters[$random]
}

$password =  Get-RandomCharacters -length $length -characters $characters
Write-Host $password