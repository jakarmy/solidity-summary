// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract EventsContract {
    //for events, use camelcase
    //events are like structs
    //events are like notifications that are sent out and consumers listening to them will receive them
    event NewTrade (
        uint date,
        address indexed sender, 
        address recipient,
        uint amount
    );
    //indexed keyword allows consumers to filter events by that entry.
    //this is more expensive to run since the network needs to build an index for these events
    //you can add up to 3 indexed entries

    function trade(address to, uint amount) external {
        //triggering the event
        //consumers listening to this event will get the message
        emit NewTrade(block.timestamp, msg.sender, to, amount);
    }

    //past events cannot be read from the smart contract
    //one-way-type communication
}