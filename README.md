# CodeAlpha Polling System Smart Contract

## Overview

This project is a blockchain based polling system developed using Solidity as part of the CodeAlpha Blockchain Development Internship.

The smart contract allows users to create polls, vote securely, prevent duplicate voting, and find the winning option after the poll ends.

## Features

- Create polls with title and multiple options
- Add voting deadline
- Secure voting system
- One wallet address can vote only once
- Prevent duplicate voting using mappings
- Store vote count securely
- Time based voting using block.timestamp
- Find winning option after poll completion

## Technologies Used

- Solidity
- Ethereum Blockchain
- Remix IDE

## Smart Contract Functions

### createPoll()
Creates a new poll with title, options and deadline.

### vote()
Allows users to vote before deadline.

### getPoll()
Returns poll details.

### getWinner()
Returns the winning option after voting ends.

## Testing

Successfully tested:

- Contract deployment
- Poll creation
- Voting
- Duplicate vote blocking
- Deadline restriction
- Winner calculation
