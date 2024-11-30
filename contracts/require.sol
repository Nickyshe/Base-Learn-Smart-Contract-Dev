// SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

contract Require{
    function checkInput(uint256 _input) public pure returns(string memory){
        require(_input >= 0, "invalid uint8");
       // require(_input <= 255, "invalid uint");
        return "Input is Uint8";
    }

//     function Odd(uint256 _input) public pure returns(bool){
//         require(_input % 2 != 0);
//         return true;
//     }
// }

// contract AssertStatement {
//     bool public  result;

//     function checkOverFlow(uint256 _num1, uint256 _num2) public {
//         uint256 sum = _num1 + _num2;
//         assert(sum <=255);
//         result = true;
//     }

//     function getResult()public  view returns (string memory){
//         if(result == true){
//             return "No overflow";
//         }else{
//             return "Overflow exists";
//         }
//     }
    
// }

// contract RevertStatement{
//     function checkOverflow(uint256 _num1, uint256 _num2) public pure returns(string memory, uint){
//         uint256 sum = _num1 + _num2;

//         if(sum < 0 || sum > 255){
//             revert("overflow exists");
//         }else {
//             return("No overflow", sum);

//         }
//     }
}