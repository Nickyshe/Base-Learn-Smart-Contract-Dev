// SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

contract FavoriteRecords{
    //state variables
    mapping(string => bool) public approvedRecords;
    mapping (address => mapping(string => bool)) public userFavorites;

  
        string[]  approvedAlbum = [
            "Thriller",
            "Back in Black",
            "The Bodyguard",
            "The Dark Side of the Moon",
            "Their Greatest Hits (1971-1975)",
            "Hotel California",
            "Come On Over",
            "Rumours",
            "Saturday Night Fever"
        ];
        //loading approved album
        constructor() {
            for (uint i = 0; i < approvedAlbum.length; i++) {
            approvedRecords[approvedAlbum[i]] = true;
        }

        }
// function to get approved records
         function getApprovedRecords()public view  returns(string[] memory){
        return  approvedAlbum;

    }

 error NotApproved(string);

//add records to the user favourites
 function addRecord(string memory _album)public {
        if(!approvedRecords[_album]){
            revert NotApproved(_album);
        }
         userFavorites[msg.sender][_album]= true;
    }


    //This function retrieves the list of favorites for a provided address memory
    function getUserFavorites(address user) public view returns (string[] memory)
    {
        uint count = 0;
        for (uint i = 0; i < approvedAlbum.length; i++) {
            if (userFavorites[user][approvedAlbum[i]]) {
                count++;
            }
        }

        string[] memory favorites = new string[](count);
        uint index = 0;
        for (uint i = 0; i < approvedAlbum.length; i++) {
            if (userFavorites[user][approvedAlbum[i]]) {
                favorites[index] = approvedAlbum[i];
                index++;
            }
        }

        return favorites;
    }


// function to reset user favorite
    function resetUserFavorites() public  {
        for (uint i = 0; i < approvedAlbum.length; i++) {
            delete userFavorites[msg.sender][approvedAlbum[i]];
        }
    }
   

      
}