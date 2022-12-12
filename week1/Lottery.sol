//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

contract Lottery {
    address public manager;
    address[] public players;

    constructor() {
        manager = msg.sender;
    }

    function enter() public payable {
        require(msg.value >= 0.001 ether, "Please enter more than 0.001 ETHER");
        players.push(msg.sender);
    }

    function random() private view returns (uint256) {
        return
            uint256(
                keccak256(
                    abi.encodePacked(block.difficulty, block.timestamp, players)
                )
            );
    }

    function pickWinner() public {
        require(msg.sender == manager, "Only manager");

        uint256 index = random() % players.length;
        (bool success, ) = players[index].call{value: (address(this).balance)}(
            ""
        );
        require(success, "Tranfers failed");
        players = new address payable[](0);
    }
}
