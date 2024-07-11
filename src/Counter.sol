// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin-contracts-4.9.0/access/Ownable.sol";

//TODO: Deploy an app where users can interact with this smart contract. 
//TODO: Display myNumber for the connected wallet. 
//TODO: Display number
//TODO: Display error message for unauthorized usage of setNumber()
//TODO: Share the Github repo
// Do not use any external APIs or backend. Everything should be done on Frontend!

contract Counter is Ownable {
    uint256 private number;

    mapping(address => uint256) public myNumber;
    
    function setMyNumber(uint256 _newNumber) public {
        myNumber[msg.sender]=_newNumber;
    }

    function setNumber(uint256 newNumber) public onlyOwner {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}


