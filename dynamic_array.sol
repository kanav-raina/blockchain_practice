pragma solidity^0.4.24;
 
contract Score {
   uint24[] score;
 
   function addScore(uint24 s) public returns(uint24[]) {
       score.push(s);
       return score;
   }
 
   function getLength() view public returns(uint) {
       return score.length;
   }   
 
   function clearArray() public returns(uint24[]) {
       delete score;
       return score;
   }   
}
