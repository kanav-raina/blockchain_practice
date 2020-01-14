SOLIDITY LIBRARIES ON GITHUB:
https://github.com/Modular-Network/ethereum-libraries

https://github.com/alianse777/solidity-standard-library

https://github.com/OpenZeppelin/openzeppelin-solidity

https://github.com/ethereum/dapp-bin/tree/master/library

Please write message me if there a broken link in here, or if you have found a useful library online so I can add it here. Thank you!

------------------------------------------------------------------------------------------------

Contracts from the lecture:

Works with both ^0.5.0 and ^0.4.24

pragma solidity ^0.5.0;
 
library SafeMath {
  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a * b;
    assert(a == 0 || c / a == b);
    return c;
  }
 
  function div(uint256 a, uint256 b) internal pure returns (uint256) {
    // assert(b > 0); // Solidity automatically throws when dividing by 0
    uint256 c = a / b;
    // assert(a == b * c + a % b); // There is no case in which this doesn't hold
    return c;
  }
 
  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    assert(b <= a);
    return a - b;
  }
 
  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    assert(c >= a);
    return c;
  }
}
Safe math imported library from GitHub now requires solidity ^0.5.2 at least in order to compile:

pragma solidity ^0.5.2;
 
import "github.com/OpenZeppelin/zeppelin-solidity/contracts/math/SafeMath.sol";
 
contract Bank {
    mapping(address => uint) public accounts;
    using SafeMath for uint256;
 
    function deposit() public payable {
       require(accounts[msg.sender] + msg.value >= accounts[msg.sender], "Overflow error");
       accounts[msg.sender] = accounts[msg.sender].add(msg.value);
    }
    
    function withdraw(uint money) public {
       require(money <= accounts[msg.sender]);
       accounts[msg.sender] = accounts[msg.sender].sub(money);
    }
}
