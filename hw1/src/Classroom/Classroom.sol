// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
contract StudentV1 {
    uint256 public totalRegistered;
    mapping(address => bool) public isRegistered;

    function register() external returns (uint256) {
        require(!isRegistered[msg.sender], "Student is already registered.");
        isRegistered[msg.sender] = true;
        totalRegistered += 1;
        return totalRegistered;
    }
}


/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
    }
}
