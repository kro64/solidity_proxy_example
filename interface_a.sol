pragma solidity >=0.7.0 <0.8.10;

// Interface contract interacts with data contracts.
// Provides application logic, game mechanics, etc..

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
    address public router_address = 0x1c91347f2A44538ce62453BEBd9Aa907C662b4bD;

    constructor() {
        OWNER = msg.sender;
    }


    // Read addresses from router
    function get_data_contract() public view returns (address) {
        return ROUTER(router_address).get_data_contract();
    }

    // Read data
    function read_level() public view returns (uint8) {
        return DATA_CONTRACT(get_data_contract()).get_level();
    }

    function read_damage() public view returns (uint8) {
        return DATA_CONTRACT(get_data_contract()).get_damage();
    }

    function read_energy() public view returns (uint8) {
        return DATA_CONTRACT(get_data_contract()).get_energy();
    }

    // Write data
    function write_level(uint8 level_) public {
        DATA_CONTRACT(get_data_contract()).write_level(level_);
    }

    function write_damage(uint8 damage_) public {
        DATA_CONTRACT(get_data_contract()).write_damage(damage_);
    }

    function write_energy(uint8 energy_) public {
        DATA_CONTRACT(get_data_contract()).write_energy(energy_);
    }

}