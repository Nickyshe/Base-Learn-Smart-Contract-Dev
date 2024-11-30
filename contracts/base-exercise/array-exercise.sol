// SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

contract ArraysExercise{
   
    uint[] public numbers = [1,2,3,4,5,6,7,8,9,10];
    address[] public senders;
    uint[] public timestamps;

    function getNumbers()public view returns(uint[] memory){
    // Return complete array
        return  numbers;
    }

    function resetNumbers() public {
        //clear existing array
        delete numbers;
       // Reinitialize the array with values from 1 to 10
        for (uint i = 1; i <= 10; i++) {
            numbers.push(i); // Add numbers from 1 to 10
    
        }
    }

    function appendToNumbers(uint[] calldata _toAppend) public {

        for(uint i = 0; i < _toAppend.length; i++) {
        numbers.push(_toAppend[i]); // Add each element from _toAppend to numbers
    }

    

    }

    function saveTimestamp(uint _unixTimestamp) public {
        senders.push(msg.sender);
        timestamps.push(_unixTimestamp);

    }

      function afterY2K() external view returns (uint[] memory _timestamps, address[] memory _addresses){
        //timestamps and addresses
        uint result;
        for(uint i=0; i<timestamps.length; i++){
            if(timestamps[i]>=946702800){
                result++;
            }
        }
        uint[] memory filterArray=new uint[](result);
        address[] memory filterAddress=new address[](result);
        uint _count=0;
        for(uint i=0; i<timestamps.length; i++){
            if(timestamps[i]>=946702800){
                filterArray[_count]=timestamps[i];
                filterAddress[_count]=senders[i];
                _count++;
            }
        }
        return  (filterArray,filterAddress);
    }

    function resetSenders() public{
        delete senders;

    }

    
    function resetTimestamps() public{
        delete timestamps;
        
    }


    }



    

  