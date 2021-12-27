// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Mappings {
    //declare mapping
    mapping(address => uint) balances;
    mapping(address => mapping(address => bool)) approved;
    mapping(address => uint[]) scores;

    function playingWithMappings(address spender) external {
        // adding elements
        balances[msg.sender] = 100;
        // read elements
        balances[msg.sender];
        // update elements
        balances[msg.sender] = 200;
        // delete elements
        delete balances[msg.sender];

        // Default Values. Accessing keys that don't exist will map to the default value of the type mapped

        // Nested mappings
        approved[msg.sender][spender] = true;
        approved[msg.sender][spender];
        approved[msg.sender][spender] = false;
        delete approved[msg.sender][spender];

        // nested mapping with array
        // add array to mapping. Arrays are already instantiated inside the mapping
        scores[msg.sender].push(1);
        scores[msg.sender].push(2);
        scores[msg.sender][0];
        scores[msg.sender][0] = 10;
        delete scores[msg.sender][0];
    }
}