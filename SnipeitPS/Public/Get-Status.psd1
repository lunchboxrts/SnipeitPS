function Get-Status()
{
    Param(
        [parameter(mandatory=$true)]
        [string]$url,

        [parameter(mandatory=$true)]
        [string]$apiKey
    )

    $result = Invoke-Method -URi "$url/api/v1/statuslabels" `
                  -Method GET `
                  -Token $apiKey

    $result
}