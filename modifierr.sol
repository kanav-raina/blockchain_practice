Only Seller Modifier:

pragma solidity ^0.5.0;
 
contract Purchase {
    address public seller;
 
    modifier onlySeller { // Modifier
        require(msg.sender == seller);
        _;
    }
 
    function abort() public view onlySeller { // Modifier usage
        // ...
    }
}
Only Owner Modifier for solidity ^0.4.24:

pragma solidity ^0.4.24;
 
contract owned {
    constructor() public { owner = msg.sender; }
    address owner;
 
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
}
 
contract mortal is owned {
 
    function close() public onlyOwner {
        selfdestruct(owner);
    }
}
Only Owner Modifier for solidity ^0.5.0:

pragma solidity ^0.5.0;
 
contract owned {
    constructor() public { owner = msg.sender; }
    address payable owner;
 
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
}
 
contract mortal is owned {
 
    function close() public onlyOwner {
        selfdestruct(owner);
    }
}
