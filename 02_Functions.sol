// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FunctionContract {
    uint value;
    
    // "view" modifier ensures the function cannot modify files inside
    // "pure" is also a form of ReadOnly function, but it can only return values computed inside the function (e.g.: return 1 + 1)
    function getValue() external view returns(uint) {
        return value;
    }
    
    // function visibility keywords
    // "private" you can only call a function within the smart contract.
    // with private functions, the convention is to add an "_" at the beginning of its name
    
    // "internal" you can call the function from the smart contract or any other that inherits from it.
    
    // "external" you can only call the function from outside the smart contract.
    // external functions are not prefixed by "_"
    
    // "public" functions can be called from inside and outside the smart contract
    
    // Tip: Always use the most restrictive access when declaring a function
    unction setValue(uint _value) external {
        value = _value;
    }
}