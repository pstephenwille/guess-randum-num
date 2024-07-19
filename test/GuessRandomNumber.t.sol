// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {GuessRandomNumber} from "../src/GuessRandomNumber.sol";

contract CounterTest is Test {
    GuessRandomNumber public counter;

    function setUp() public {
        console.log('stv-test');
        counter = new GuessRandomNumber();
        counter.setNumber(0);
    }

    function test_randomNumber() public {
        uint256 number = counter.generatePseudoRandomNumber();
        console.log(number);
        assertNotEq(0, number);
    }


    function test_Increment() public {
        counter.increment();
        assertEq(counter.number(), 1);
    }

    function testFuzz_SetNumber(uint256 x) public {
        counter.setNumber(x);
        assertEq(counter.number(), x);
    }


}
