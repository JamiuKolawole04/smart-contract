//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;

contract SimpleStorage {
    // This gets initialized to zero
    uint256 favouriteNumber;

    // People public person = People({favouriteNumber: 123, name: "ola"});

    mapping(string => uint256) public nameToFavouriteNumber;

    // struct is object
    struct People {
        uint256 favouriteNumber;
        string name;
    }

    // uint256[] public favouriteNumber;
    // delaring people as object array here
    People[] public people;

    function store(uint256 _favouriteNumber) public virtual {
        favouriteNumber = _favouriteNumber;
    }

    // view, pue
    function retriev() public view returns (uint256) {
        return favouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        people.push(People(_favouriteNumber, _name));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }
}

// 0xd9145CCE52D386f254917e481eB44e9943F39138
