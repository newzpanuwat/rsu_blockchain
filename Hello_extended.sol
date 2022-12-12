//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "./Hello_World.sol";

contract HelloExtended is HelloWorld {
    function setMessage2(string memory _message) public {
        setMessage(string.concat(_message, "_1"));
    }
}
