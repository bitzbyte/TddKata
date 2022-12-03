function Add-Numbers
{
    [CmdletBinding()]
    param(
        [Parameter(Position=1, ValueFromPipeline, ValueFromPipelineByPropertyName)]
        [string]
        $InputString = [string]::Empty
    )

    $SplitStr = [regex]::Split($InputString, '[^0-9\.]+')

    $Sum = 0
    
    foreach ($n in $SplitStr)
    {
        $Sum += [double] $n
    }

    # Return 0 when no input is provided
    Write-Output -InputObject $Sum
}
