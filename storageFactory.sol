// SPDX-License-Identifier: MIT

pragma solidity >=0.7.4;

import "./storage.sol";

// import "demo/storage.sol";

contract SorageFactory {
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber)
        public
    {
        // address
        // ABI - Application Binary Interface
        // SimpleStorage simpleStorage = SimpleStorage(
        //     simpleStorageArray[_simpleStorageIndex]
        // );

        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        simpleStorage.store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        return simpleStorage.retriev();
    }
}

// $1,611.40000000
