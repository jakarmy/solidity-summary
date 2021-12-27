// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MyContract {
    uint a;
    address admin;
    //Constructors can only be called once when the smart contract is deployed.
    constructor(uint _a) {
        //Initialize variables of your contract
        a = _a;
        admin = msg.sender;
        // you can call other functions from the constructor, but not the other way around.
        contractInit();
    }

    function contractInit() public {
        //do something
    }

    //admin is used to protect functions that should be called only by specific addresses

    //You can also use the keyword 'internal' for the constructor
    //This means that the contract cannot be deployed directly, but it can be called from another contract.
}

//Contract inheritance
contract MyParentContract {
    constructor(uint a) {
        //do stuff
    }
}

contract MyChildContract is MyParentContract {
    uint a;
    address admin;
    constructor(uint _a, address _address) MyParentContract(_a) {
        //this can be empty or you can do additional stuff
        a = _a;
        admin = _address;
    }
}