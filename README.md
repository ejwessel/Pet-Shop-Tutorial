# Truffle Suite Pet Shop Tutorial
https://truffleframework.com/tutorials/pet-shop

## To Test
1. `truffle test` from project root

## To Run:
1. Open up Ganache
1. Run `truffle migrate` from project root 
1. Set up metamask account with 'custom RPC' pointing at HTTP://127.0.0.1:7545
1. open up local server by running `npm run dev` in project root
1. Play around with the adopt functionality

## To Clean:
1. Kill local server (cntl-C) 
1. Kill Ganache
1. Clean Deployed contracts `truffle network --clean` (_this step is important; otherwise truffle thinks it's deployed the contracts next time Ganache is started_)
