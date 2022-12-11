//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.7;

contract HelloWorld {
    string public message;

    constructor() {
        message = "Hello World";
    }

    function getMessage() public view returns (string memory) {
        return message;
    }

    function setMessage(string memory _message) public {
        message = _message;
    }
}
