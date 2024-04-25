// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleContract {
    uint256 public value;

    event ValueUpdated(uint256 newValue);

    function setValue(uint256 _newValue) public {
        value = _newValue;
        emit ValueUpdated(value);
    }
}