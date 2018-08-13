#Coins tickers input. Have to change to dynamic download.
$coins=@("REVS","SUPERNET","DEX","PANGEA","JUMBLR","BET","CRYPTO","HODL","MSHARK","BOTS","MGW","COQUI","WLC","KV","CEAL","MESH","MNZ","AXO","ETOMIC","BTCH","VOTE2018","PIZZA","BEER","NINJA","OOT","BNTN","CHAIN","PRLPAY","DSEC","GLXT","EQL","ZILLA","RFOX","VRSC");
$forked = $false

#Have to change path to obsolete.
foreach ($coin in $coins) {
   $cliJson = .\komodo-cli.exe /-ac_name=$coin getinfo | Out-String | ConvertFrom-Json
   $blocks = $cliJson.blocks
   $longest = $cliJson.longestchain

   If ($blocks -le $longest) {
       $forked = $true
       Write-Host "$coin Possible Fork! Blocks $blocks < LongestChain $longest"
       }
   else {
       Write-Host "$coin - Blocks $blocks = LongestChain $longest"
   }

   If ($forked -eq $false) {
       Write-Host "All coins are fine!"
   }
}
