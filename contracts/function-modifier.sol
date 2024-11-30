// SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

contract FunctionModifier{
    address public  owner;
    uint256 public x = 10;
    bool public locked;

    constructor(){
        owner = msg.sender;
    }
  modifier onlyOwner(){
    require(msg.sender == owner, "Not Owner");
_;
}

modifier  validateData(address _addr){
    require(_addr != address(0), "Not valid address");
    _;
}

function changeOwner(address _newOwner)public onlyOwner validateData(_newOwner){
    owner = _newOwner;
}

modifier  noRetrancy(){
require (!locked, "No retrancy");
locked = true;
    _;

locked = false;
}

}

