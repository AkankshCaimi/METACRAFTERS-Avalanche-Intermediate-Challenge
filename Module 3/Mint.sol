// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

/*
    REQUIREMENTS:
        1. A new token is created on the local HardHat network.
        2. Only contract owner should be able to mint tokens.
        3. Any user can transfer tokens.
        4. Any user can burn tokens.

*/

// imports from https://www.openzeppelin.com/contracts
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Icarion is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("Icarion", "ICA") {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function transfer(address from, address to, uint256 amount) public {
        transferFrom(from, to, amount);
    }

    function burn(address from, uint256 amount) public {
        _burn(from, amount);
    }
}