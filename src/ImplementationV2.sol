// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.19;

contract ImplementationV2 {
    address public implementation;
    uint public x = 0;

    function inc() external {
        x += 1;
    }

    function dec() external {
        x -= 1;
    }
}