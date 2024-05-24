pragma solidity >=0.4.2 <=0.8.90;

contract Add {
    function popN(uint256 n) public pure {
        assembly {
            // Clear stack
            for { let i := 0 } lt(i, n) { i := add(i, 1) } {
                pop(0)  // Pop value from stack
            }
        }
    }
}