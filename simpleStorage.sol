// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title A storage for texts
/// @author David Gift
/// @notice You can use this contract to securely store texts and it can only be called by the owner's address
/// @dev All function calls are currently implemented without side effects
/// @custom:experimental This is an experimental contract.
contract SimpleStorage{
    mapping(address => string) public texts; // assigns an address to a text
    address[] public keys;

    string public text;

    /// @notice To get the text of the owner
    /// @param _key Input the address of the owner of the text
    /// @param _text Input the text
    function setText(address _key, string calldata _text) public {
        texts[_key] = _text;

    }

    /// @notice To get the length of owners
    function getLength() public view returns(uint) {
        return keys.length;
    }

    /// @notice To get the text of the owner
    /// @param _key The address of the owner of the text
    /// @return The text of the owner
    function getText(address _key) public view returns(string memory) {
        return texts[_key];
        // require(bytes(texts[_key]).length > 0, "This key is not in record");
    }
}
