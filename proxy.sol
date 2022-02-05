pragma solidity >=0.7.0 <0.8.6;

contract DATA_CONTRACT {
    function get_level() public view returns (uint8) {}
    function get_damage() public view returns (uint8) {}
    function get_energy() public view returns (uint8) {}
}

contract PROXY_CONTRACT {
    address public OWNER;address public proxy_data_contract_addr = 


    constructor() {
        OWNER = msg.sender;
    }

    function read_level() public view returns (uint8) {
        return DATA_CONTRACT(proxy_data_contract_addr).get_level();
    }

    function read_damage() public view returns (uint8) {
        return DATA_CONTRACT(proxy_data_contract_addr).get_damage();
    }

    function read_energy() public view returns (uint8) {
        return DATA_CONTRACT(proxy_data_contract_addr).get_energy();
    }
}