Komodo assets sync tests scripts for Windows 

Ported from https://github.com/KomodoPlatform/komodo/wiki/Test-komodo-source-from-jl777-branch-to-make-sure-all-the-assetchains-sync-from-scratch-properly

Have to put both to folder with executable Komodo-cli binaries.

1. Run first chains_run.ps1 - iniciate daemons for all chains 
2. Run chains_check.ps1 - checking current sync status (tickers list is hardcoded for now)

Better to run on powerful PC :)
