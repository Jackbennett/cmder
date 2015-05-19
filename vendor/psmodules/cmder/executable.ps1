function New-Executable{
    Param(
        # Launcher folder location
        [Parameter(Mandatory=$true)]
        [string]$Path
    )

    Push-Location $Path

    & msbuild 'CmderLauncher.vcxproj','/p:configuration=Releaset'

    Pop-Location
}