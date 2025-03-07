// SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

contract ErrorType{

// Bad code example, do not use
//Type error
// function compilerTypeError() public pure returns (uint) {
//     uint myNumber = "one";
//     return myNumber;
// }

// Bad code example, do not use
//conversion error
// function compilerConversionError() public pure returns (uint) {
//  int8 first = 1;
 
//     return first;
// }


// // Bad code example, do not use
// //operator error
// function compilerOperatorError() public pure returns (uint) {
//     int8 first = 1;
//     uint256 second = 2;
 
//     uint sum = first + second;
 
//     return sum;
// }

// Bad code example, do not use
//stack depth limit
// function stackDepthLimit() public pure returns (uint) {
//         uint first = 1;
//         uint second = 2;
//         uint third = 3;
//         uint fourth = 4;
//         uint fifth = 5;
//         uint sixth = 6;
//         uint seventh = 7;
//         uint eighth = 8;
//         uint ninth = 9;
//         uint tenth = 10;
//         uint eleventh = 11;
//         uint twelfth = 12;
//         uint thirteenth = 13;
//         uint fourteenth = 14;
//         uint fifteenth = 15;
//         uint sixteenth = 16;
 
//         return first +
//                 second +
//                 third +
//                 fourth +
//                 fifth +
//                 sixth +
//                 seventh +
//                 eighth +
//                 ninth +
//                 tenth +
//                 eleventh +
//                 twelfth +
//                 thirteenth +
//                 fourteenth +
//                 fifteenth +
//                 sixteenth;
//     }

// Bad code example, do not use

// function badGetLastValue() public pure returns (uint) {
//     uint[4] memory arr = [uint(1), 2, 3, 4];
 
//     return arr[arr.length];
// }

function badSubtraction() public pure returns (uint) {
    uint first = 1;
    uint second = 2;
    return first - second;
}
}


