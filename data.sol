pragma solidity >=0.7.0 <0.8.6;

contract data_contract {
    uint8 private level = 64;
    uint8 private damage = 204;
    uint8 private energy = 199;

    function get_level() public view returns (uint8) {
        return level;
    }

    function get_damage() public view returns (uint8) {
        return damage;
    }

    function get_energy() public view returns (uint8) {
        return energy;
    }
}