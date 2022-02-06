pragma solidity >=0.7.0 <0.8.10;

// This contract stores data. Provides read/write permissions.

contract DATA_CONTRACT_A {
    address public OWNER;
    address public router_address = 0x1c91347f2A44538ce62453BEBd9Aa907C662b4bD;

    constructor() {
        OWNER = msg.sender;
    }

    // Game data
    uint8 level = 64;
    uint8 damage = 204;
    uint8 energy = 199;


    // Read data
    function get_level() public view returns (uint8) {
        return level;
    }

    function get_damage() public view returns (uint8) {
        return damage;
    }

    function get_energy() public view returns (uint8) {
        return energy;
    }

    // Write data
    function write_level(uint8 level_) public{
        level = level_;
    }

    function write_damage(uint8 damage_) public {
        damage = damage_;
    }

    function write_energy(uint8 energy_) public {
        energy = energy_;
    }


    // Function modifiers
    modifier require_owner() {
        require (msg.sender == OWNER || msg.sender == router_address, "The sender is not contract owner or the router, aborting.");
        _;
    }
}