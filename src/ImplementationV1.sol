// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.19;

//state collision : 프록시의 변수와, 임플의 변수 같게 설정하기.
contract ImplementationV1 {
    address public implementation;
    uint public x = 0;

    function inc() external {
        x += 1;
    }
}