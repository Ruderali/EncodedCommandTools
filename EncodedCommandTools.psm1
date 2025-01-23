function Convert-StringToEncodedCommand {
    param (
        [string]$Command
    )

    if (-not $Command) {
        throw "The Command parameter cannot be null or empty."
    }

    $Bytes = [System.Text.Encoding]::Unicode.GetBytes($Command)
    $EncodedCommand = [Convert]::ToBase64String($Bytes)
    return $EncodedCommand
}

function Convert-EncodedCommandToString {
    param (
        [string]$EncodedCommand
    )

    if (-not $EncodedCommand) {
        throw "The EncodedCommand parameter cannot be null or empty."
    }

    try {
        $Bytes = [Convert]::FromBase64String($EncodedCommand)
    } catch {
        throw "The EncodedCommand parameter is not a valid Base64 string."
    }

    $Bytes = [Convert]::FromBase64String($EncodedCommand)
    $Command = [System.Text.Encoding]::Unicode.GetString($Bytes)
    return $Command
}

function Convert-PS1FileToEncodedCommand {
    param (
        [string]$Path
    )

    if (-not $Path) {
        throw "The Path parameter cannot be null or empty."
    }

    if (-not (Test-Path -Path $Path)) {
        throw "The specified file path does not exist."
    }

    try {
        $content = Get-Content -Path $Path -Raw
    } catch {
        throw "Unable to read the file at $Path."
    }

    $content = get-content -path $path -Raw
    $EncodedCommand = Convert-StringToEncodedCommand -Command $content
    return $EncodedCommand
}

function Convert-EncodedCommandToPs1File {
    param {
        [string]$EncodedCommand
        [string]$Path
    }

    if (-not $EncodedCommand) {
        throw "The EncodedCommand parameter cannot be null or empty."
    }

    if (-not $Path) {
        throw "The Path parameter cannot be null or empty."
    }

    $content = Convert-EncodedCommandToString -EncodedCommand $EncodedCommand

    try {
        $content | Out-File -FilePath $Path -Force
    } catch {
        throw "Unable to write to the file at $Path."
    }
}