//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "./Hello_World.sol";

contract HelloExtra is HelloWorld {
    function setMessage(string memory _message) public override {
        message = string.concat(_message, "_1");
    }
}
