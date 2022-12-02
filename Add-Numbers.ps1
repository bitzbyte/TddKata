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
    
    foreach ($n in $SplitStr)
    {
        $Sum += [int] $n
    }

    # Return 0 when no input is provided
    Write-Output -InputObject $Sum
}
