// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "src/SanchetCoin.sol";

contract TestSanchetCoin is Test {
    SanchetCoin token;

    uint public constant INITIAL_TOKEN_SUPPLY = 100;

    function setUp() public {
        token = new SanchetCoin();
    }

    function testMint() public {
        token.mint(address(this), INITIAL_TOKEN_SUPPLY);
        assertEq(token.balanceOf(address(this)), INITIAL_TOKEN_SUPPLY, "ok");
    }
}