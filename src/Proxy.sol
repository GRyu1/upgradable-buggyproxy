// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.19;

contract Proxy {
    address public implementation;
    uint public x = 0;

    function setImplementation(address _implementation) public {
        implementation = _implementation;
    }

    function _delegate(address _implemetation) public {
        assembly {
            calldatacopy(0, 0, calldatasize())
            let result := delegatecall(gas(), _implemetation, 0, calldatasize(), 0, 0)
            returndatacopy(0, 0, returndatasize())
            switch result
                case 0 {
                    revert(0, returndatasize())
                }
                default {
                    return(0, returndatasize())
                }
        }
    }

    fallback() external {
        _delegate(implementation);
    }
}
