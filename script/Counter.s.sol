// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {GuessRandomNumber} from "../src/GuessRandomNumber.sol";

contract CounterScript is Script {
    GuessRandomNumber public counter;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        counter = new GuessRandomNumber();

        vm.stopBroadcast();
    }
}
