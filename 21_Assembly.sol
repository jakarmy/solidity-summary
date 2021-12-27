// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Assembly {
    function playingWithAssembly() external {
        uint a;
        uint b;
        uint c;

        c = a + b;

        uint size;
        address addr = msg.sender;

        assembly {
            // retrieves a pointer of the desired memory location
            let d := mload(0x40)
            // store values in memory or persistent storage
            mstore(d, 2)
            sstore(d, 10)

            // use extcodesize() to check if an address is a smart contract or not
            // if address is not a contract, extcodesize is 0
            size := extcodesize(addr)
        }

        if (size > 0) {
                // address is a smart contract
        }
    }
}