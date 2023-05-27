# Final Project of Module 2

## Description
This repository contains the final project for Module 2 of an Ethereum Smart Contract implementation. The smart contract allows users to mint ETH from their Metamask wallet through the frontend application.

## Tasks Completed
The following tasks have been completed in this project:
1. Smart contract has at least two functions.
2. Value of the functions from the smart contract are visible on the frontend of the application.

## How to Run Next/Hardhat Project
To run the project, follow the instructions below:
1. Clone the repository to your local machine by running the following command:

        $git clone <link of repo>
        
2. Make sure Node.js is installed.
3. In the project directory, open a terminal and run:

        $npm install
        
4. In a second terminal (new terminal) run:

        $npx hardhat node
        
5. In a third terminal (new terminal) run:

        $npx hardhat run --network localhost scripts/deploy.js
        
6. Back in the first terminal run:

        $npm run dev 
        
    to launch the frontend.
7. After this, the project will be running on your localhost. 
Typically at http://localhost:3000/

## Author
Me :)
