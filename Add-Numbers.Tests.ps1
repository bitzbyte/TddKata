BeforeAll {
    . $PSCommandPath.Replace('.Tests.ps1', '.ps1')
}

Describe "Add-Numbers" {
    It "Returns 0 when no input is provided" {
        Add-Numbers | Should -Be 0
    }
}
