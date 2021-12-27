// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ControlStructuresContract {
    bool boolValue;
    function foo() view external {
        if(block.timestamp > 1234) {}
        if(!boolValue) {} else {}

        for(uint i = 0; i < 10; i++) {}
        bool condition = true;
        while(condition) {
            if(condition) {
                //do something
                continue; // skips code below and re-enters while loop
                break; // skips code below and exit while loop
                // this applies to for-loops as well.
            }
            
        }
    }
}