// SPDX-License-Identifier: MIT OR Apache-2.0
pragma solidity >=0.8.0;

import { IInterchainSecurityModule } from "@hyperlane-xyz/contracts/interfaces/IInterchainSecurityModule.sol";

contract ExampleIsm is IInterchainSecurityModule {
    // @inheritdoc IInterchainSecurityModule
    // @dev CCIP_READ is the type for CCIP read messages
    uint8 public moduleType = uint8(IInterchainSecurityModule.Types.CCIP_READ);

    // @inheritdoc IInterchainSecurityModule
    function verify(bytes calldata, bytes calldata) public view returns (bool) {
        // TODO: Implement the verification logic for incoming messages and return true if the message is valid
        // check AbstractMultisigIsm.sol for a reference implementation
        return true;
    }
}
