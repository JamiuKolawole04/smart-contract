// Get funds from users
// Withdraw funds only by the sender
// set a minimum funding value in USD;

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FundMe {
    uint256 public minimumUsd = 50;

    function fund() public payable {
        // setting a minimum fund amount in USD.
        // Want to be able to set a minimum fund amount in USD
        // How do we send ETH to this contract?

        // sending atleast 1 Ethereum
        // value as in msg.value is in terms of ethereum (GWEI)

        // 1e8 === 1 * 10 ** 18 == 1000000000000000000
        require(msg.value > 1e18, "Didn't send enough digital asset");

        msg.value;
    }

    function withdraw() private {}
}
