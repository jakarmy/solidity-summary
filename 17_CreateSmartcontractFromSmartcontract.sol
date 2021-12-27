// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

//Creating smart contracts from another smart contract
//e.g.: Factory smart contract creates child smart contract to perform operations.
//This is a good way to separate responsibilities between contracts.

//Factory contract
contract LoanFactory {
    Loan[] loans;
    function createLoan() external {
        //deploying a new Loan smart contract
        Loan loan = new Loan(100);
        //store a pointer of this Loan contract. This allows you to interact with the Loan functions later on.
        loans.push(loan);
        //if you just want to store the address of the loan, you can do so by casting the pointer
        address(loan);

        //calling functions in Loan
        loan.reimburse();
    }
}

contract Loan {
    uint public amount;
    constructor(uint _amount) {
        amount = _amount;
    }

    function reimburse() external {

    }
}