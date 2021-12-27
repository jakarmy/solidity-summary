// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract VariableContract {
    // "private" vars can only be read from within the smart contract
    uint private a;
    // "internal" vars can be read from within the smart contract or any other inheriting from it
    uint internal b;
    // "public" vars can be read from within the smart contract or outside it
    // Solidity actually creates a public getter function
    uint internal c;

    // default is "private"

    function foo() view external {
        uint b = a + 1;
    }
}