//SPDX-License-Identifier: MIT

pragma solidity 0.8.28;

abstract contract Employee{
    uint public idNumber;
    uint public managerId;

    constructor( uint _idNumber, uint _managerId){
        idNumber = _idNumber;
        managerId = _managerId;
    }

    function getAnnualCost() public virtual view returns(uint);
}


contract Salaried is Employee{
    uint public annualSalary;

    constructor(uint _idNumber, uint _managerId, uint _annualSalary) Employee(_idNumber, _managerId){
        annualSalary = _annualSalary;
    }

    function getAnnualCost() public override view returns(uint){
        return annualSalary;
    }

}

contract Hourly is Employee{

    uint public hourlyRate;

    constructor(uint _idNumber, uint _managerId, uint _hourlyRate) Employee(_idNumber, _managerId){
        hourlyRate = _hourlyRate;
    }

    function getAnnualCost() public override view returns(uint){
        return hourlyRate * 2080;
    }
}

contract Manager{
    uint[] public employeeId;

    function addReport( uint _employeeId) public{
        employeeId.push(_employeeId);
    }

    function  resetReports() public{
        delete employeeId;
    }
}

contract SalesPerson is Hourly{

    constructor(uint _idNumber, uint _managerId, uint _hourlyRate ) Hourly(_idNumber, _managerId, _hourlyRate) {}
}

contract EngineeringManager  is Salaried, Manager{
    constructor(uint _idNumber, uint _managerId, uint _annualSalary) Salaried(_idNumber, _managerId, _annualSalary){}
}

contract InheritanceSubmission {
    address public salesPerson;
    address public engineeringManager;

    constructor(address _salesPerson, address _engineeringManager) {
        salesPerson = _salesPerson;
        engineeringManager = _engineeringManager;
    }
}