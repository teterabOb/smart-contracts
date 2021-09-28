
pragma solidity ^0.6.7;

contract Mappings{
    string[] names; 
    mapping (string => uint) public phoneNumbers;
    
    function addMobilePhoneNumber(string memory _name, uint _mobileNumber) public{
        phoneNumbers[_name] = _mobileNumber;
    }
    
    function getMobileNumber(string memory _name) public view returns(uint){
        return phoneNumbers[_name];
    }
    
    function changeName(string memory _name) public {
        names.push(_name);
    }
    
    function getName(uint256 _num) public view returns(string memory){
        return names[_num];
    }
}
