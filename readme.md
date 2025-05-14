# EncodedCommandTools

**EncodedCommandTools** is a PowerShell module designed to simplify the process of encoding and decoding commands using Base64 encoding, making it easy to work with PowerShell's `-EncodedCommand` feature.

## Installation

You can install **EncodedCommandTools** from the powershell gallery with PowerShellGet [More info](https://aka.ms/InstallModule).
```powershell
Install-Module -Name EncodedCommandTools
```
Or download the module files and place them in your PowerShell modules directory (e.g., `C:\Program Files\WindowsPowerShell\Modules\EncodedCommandTools`).

## Usage

### Functions

This module provides the following functions:

- `Convert-StringToEncodedCommand`
- `Convert-EncodedCommandToString`
- `Convert-PS1FileToEncodedCommand`
- `Convert-EncodedCommandToPs1File`

### Examples

#### Convert a string to a Base64 encoded command

```powershell
$encoded = Convert-StringToEncodedCommand -Command "Write-Output 'Hello, Base64 World!'"
Write-Output $encoded
```

#### Convert a Base64 encoded command back to a string

```powershell
$decoded = Convert-EncodedCommandToString -EncodedCommand $encoded
Write-Output $decoded
```

#### Convert the content of a .ps1 file to a Base64 encoded command

```powershell
$encoded = Convert-PS1FileToEncodedCommand -Path "C:\Scripts\MyScript.ps1"
Write-Output $encoded
```

#### Convert a Base64 encoded command to a .ps1 file

```powershell
Convert-EncodedCommandToPs1File -EncodedCommand $encoded -Path "C:\Scripts\MyDecodedScript.ps1"
```

## Function Descriptions

### Convert-StringToEncodedCommand

Converts a string to a Base64 encoded command.

**Parameters:**
- `Command` (string): The string command to encode.
- `VerboseInfo`(switch): Appends character count for the encoded command.


**Example:**
```powershell
Convert-StringToEncodedCommand -Command "Write-Output 'Hello, Base64 World!'"
```

### Convert-EncodedCommandToString

Converts a Base64 encoded command back to a string.

**Parameters:**
- `EncodedCommand` (string): The Base64 encoded string to decode.

**Example:**
```powershell
Convert-EncodedCommandToString -EncodedCommand "dwByAGkAdABlAC0AaABvAHMAdAAgACIAQgBpAHIAZABzAGEAcgBlAG4AdAByAGUAYQBsACIA"
```

### Convert-PS1FileToEncodedCommand

Converts the content of a .ps1 file to a Base64 encoded command.

**Parameters:**
- `Path` (string): The path to the .ps1 file to encode.
- `VerboseInfo`(switch): Appends character count for the encoded command.

**Example:**
```powershell
Convert-PS1FileToEncodedCommand -Path "C:\Scripts\MyScript.ps1"
```

### Convert-EncodedCommandToPs1File

Converts a Base64 encoded command to a .ps1 file.

**Parameters:**
- `EncodedCommand` (string): The Base64 encoded string to decode and write to the file.
- `Path` (string): The path to the .ps1 file to create or overwrite.

**Example:**
```powershell
Convert-EncodedCommandToPs1File -EncodedCommand "dwByAGkAdABlAC0AaABvAHMAdAAgACIAQgBpAHIAZABzAGEAcgBlAG4AdAByAGUAYQBsACIA" -Path "C:\Scripts\MyDecodedScript.ps1"
```
## Verbose Output
The encode commands support an option -VerboseInfo switch that appends additional info about the encoded command if you're dealing with charater limits in your RMM
**Example:**
```powershell
Convert-StringToEncodedCommand -Command "Get-AdUser" -VerboseInfo
```
## Contributions

Contributions are welcome! Please feel free to submit a pull request or open an issue if you have any suggestions or bug reports.

## Contact

For any questions or support, please reach out to brookerowan@gmail.com.

---

Thank you for using **EncodedCommandTools**! We hope it makes interacting with Labtech/Automate bareable 😊 Thank you ChatGPT for making this Readme.md look so nice!
