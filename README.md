# CodeAlpha Crypto Locking Smart Contract

## Overview

A crypto time-lock smart contract developed using Solidity.

Users can deposit ETH with a lock period and withdraw only after the lock time is completed.

## Features

- Deposit Ether into smart contract
- Set custom lock duration
- Store deposit amount
- Store unlock time
- Mapping based user records
- Uses block.timestamp
- Prevents early withdrawal
- Allows withdrawal after unlock time

## Technologies Used

- Solidity
- Ethereum Blockchain
- Remix IDE

## Smart Contract Functions

### deposit()

Allows users to deposit ETH with lock duration.

### withdraw()

Allows withdrawal only after lock time.

### getContractBalance()

Returns smart contract ETH balance.


## Testing

Successfully tested:

- ETH deposit
- Amount storage
- Unlock time storage
- Early withdrawal blocking
- Successful withdrawal after unlock time
