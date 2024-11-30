// SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

contract Arrays {
   // uint256 [] public dynamicArray = [1, 2];
    uint256 [10] public fixedArray = [1, 2, 3 ,4, 5, 6, 7, 8, 9, 10];

//     function addElementToDynamicArray(uint256 _newElement) external{
//         dynamicArray.push(_newElement);

//     }

//     function removeLastElementOfDynamicArray()external {
//         dynamicArray.pop();

//     }

//     function addElementToFixedArray(uint256 _index, uint256 _newElement)external {
//         fixedArray[_index] = _newElement;

//     }

//     function getFirstFiveElementOfFixedArray()external view returns(uint256[5] memory result){
//  for(uint256 index=0; index <5; index++){
//             result[index] = fixedArray[index];

//         }

//         return result;
//     }



}



// contract ArrayDemo {
//     uint[] public numbers = [1,2,3,4,5,6,7,8,9,10];

//     function getEvenNumbers() external view returns(uint[] memory) {
//         // TODO
//     }
// }