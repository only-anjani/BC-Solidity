// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8; //0.8.7 is considered a more stable version
//^ means any version above the specified version of solidity is fine
//>=0.8.7 <0.9.1; means only the versions in between should be used to compile the code

contract SimpleStorage {
    //Solidity types
        //boolean (True or False)
        //uint (usigned int +ve whole number)
        //int (+ve and -ve whole numbers)
        //address (public key or wallet address)
        uint256 public favoriteNumber;
        //This favoriteNumber gets initialised to "0"

        function store(uint256 _favoriteNumber) public{
            favoriteNumber = _favoriteNumber;
        }
}