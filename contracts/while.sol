// SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

// contract WhileLoop{
//     uint256[] data;
//     uint8 k = 0;
//     function loop()public returns(uint256[] memory){
//         while(k < 5){
//             k++;
//             data.push(k);
//         }
//         return  data;
//     }
// }

// contract DoWhile{
//     // do{
//     //     block of statement to be executed
//     // }while{condition}

//     uint256[] data;
//     uint8 j = 0;

//     function loop()public returns(uint256[] memory){
//         do{
//             j++;
//             data.push(j);
//         }while (j < 5);
//         return data;
//     }
// }

contract ForLoop{
    // for(initialization; test condition; iteration statement){
    //     statement or block to be executed
    // }

    uint256[] data;

    function loop() public  returns (uint256[] memory){
        for(uint256 i =0; i < 5; i++){
            data.push(i);
        }

        return data;
    }
}