// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

/*
    REQUIREMENTS:
        1. Contract successfully uses require()
        2. Contract successfully uses assert()
        3. Contract successfully uses revert() statements

*/

contract Sufficient_Balance {

    int cost;      // cost of an article
    int balance;   // balance


    function enterCost(int _c) public returns(int){
        cost = _c;      // input of cost
        return cost;
    }

    function enterBalance(int _b) public returns(int){
        balance = _b;   // input of balance
        return balance;
    }

    // using revert()
    function checkCost() public view {
        if(cost<0) {
            revert("Value of cost is Invalid!");
        } else {
            revert("Cost is correct");
        }
    }

    // uisng require()
    function checkBalance() public view {
        require(balance>=0, "Value of balance is Invalid!");
        revert("Balance is Correct");
    }

    // using assert()
    function checkPurchase() public view returns(bool){
        assert(balance>=0);
        assert(cost>=0);
        if(balance>=cost) {
            return true;        // item can be purcahsed
        } else {
            return false;       // item cannot be purschsed
        }
    }
}
