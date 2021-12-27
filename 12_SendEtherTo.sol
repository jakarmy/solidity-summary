// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SendEtherToContract {
    mapping(address => uint) balances;

    //payable keyword allows the function to accept eth
    //payable functions cannot be "view"
    function invest() external payable {
        if(msg.value < 1000 || msg.value > 2 ether) {
            revert(); //rejects the transaction and cancels execution
        }
        balances[msg.sender] += msg.value;
    }

    function balanceOf() external view returns(uint){
        //"this" refers to the smart contract, and we're casting it to "address" type
        return address(this).balance;
    }
}