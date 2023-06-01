// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/*
    REQUIREMENTS:
        1. Minting new tokens: The platform should be able to create new tokens and distribute them to 
            players as rewards. Only the owner can mint tokens.
        2. Transferring tokens: Players should be able to transfer their tokens to others.
        3. Redeeming tokens: Players should be able to redeem their tokens for items in the in-game store.
        4. Checking token balance: Players should be able to check their token balance at any time.
        5. Burning tokens: Anyone should be able to burn tokens, that they own, that are no longer needed.

*/

// imports from https://www.openzeppelin.com/contracts
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract DegenToken is ERC20, Ownable {

    constructor() ERC20("Degen", "DGN") {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function decimals() override public pure returns(uint8) {
        return 0;
    }


    function redeemTokens(uint num) public virtual returns(bool){
        if(num == 1) {
            uint256 price = 5;
            address spender = _msgSender();
            uint256 Balanceofspender = balanceOf(spender);
            require(Balanceofspender >= price, "Insufficient Tokens");
            _balances[spender] = Balanceofspender - price;
            return true;
        } else if(num == 2) {
            uint256 price = 10;
            address spender = _msgSender();
            uint256 Balanceofspender = balanceOf(spender);
            require(Balanceofspender >= price, "Insufficient Tokens");
            _balances[spender] = Balanceofspender - price;
            return true;
        } else if(num == 3) {
            uint256 price = 20;
            address spender = _msgSender();
            uint256 Balanceofspender = balanceOf(spender);
            require(Balanceofspender >= price, "Insufficient Tokens");
            _balances[spender] = Balanceofspender - price;
            return true;
        } else {
            return false;
        }
    }

    function listofMerch() public pure returns(string memory) {
        string memory list  = "1. Towel: 5 DGN,   2. Bag : 10 DGN,   3. Tshirt : 20 DGN";
        return list;
    }

    function burn(uint256 amount) public virtual {
        _burn(_msgSender(), amount);
    }
}
