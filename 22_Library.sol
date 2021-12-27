// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

library PlayerLibrary {
    struct Player {
        uint score;
    }

    function incrementScore(Player storage _player, uint points) public {
        _player.score +=points;
    }
}

contract PlayerContract {
    using PlayerLibrary for PlayerLibrary.Player;
    mapping(uint => PlayerLibrary.Player) players;
    function changePlayerScore() external {
        players[0].incrementScore(10);
    }
}

// Note that the library, when deployed, will have its own eth address on the block chain.
// This is useful, since multiple smart contracts can call the library to manipulate data
// You can also wrap the library with the same address of the smart contract declared here.
// That is called an embedded library and it only requires all its functions to be "internal"