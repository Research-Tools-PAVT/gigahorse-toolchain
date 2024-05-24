// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StackManipulation {
    function pushN(uint256 n) public pure {
        assembly {
            let value := 9837874732
            for { let i := 0 } lt(i, n) { i := add(i, 1) } {
                dup1(0)  // Load value to stack
            }
            // Clear stack
            for { let j := 0 } lt(j, n) { j := add(j, 1) } {
                pop(0)  // Pop value from stack
            }
        }
    }

    function popN(uint256 n) public pure {
        assembly {
            // Clear stack
            for { let i := 0 } lt(i, n) { i := add(i, 1) } {
                pop(0)  // Pop value from stack
            }
        }
    }
}