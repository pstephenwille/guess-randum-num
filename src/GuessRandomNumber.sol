// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "solmate-6.7.0/tokens/ERC721.sol";
import "@openzeppelin-contracts-5.0.2/utils/Strings.sol";

contract GuessRandomNumber {
    uint256 public number;

    function generatePseudoRandomNumber() public view returns (uint256) {
        uint256 number = uint256(keccak256(abi.encodePacked(
            tx.origin,
            blockhash(block.number - 1),
            block.timestamp
        )));
        number = (number % 10);
        return number;
    }

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}
