// SPDX-License-Identifier: MIT or Apache-2.0
pragma solidity ^0.8.13;

import { Test } from "forge-std/Test.sol";
import { IInterchainSecurityModule } from "@hyperlane-xyz/contracts/interfaces/IInterchainSecurityModule.sol";

import { ExampleIsm } from "../src/ExampleIsm.sol";

contract ExampleIsmTest is Test {
    ExampleIsm public exampleIsm;

    function setUp() public {
        exampleIsm = new ExampleIsm();
    }

    function test_moduleType() public view {
        assertEq(exampleIsm.moduleType(), uint8(IInterchainSecurityModule.Types.CCIP_READ));
    }

    // TODO: Implement the test for the verify function
    function test_verify() public view {
        assertTrue(exampleIsm.verify(abi.encode(""), abi.encode("")));
    }
}
