// SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

contract GarageManager{
    struct Car{
    string make;
    string model;
    string color;
    uint numberOfDoors;
   

}

    mapping (address => Car[]) public garage;




// add car garage
function addCar(string memory _make, string memory _model, string memory _color, uint _numberOfDoors) public {
        // Create a new Car instance
        Car memory newCar = Car({
            make: _make,
            model: _model,
            color: _color,
            numberOfDoors: _numberOfDoors
        });

        // Add the new Car to the garage under the user's address
        garage[msg.sender].push(newCar);
    }

    function getMyCars() external  view returns(Car[] memory){
        return garage[msg.sender];

    }

function getUserCars(address _user) external view returns(Car[] memory){
    return garage[_user];
}

 error BadCarIndex(uint index);

 function updateCar(uint index, string memory _make, string memory _model, string memory _color, uint _numberOfDoors ) external {
    
 if (index >= garage[msg.sender].length){
            revert BadCarIndex(index);
        }
        garage[msg.sender][index] = Car({
            make: _make,
            model: _model,
            color: _color,
            numberOfDoors: _numberOfDoors
        });
    
 }
 function resetMyGarage() public {
    delete garage[msg.sender];
 }

}