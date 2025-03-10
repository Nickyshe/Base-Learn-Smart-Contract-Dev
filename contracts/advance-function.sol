// SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

contract Functions{

    uint256 public data;
    uint256 public multiplier;
    address public owner;
    constructor(uint256 initialValue, uint256 initialMultiplier){
        data = initialValue;
        multiplier = initialMultiplier;
        owner = msg.sender;
    }

function setMultiplier(uint256 newMultiplier) external onlyOwner returns(bool){
    multiplier= newMultiplier;
    return true;
}
//set data
    function setData(uint256 newData) public onlyOwner returns(bool){
        data = newData;
        return true;
    }

// set computer data
function setComputedData (uint256 newData) external onlyOwner returns(bool){
        uint256 dataComputed = computeData(newData);
        return setData(dataComputed);
        
    }
//computedata

function computeData(uint256 someData) internal view returns(uint256){
    return someData * multiplier;
}

modifier onlyOwner{
    require(msg.sender == owner, "invalid owner");
    _;
}

}