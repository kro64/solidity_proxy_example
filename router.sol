pragma solidity >=0.7.0 <0.8.10;

// Router contract provides addresses for other contracts.
// Steps to deploy:
// 1. Deploy router contract
// 2. Get router address, update all remaining contracts with router address and deploy contracts
// 3. Update router state variables with deployed contract addresses

contract ROUTER_CONTRACT {
    address public OWNER;
    address data_contract_addr = 0x2E9d30761DB97706C536A112B9466433032b28e3;
    

    constructor() {
        OWNER = msg.sender;
    }

    // Read contract addresses
    function get_data_contract() public view returns (address) {
        return data_contract_addr;
    }

    // Update contract addresses
    function update_data_contract(address data_contract_) public require_owner {
        data_contract_addr = data_contract_;
    }

    // Function modifiers
    modifier require_owner() {
        require (msg.sender == OWNER, "The sender is not contract owner, aborting.");
        _;
    }
}