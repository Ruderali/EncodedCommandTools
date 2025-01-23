@{
    RootModule = 'EncodedCommandTools.psm1'

    ModuleVersion = '1.0.0'

    CompatiblePSEditions = @('Core', 'Desktop')

    GUID = '5a5a89a2-447d-4645-9f6a-c2c0c92483c2'

    Author = 'Rowan Brooke'

    CompanyName = 'N/A'

    Copyright = '(c) Rowan Brooke. All rights reserved.'

    Description = 'Module to encode and decode PowerShell commands.'

    PowerShellVersion = '5.1'

    RequiredModules = @()

    RequiredAssemblies = @()

    FunctionsToExport = @('Convert-StringToEncodedCommand', 'Convert-EncodedCommandToString', 'Convert-PS1FileToEncodedCommand', 'Convert-EncodedCommandToPs1File')

    CmdletsToExport = @()

    VariablesToExport = @()

    AliasesToExport = @()

    DscResourcesToExport = @()

    FileList = @()

    PrivateData = @{

    }
}
