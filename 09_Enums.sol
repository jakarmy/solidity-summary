// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract EnumContract {
    //declaration in UPPERCASE
    enum STATE { INACTIVE, ACTIVE, PRO, CANCELLED }
    STATE state;

    //you can use enums inside structs too
    struct User {
        STATE state;
    } 

    function setToActive() external {
        state = STATE.ACTIVE;
    }

    function playingWithEnums() view external {
        if(state == STATE.ACTIVE) {
            // do something
        }
    }

    // you can't pass an enum from outside the smart contract
    //but solidity can convert int to enum, in the order they were defined
    //if you pass 0, it'll map to INACTIVE
    function otherFunction(STATE _state) public {

    }
} 