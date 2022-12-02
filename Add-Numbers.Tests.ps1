BeforeAll {
    . $PSCommandPath.Replace('.Tests.ps1', '.ps1')
}

Describe "Add-Numbers" {
    It "Returns 0 when no input is provided" {
        Add-Numbers | Should -Be 0
    }
}

Describe 'Add-Numbers 1' {
    It 'Returns 1 when 1 is provided' {
        Add-Numbers 1 | Should -Be 1
    }
}

Describe 'Add-Numbers "1,2"' {
    It 'Returns 3 when "1,2" is provided' {
        Add-Numbers '1,2' | Should -Be 3
    }
}