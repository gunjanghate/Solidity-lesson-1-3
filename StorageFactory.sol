// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
    // SimpleStorage public simpleStorage; //case sensitive so, SimpleStorage is Contract and simpleStorage is variable

    
    // function createSimpleStorageContract() public{
    //     simpleStorage = new SimpleStorage();
    // }
     SimpleStorage[] public listofSimpleStorageContracts; // Store multiple contracts
    //  address[] public listOfSimpleStorageAddresses;
    function createSimpleStorageContract() public {
        SimpleStorage newContract = new SimpleStorage();
        listofSimpleStorageContracts.push(newContract); // Store the reference
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        //Things required to interact with contract 
        //Address, ABI (Application Binary Interface)

        // SimpleStorage mySimpleStorage = listofSimpleStorageContracts[_simpleStorageIndex];
        listofSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
        // SimpleStorage mySimpleStorage = SimpleStorage(listOfSimpleStorageAddresses[_simpleStorageIndex]);
    }

    function sfGet(uint256 _index) public view returns(uint256){
        // SimpleStorage mySimpleStorage = listofSimpleStorageContracts[_index];
        return listofSimpleStorageContracts[_index].retrieve1();
    }



}