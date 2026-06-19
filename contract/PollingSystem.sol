// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;


/*
    CodeAlpha Task 4
    Personal Portfolio (Crypto Locking)
    Smart Contract
*/


contract CryptoLocking {


    // Store user deposit information

    struct UserDeposit {

        uint amount;

        uint unlockTime;

    }


    // user wallet address => deposit details

    mapping(address => UserDeposit) public deposits;



    // Deposit ETH with lock time

    function deposit(
        uint _lockTimeInMinutes
    )
        public
        payable
    {


        require(
            msg.value > 0,
            "Please deposit ETH"
        );


        deposits[msg.sender].amount += msg.value;


        deposits[msg.sender].unlockTime =
            block.timestamp + (_lockTimeInMinutes * 1 minutes);

    }





    // Withdraw ETH after lock time


function withdraw()
    public
{

    UserDeposit storage user =
        deposits[msg.sender];


    require(
        user.amount > 0,
        "No ETH deposited"
    );


    require(
        block.timestamp >= user.unlockTime,
        "ETH is still locked"
    );


    uint balance =
        user.amount;


    user.amount = 0;


    (bool success, ) =
        payable(msg.sender).call{
            value: balance
        }("");


    require(
        success,
        "ETH transfer failed"
    );

}





    // Check contract total ETH

    function getContractBalance()
        public
        view
        returns(uint)
    {

        return address(this).balance;

    }


}