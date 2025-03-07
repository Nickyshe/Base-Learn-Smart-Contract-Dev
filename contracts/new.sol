// SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

contract Complimenter {
    string public name;
    constructor (string memory _name){
        name =  _name;
    }

    function compliment()external view returns(string memory){
        return string.concat("You look great", name);
    }

}

contract ComplimenterFactory{
    function createComplimenter(string memory _name) external  returns(address){
        Complimenter newContract = new Complimenter(_name);
        return address(newContract);

    }
}