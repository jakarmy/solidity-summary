// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Structs {
    
    struct User {
        address addr;
        uint score;
        string name;
    }

    User[] users;
    mapping(address => User) userMapping;

    function playingWithStructs(string calldata _name) external {
        // user1 and user2 are completely independent. Changing user1 won't affect user2
        User memory user1 = User(msg.sender, 0, _name);
        User memory user2 = User(msg.sender, 0, _name);
        
        //Initializing user with parameters in different order
        User memory user3 = User({name: _name, score: 0, addr: msg.sender});

        //reading values in the struct
        user3.addr;

        //updating values
        user3.score = 20;

        //deleting
        delete user1; // removed from memory

        //adding User structs to array
        users.push(user2);

        userMapping[msg.sender] = user2;
    }
}