# Final Project of Module 3

## Description
This is the final project for Module 3, which implements a smart contract that creates a new token and allows only the owner to mint tokens in it. This contract also allows others users to transfer or burn tokens. The project provides a practical application of the concepts learned throughout the module.

## Tasks Completed
The following tasks have been completed in this project:
1. A new token is created on the local HardHat network.
2. Only contract owner should be able to mint tokens.
3. Any user can transfer tokens.
4. Any user can burn tokens.

## How to Run the Project
To run the project, follow the instructions below:
1. Make sure Node.js is installed.
2. Goto terminal create a new directory and initialise a hardhat project in it. Run the following command on terminal:

        $ mkdir NewProject
        $ cd NewProject
        $ npx hardhat

    Choose `>Create a JavaScript project` when prompted.

3. In the project directory, open a terminal and run:

        $ npm install
        $ npm install @openzeppelin/contracts
        
4. In a second terminal (new terminal) run:

        $ npx hardhat node
        
5. GoTo (https://remix.ethereum.org/).
6. Open Remix IDE and create a new file under `Contracts` directory.
7. Copy and paste the code of the smart contract into the file.
8. Compile the smart contract using the Solidity compiler.
9. In the deploy tab, choose the environment as `Dev - Hardhat Provider`
10. Deploy the smart contract on the testnet.
11. Test the smart contract by interacting with it using Remix IDE or other compatible tools. 

## Author
Me :)
