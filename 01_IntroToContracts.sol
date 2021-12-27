// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MyContract {
    //1. fixed-size types
    bool isReady;
    uint a;
    address sender; // used to send or receive eth
    bytes32 data; //any type of arbitrary data (used for strings)
    
    //2. variable-size types
    string name; //up to sol 5.11 there weren't a lot of convenience methods to manipulate strings
    bytes _data; //No pre-defined length
    uint[] amounts; // needs to be an array of the same type
    mapping(uint => string) users; //just like a classic dictionary or map object
    
    //3. user-defined types
    struct User {
        uint id;
        string name;
        uint[] friendIds;
    }
    enum Color {
        RED,
        GREEN,
        BLUE
    }
}