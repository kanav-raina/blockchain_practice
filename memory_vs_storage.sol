pragma solidity ^0.4.24;
 
contract ChangeArrayValue {
    uint[20] public arr;
 
    function startChange() public {
        firstChange(arr);
        secondChange(arr);
    }
 
    function firstChange(uint[20] storage x) internal {
        x[0] = 4;
    }
    
    function secondChange(uint[20] x) internal pure {
        x[0] = 3;
    }
}
