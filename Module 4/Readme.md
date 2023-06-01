# Final Project of Module 4

## Description
This is the final project for Module 4, presenting a smart contract that incorporates an ERC20 token and is successfully deployed on the Avalanche test network.

## Tasks Completed
The following tasks have been completed in this project:
1. Minting new tokens: The platform should be able to create new tokens and distribute them to players as rewards. Only the owner can mint tokens.


2. Transferring tokens: Players should be able to transfer their tokens to others.

3. Redeeming tokens: Players should be able to redeem their tokens for items in the in-game store.

4. Checking token balance: Players should be able to check their token balance at any time.

5. Burning tokens: Anyone should be able to burn tokens, that they own, that are no longer needed.

## How to Run the Project
To run the project, follow the instructions below:

1. GoTo (https://remix.ethereum.org/).
2. Open Remix IDE and create a new file under `Contracts` directory.
3. Copy and paste the code of the smart contract into the file.
4. Compile the smart contract using the Solidity compiler.
5. Open the network settings of your metamask wallet and add a new network.
6. Fill the details of Network as below:

        Network Name: Avalanche Fuji C-Chain
        New RPC URL: https://api.avax-test.network/ext/bc/C/rpc
        Chain ID: 43113
        Currency symbol: AVAX
        Block explorer URL: https://testnet.snowtrace.io/

7. In the deploy tab, choose the environment as `Injected Provider`
8. Deploy the smart contract on the testnet.
9. Test the smart contract by interacting with it using Remix IDE or other compatible tools. 
10. You will get the transaction log on https://testnet.snowtrace.io/

## Author
Me :)
