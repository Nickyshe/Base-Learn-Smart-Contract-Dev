// SPDX-License-Identifier: MIT
 
pragma solidity ^0.8.28;
 
contract ErrorTriageExercise {
    /**
     * Finds the difference between each uint with it's neighbor (a to b, b to c, etc.)
     * and returns a uint array with the absolute integer difference of each pairing.
     */
    function diffWithNeighbor(
        uint _a,
        uint _b,
        uint _c,
        uint _d
    ) public pure returns (uint[] memory) {
        uint[] memory results = new uint[](3);

        if(_a > _b){
            results[0] = uint( _a - _b);
            
        }else{
            results[0] = uint( _b - _a);
        }

        if(_b > _c ){
            results[1] =uint (_b - _c);
        
        }else{
            results[1] =uint(_c-_b);
        }
        
        if(_c > _d){
            results[2] =uint(_c - _d) ;
        }else {
            results[2] =uint(_d - _c) ;
        }
 
        // results[0] = _a - _b;
        // results[1] = _b - _c;
        // results[2] = _c - _d;
 
        return results;
    }
 
    /**
     * Changes the _base by the value of _modifier.  Base is always >= 1000.  Modifiers can be
     * between positive and negative 100;
     */
    function applyModifier(
        uint _base,
        int _modifier
    ) public pure returns (uint) {
       
            return uint(int(_base) + _modifier);
        
       // return _base + _modifier;
    }
 
    /**
     * Pop the last element from the supplied array, and return the popped
     * value (unlike the built-in function)
     */
    uint[] arr;
 
    function popWithReturn() public returns (uint) {
        uint index = arr.length - 1;
        uint num = arr[index];

        arr.pop();
        return num;

        
    }
 
    // The utility functions below are working as expected
    function addToArr(uint _num) public {
        arr.push(_num);
    }
 
    function getArr() public view returns (uint[] memory) {
        return arr;
    }
 
    function resetArr() public {
        delete arr;
    }
}