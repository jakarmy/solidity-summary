// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract BuiltinVariablesContract {
    // tx (transaction)
    tx.origin; //eth address that sent the transaction

    //msg (messages). Info on the calling environment
    msg.value; //amount of ether sent to the smart contract. Unit is wei
    msg.sender; //eth address that called the function

    //Example
    //Alice => Smart contract
    //tx.origin = Alice
    //msg.sender = Alice

    // but the smart contract can also call another smart contract
    //Alice => Smart contract      =>     smart contract B
    //tx.origin = Alice            =>     tx.origin = Alice
    //msg.sender = Alice           =>     msg.sender = smrt contract A

    //block. Info on blockchain blocks
    block.timestamp; //timestamp at which the block was mined
    
}