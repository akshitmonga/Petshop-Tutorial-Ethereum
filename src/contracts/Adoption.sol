// pragma Solidity ^0.4.4;

pragma solidity ^0.4.19;


contract Adoption {
    address[16] public adopters;

    // give confirm id when person adopted a pet 
    function adopt(uint petId) public returns (uint) {  
        require(petId >= 0 && petId <= 15);

        adopters[petId] = msg.sender;
        
        return petId;
    }   

    function getAdopters() public returns (address[16]) {
        return adopters;

    }    
}