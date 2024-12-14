// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "src/Counter.sol";

contract TestCounter is Test {
    Counter c;

    uint public constant NUM = 1;

    function setUp() public {
        c = new Counter(NUM);
    }

    function testIncrement() public {
        assertEq(c.getNum(), NUM, "ok");
        c.increment();
        assertEq(c.getNum(), 2, "ok");
    }

    function testDecrement() public {
        assertEq(c.getNum(), NUM, "ok");
        c.decrement();
        assertEq(c.getNum(), 0, "ok");
    }

    function testFailDecrement() public {
        assertEq(c.getNum(), NUM, "ok");
        c.decrement();
        c.decrement();
    }
}
