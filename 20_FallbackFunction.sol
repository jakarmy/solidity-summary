// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FallbackFunction {
    // Fallback Functions are used to a) receive ether in your smart contract without having a specific function called.
    // They are also used for when a function that does not exist in your smart contract is called, therefore the fallback function is used.

    // Fallback functions have no name
    // Only one fallback function can be declared
    // No arguments
    // External is the only allowed visibility
    // Most common use case is sending wther to a fallback function.
    // If you do not want the function to receive ether, just remove the 'payable' keyword 
    receive() payable external {
        // If you try calling this function from another contract, there is a gas spending limit of 2300.
        // This limit applies when using the 'send' or 'transfer' functions from that other smart contract.

        // To reject incoming calls, you can use 'revert'
        revert('Do not call this function');
    }

    fallback() external {
        revert('Do not call this function');
    }
}

// Real examples of when the fallback function gets called.
contract B {
    function foo() external {
        FallbackFunction a = new FallbackFunction();
        // Calling a function that does not exist
        InterfaceA(address(a)).doesNotExist();

        // Sending ether to function
        address payable a_payable = payable(address(a));
        a_payable.transfer(100);
    }
}

interface InterfaceA {
    function doesNotExist() external;
}