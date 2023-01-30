// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./storage.sol";

contract ExtraStorage is SimpleStorage {
    // ovrride, virtual override
    // +5
    function store(uint256 _favouriteNumber) public override {
        favouriteNumber = _favouriteNumber + 5;
    }
}
