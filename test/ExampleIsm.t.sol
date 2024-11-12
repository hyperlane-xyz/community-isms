// SPDX-License-Identifier: MIT or Apache-2.0
pragma solidity ^0.8.13;

import { Test } from "forge-std/Test.sol";
import { ExampleIsm } from "../src/ExampleIsm.sol";

contract ExampleIsmTest is Test {
    ExampleIsm public exampleIsm;
    uint8 public constant EXAMPLE_ISM_TYPE = 128;

    function setUp() public {
        exampleIsm = new ExampleIsm();
    }

    function test_moduleType() public view {
        assertEq(exampleIsm.moduleType(), EXAMPLE_ISM_TYPE);
    }

    // TODO: Implement the test for the verify function
    function test_verify() public view {
        assertTrue(exampleIsm.verify(abi.encode(""), abi.encode("")));
    }
}
