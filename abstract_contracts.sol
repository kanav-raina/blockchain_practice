Animal, Cat and Dog contracts updated for Solidity ^0.5.0 (works also on ^0.4.24):

pragma solidity ^0.5.0;
 
contract Animal {
 string public breed;
 uint public age;
 uint public weight;
 
 constructor() public {
 age = 1;
 weight = 1;
 }
 
 function sleep() pure public returns (string memory) {return "Zzzzz...";}
 function eat() pure public returns (string memory) {return "Nom nom..";}
 function talk() pure public returns (string memory);
}
 
contract Cat is Animal {
    constructor() public {
        breed = "Persian";
        age = 3;
        weight = 5;
    }
    function talk() pure public returns (string memory) { return "miaow";}
}
 
contract Dog is Animal {
    constructor() public {
        breed = "Labrador";
        age = 5;
        weight = 3;
    }
    function talk() pure public returns (string memory) {return "bark bark";}
}
Interface code updated for Solidity ^0.5.0:

pragma solidity ^0.5.0;
 
interface Token {
    function transfer(address recipient, uint amount) external;
    function balanceOf(address _owner) external view returns (uint256 balance);
}
