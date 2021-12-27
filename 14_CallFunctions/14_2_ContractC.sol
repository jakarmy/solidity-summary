// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

//This serves as a cleaner way to expose only the function you want other to have access to from the outside.
interface InterfaceC{
    function hellowWorld() external pure returns(string memory);
    function errorFunction() external pure;
}
contract C {
    function hellowWorld() external pure returns(string memory) {
        return 'HelloWorld';
    }

    function errorFunction() external pure {
        revert(); //Throws error that propagates to parent caller.
    }

    function foo() private {
        //do something
    }
}