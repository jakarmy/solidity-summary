// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MemoryStorageContract {
    // storage:  Persistent, value will remain in the blockchain
    // memory:   Short term storage, it is persistent only within the scope of the function
    // stack:    Simple variables declared inside functions
    // calldata: Available only for external or public functions. It represents complex data in transactions

    //storage
    uint a; //this will be a "storage" value and the keyword does not need to be specified

    //however, "storage" keyword can be used to reference objects outside functions with pointers
    struct User {
        string name;
    }
    User[] users;

    function example() external {
        User storage user = users[0]; //obtaining a pointer to the nested user struct
        user.name = 'John'; // this changes the name of the user stored in the array

        // memory
        User memory user2 = users[0];
        user2.name = 'Mary'; //this will not affect the user stored outside the function. It's basically a temporary copy.
    
        changeUser(user2);
    }

    function changeUser(User memory user) internal {
        //passing a memory variable to another function
    }

    //stack
    function stackFunction() pure external {
        uint b; //this variable is "stack", available only inside this function
    }

    //calldata
    function complexTransaction(uint[] calldata _users) external {
        //data comes from a transaction
    }
}