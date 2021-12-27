// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "14_CallFunctions/14_2_ContractC.sol";

contract A {
    // To call hellowWorld in B, we need an "interface" of B
    //Since both contracts are in the same file, we already get that for free.
    //We also need the address of B

    address addressB;
    address addressC;

    function setAddressB(address _addressB) external {
        addressB = _addressB;
    }

    function setAddressC(address _addressC) external {
        addressC = _addressC;
    }

    function callHelloWorld() external view returns(string memory){
        B contractB = B(addressB);
        return contractB.hellowWorld();
    }

    //C is not in this file. The 'import' keyword at the top allows us to use the file where C lives.
    function callHelloWorldC() external view returns(string memory){
        C contractC = C(addressC);
        return contractC.hellowWorld();
    }

    function failedCall() external view{
        C contractC = C(addressC);
        contractC.errorFunction(); //error will propagate here.
    }
}

contract B {
    function hellowWorld() external pure returns(string memory) {
        return 'HelloWorld';
    }
}