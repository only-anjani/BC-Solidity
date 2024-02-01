// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Calculations{

    uint256 number;

    function addition(uint256 _number1, uint256 _number2) public pure returns(uint256){
        return _number1 + _number2;
    }

}