// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "15_ERC20Transfer/15_2_ShinyToken.sol";

contract TransferToken {
    function transfer() external {
        //You have to pass an address to instantiate your token.
        ShinyToken token = ShinyToken(0x6f);
        //Transfering 100 tokens to function caller
        token.transfer(msg.sender, 100);
    }

    function transferFrom(address recipient, uint amount) external {
        ShinyToken token = ShinyToken(0x6f);
        //Transfer 'amount' from sender to recipient.
        token.transferFrom(msg.sender, recipient, amount);
    }
}

contract Owner {
    function transfer(address recipient, uint amount) external {
        ShinyToken token = ShinyToken(0x6f);
        //Sender needs to be approved for an amount first.
        token.approve(0x4d, amount);

        //Once approved, the amount can be transfered from sender to recipient.
        TransferToken transferToken = TransferToken(0x4d);
        transferToken.transferFrom(recipient, amount);
    }
}