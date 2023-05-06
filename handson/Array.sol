// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyContract {
    uint[] public myArray;

    function addValue(uint _value) public {
        myArray.push(_value);
    }

    function getValue(uint _index) public view returns (uint) {
        require(_index < myArray.length, "Index out of range");
        return myArray[_index];
    }

    function getArrayLength() public view returns (uint) {
        return myArray.length;
    }
}
