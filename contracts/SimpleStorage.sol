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
        //This favoriteNumber gets initialised to "0", as no number is specified
        uint256 favoriteNumber;

        mapping(uint256 => string) public nameOfFavoritreNumber;

        struct People{
            uint256 favoriteNumber;
            string name;
        }

        //[] is the symbol of array. Array is a dataset used to create lists.
        People[] public people;

        function store(uint256 _favoriteNumber) public{
            favoriteNumber = _favoriteNumber;
        }

        function retrieve() public view returns(uint256){
            return favoriteNumber;
        }

        function addPerson(string memory _name, uint256 _favoriteNumber) public {
            People memory newPerson = People({favoriteNumber: _favoriteNumber, name: _name});
            people.push(newPerson);
            nameOfFavoritreNumber[_favoriteNumber] = _name;
        }
}