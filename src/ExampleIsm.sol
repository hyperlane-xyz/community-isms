// SPDX-License-Identifier: MIT OR Apache-2.0
pragma solidity >=0.8.0;

import { IInterchainSecurityModule } from "@hyperlane-xyz/contracts/interfaces/IInterchainSecurityModule.sol";

contract ExampleIsm is IInterchainSecurityModule {
    // @dev The first 128 enum values are reserved for core Hyperlane types
    uint8 public constant COMMUNITY_MASK = 0x80;

    // TODO: Replace with actual community types you want to use
    enum CommunityTypes {
        EXAMPLE_ISM
    }

    // @inheritdoc IInterchainSecurityModule
    uint8 public moduleType = uint8(CommunityTypes.EXAMPLE_ISM) | COMMUNITY_MASK;

    // @inheritdoc IInterchainSecurityModule
    function verify(bytes calldata, bytes calldata) public view returns (bool) {
        // TODO: Implement the verification logic for incoming messages and return true if the message is valid
        // check AbstractMultisigIsm.sol for a reference implementation
        return true;
    }
}
