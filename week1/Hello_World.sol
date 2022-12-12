//SPDX-License-Identifier: UNLICENSE
pragma solidity ^0.8.17;

contract HelloWorld {
    string public message;

    constructor() {
        message = "Hello World";
    }

    function getMessage() public view returns (string memory) {
        return message;
    }

    function setMessage(string memory _message) public virtual {
        message = _message;
    }
}
