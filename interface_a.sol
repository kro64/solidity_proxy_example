pragma solidity >=0.7.0 <0.8.6;

// Interface contract interacts with data contracts.
// Provides application login, etc..

contract ROUTER {
    function get_data_contract() public view returns (address) {}
}

contract DATA_CONTRACT {
    function get_level() public view returns (uint8) {}
    function get_damage() public view returns (uint8) {}
    function get_energy() public view returns (uint8) {}

    function write_level(uint8 level_) public {}
    function write_damage(uint8 damage_) public {}
    function write_energy(uint8 energy_) public {}
}

contract INTERFACE_CONTRACT_A {
    address public OWNER;
    address public router_address = 0x3c725134d74D5c45B4E4ABd2e5e2a109b5541288;

    constructor() {
        OWNER = msg.sender;
    }

    address public data_address = ROUTER(router_address).get_data_contract();

/*
    // Read addresses from router
    function get_data_contract() public view returns (address) {
        return ROUTER(router_address).get_data_contract();
    }
*/
    // Read data
    function read_level() public view returns (uint8) {
        return DATA_CONTRACT(data_address).get_level();
    }

    function read_damage() public view returns (uint8) {
        return DATA_CONTRACT(data_address).get_damage();
    }

    function read_energy() public view returns (uint8) {
        return DATA_CONTRACT(data_address).get_energy();
    }

    // Write data
    function write_level(uint8 level_) public {
        DATA_CONTRACT(data_address).write_level(level_);
    }

    function write_damage(uint8 damage_) public {
        DATA_CONTRACT(data_address).write_damage(damage_);
    }

    function write_energy(uint8 energy_) public {
        DATA_CONTRACT(data_address).write_energy(energy_);
    }

}