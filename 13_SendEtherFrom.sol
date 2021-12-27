// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SendEtherFromContract {
    // Make transfers from a smart contract to another address (external or another smart contract)
    // "payable" keyword in the parameter means the smart contract can send eth to that address
    
    address payable[] recipients; //payable addresses
    function sendEther(address payable recipient) external {
        recipient.transfer(1 ether);
        //transfer 1 ether from this smart contract to recipient

        address a = recipient; // note that we casted "payable address" to "address", which makes sense, but the opposite is not possible.
        a.transfer(100); // you lose access to the transfer function

        //msg.sender is type of address payable
        msg.sender.transfer(100);

        //difference between transfer and send
        recipient.send(1 ether); //returns true or false depending on whether the transaction on the recipient smart contract was successful.
        recipient.transfer(1 ether); //if there's an error in the recipient smart contract, that error propagates back to this smart contract's execution, and the whole operation is cancelled.

        //if you want to deal with an unsuccessful transation in your smart contract, use send
        //most of the time, transfer is the way to go
    }
}