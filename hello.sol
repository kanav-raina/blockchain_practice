pragma solidity >=0.4.22 <0.6.0;
contract hello{
    string entry;
    
    function setEntry(string memory set) public{
        entry=set;
    }
    
    function getEntry()public view returns(string memory){
        return entry;
    }
    
}
