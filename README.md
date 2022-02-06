# Router contract in Solidity

This is a simple router (or just proxy) contract setup in Solidity, that allows easier management of the code.

The provided example allows user to read and write data on the data (storage) contract, using a separate - interface contract.

Keep in mind, that this setup allows anyone to write the data! Adjust modifiers to your own needs.

__What's inside__

- _Router contract_

A router is a contract that stores all relevant information, related to other smart contracts.
It's main function is to return addresses of other smart contracts.

- _Interface contract_

Interface contract stores all of the relevent application logic / game mechanics. It uses router contract to know,
where data and other contracts are located.

- _Data contract_

This contract stores information, as it's name suggest.
