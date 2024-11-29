// SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

contract EmployeeStorage{
uint16 private shares;
uint24 private salary;
string public name;
uint public idNumber;

    constructor(uint16 _shares, string memory _name, uint24 _salary, uint _idNumber) {
shares = _shares;
name = _name;
salary = _salary;
idNumber = _idNumber;
    }

    function viewSalary()public view returns(uint24) {
return  salary;

    }

        function viewShares()public view returns(uint16) {
return  shares;

    }

    error TooManyShares(uint16 shares);

    function grantShares(uint16 _newShares)public {
        if(shares > 5000){
            revert TooManyShares(shares);
            }
            require(_newShares < 5000,  "Too many shares");
            shares += _newShares;
            }


function checkForPacking(uint _slot) public view returns (uint r) {
    assembly {
        r := sload (_slot)
    }
}


function debugResetShares() public {
    shares = 1000;
}

}

