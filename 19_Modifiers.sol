// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Modifiers {
    // Modifiers allow you to run code before calling a function.
    // Great for access control or input validation.
    function foo(uint a) external myModifier(a){
        // do stuff
    }

    // Modifiers are 'internal', called only within the smart contract.
    modifier myModifier(uint a) {
        require(a == 10, 'error message');
        _; // this will allow the body of the function to be executed.
    }

    // You can also chain more than one modifiers.
    // Here, myModifier1 is run first, then MyModifier2 and then the body of the main function.
    function foo2(uint a) external myModifier1(a) myModifier2(a){
        // do stuff
    }

    modifier myModifier1(uint a) {
        require(a == 10, 'error message');
        _; // this will allow the body of the second modifier to be executed.
    }

    modifier myModifier2(uint a) {
        require(a == 10, 'error message');
        _; // this will allow the body of the function to be executed.
    }

    // We can use modifiers to check access control
    address admin;
    function foo3(uint a) external onlyAdmin(){
        // do stuff
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, 'only admin allowed');
        _; // this will allow the body of the function to be executed.
    }
}