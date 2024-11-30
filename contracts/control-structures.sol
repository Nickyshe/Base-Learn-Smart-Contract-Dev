// SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;
import "hardhat/console.sol";

contract ControlStructure{
    // error InvalidNumber();
    
    // function compareNumbers(uint256 _num1, uint256 _num2) external pure returns(string memory){
    // //   require(_num1 > 0 && _num2 >0, "Invalid data");
    //   if(_num1 == 0 && _num2 == 0){
    //     revert InvalidNumber();
    //   }
      

    //     if(_num1 > _num2){
    //         return "num1 is greater than num2";
    //     }else if(_num1 < _num2){
    //         return "num1 is less than num2";
    //     }else {
    //         return "both are equal";

    //     }
    // }

    // function loop() external  pure {
    //     for(uint256 index=0; index<8; index++){
    //         console.log("The index is", index);
    //         if(index == 2){
    //             console.log("two");
    //             continue ;
    //         }

    //         console.log("after");

    //         if (index == 4){
    //             console.log("four");
    //             break;
    //         }

    //         console.log("end");

    //     }
    // }
//  // Default value is 0!
//     function loop() external pure {

//     uint times;
// for(uint i = 0; i <= times; i++) {
//     console.log(i);
//     }
 
// }

//  error OddNumberSubmitted(uint _first, uint _second);
// function onlyAddEvenNumbers(uint _first, uint _second) public pure returns (uint) {
//     if(_first % 2 != 0 || _second % 2 != 0) {
//         revert OddNumberSubmitted(_first, _second);
//     }
//     return _first + _second;
// }   


function requireAddEvenNumbers(uint _first, uint _second) public pure returns (uint) {
    // Legacy pattern, do not use
    require(_first % 2 == 0, "First number is not even");
    require(_second % 2 != 0, "Second number is not even");

    return _first + _second;
}

}