// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Arrays {
    //1. storage arrays --> They stay in the blockchain after exiting the function
    //2. memory arrays --> They are destroyed after exiting the function

    // storage arrays (dynamic size array)
    uint[] myArray;
    // fixed size array (you lose convenience method "push")
    uint[2] fixedArray;

    function playingWithArrays() external {
        // adding data to array
        myArray.push(1);
        myArray.push(2);

        // reading value at specific index
        myArray[1];

        // setting value at specific index
        myArray[0] = 25;

        // resetting value at specific index
        // Note that this doesn't change the length of the array, but it just resets the value to the default value
        delete myArray[1]; // resets the int value to 0

        for(uint i = 0; i < myArray.length; i++) {
            myArray[i];
        }
    }

    // memory arrays: Not saved to the blockchain after exiting function
    function memoryArrays() pure internal {
        // Memory array with size 10
        uint[] memory memoryArray = new uint[](10);
        // setting value at index
        memoryArray[0] = 10;
        // reading value at index
        memoryArray[0];
        // resetting value at index
        delete memoryArray[0];
    }

    // arrays in functions
    function arrayFunction(uint[] memory myArg) internal returns(uint[] memory) {

    }
}