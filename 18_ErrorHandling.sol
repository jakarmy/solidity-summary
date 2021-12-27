// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ErrorHandling {
    uint a;
    function foo() view external {
        
        // Throw Error
        // Code below error throw is NOT executed
        // Any state changes are reverted (variables and new values)
        // Gas is consumed (gas spent up to this point or the whole amount)
        
        // throw // Deprecated in sol 0.5.
        // Use revert instead
        revert('There was a fatal error');
        
        // Most of the time, revert is tied to a condition check.
        if(a == 10) {
            revert('error');
        }
        // An easier way to do this is with 'require'
        require(a != 10, 'error because a == 10');

        // You can also throw errors with 'assert'
        assert(a != 10);

        // require vs. assert
        // require is used to throw errors that are expected at run time, that could ocurr given the logic of your code.
        // assert is used to throw errors for things that should never happen in your code and to detect bugs in your logic or input variables.
    }

    // The error thrown in B propagates to the caller.
    function throwInOtherContract() external {
        B b = new B();
        b.otherFunc();
    }
}

contract B {
    function otherFunc() pure external { 
        revert('error because... do not call B!');
    }
}