// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
contract StudentV1 {
    bool private _init = true;
    
    function register() external returns (uint256) {
        if (_init){
            _init = false;
            return 1000;
        } else {
            return 123;
        }
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    // 如果 `isEnrolled` 不修改状态，我们可以保持这个函数是 `view` 的。
    // 否则，我们需要移除 `view`。
    function register() external view returns (uint256) {
        IClassroomV2 classroom = IClassroomV2(msg.sender);

        if (classroom.isEnrolled()) {
            return 123;
        } else {
            return 1000;
        }
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    // 这里假设 `register` 函数会因为某种原因消耗 gas，
    // 尽管它被标记为 `view`。
    function register() external view returns (uint256) {
        if (gasleft() > 7000){
            return 1000;
        } else {
            return 123;
        }
    }
}