// SPDX-License-Identifier: UNLISCENSED 

pragma solidity ^0.8.15;

contract Counter{
    uint public count;
    string public name;

    constructor(string memory _name, uint _initialCount){
        name=_name;
        count=_initialCount;
    }

    function  increament() public returns (uint256 newCount ){
        count++;
        return count;
    }

    function decreament() public returns(uint256 newCount){
        count--;
        return count;
    }
    function getCount() public view returns(uint){
        return count;
    }

    function getName() public view returns(string memory currentName){
        return name;
    }

    function setName(string memory _newName) public  returns(string memory newName){
        name= _newName;
        return name;
    }
    
}

