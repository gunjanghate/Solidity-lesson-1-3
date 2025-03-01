// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; //stating our version

contract SimpleStorage {
    // Basic Types: boolean, uint(unsigned integer), int, address,bytes
    uint256 public favNumber; // default : 0

    // uint256[] listOfFavNum; 

    struct Person{
        uint256 MyfavNumber;
        string name;
    }

    // Person public myFriend = Person({
    //     MyfavNumber: 7, name: "Hey"
    // });
   //dynamic array [] any size
   //static array [3] only upto size 3
    Person[] public people; //Array of person struct
    //mapping
    mapping(string => uint256) public nameToFavNumber;

    //calldata, memory, storage
    function addPerson(string memory _name, uint256 _favNumber) public{
        // Person memory newPerson = Person(_favNumber, _name);
        // people.push(newPerson);
        people.push(Person(_favNumber, _name));
        nameToFavNumber[_name ]= _favNumber;

    }

    function store(uint256 _favNumber) public virtual{
        favNumber = _favNumber;
        //  retrieve1();
        //  retrieve2();
    }
    //view, pure 
    // view : reads stste from the blockchain, this function disallow updating states
    // pure : disallows reading as well as updating state 
    function retrieve1() public view returns(uint256){
        return favNumber;
    }
    function retrieve2() public pure returns(uint256){
        return 7;
    }



}