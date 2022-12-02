function Add-Numbers
{
    [CmdletBinding()]
    param(
        [Parameter(Position=1, ValueFromPipeline, ValueFromPipelineByPropertyName)]
        [string]
        $InputString = [string]::Empty
    )

    $SplitStr = [regex]::Split($InputString, '\D+')

    $Sum = 0
    $Sum += $SplitStr | ForEach-Object { [int] $_ }

    # Return 0 when no input is provided
    Write-Output -InputObject $Sum
}
