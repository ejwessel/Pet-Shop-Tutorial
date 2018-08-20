pragma solidity ^0.4.17;

//Truffle imports come from global npm packages
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol"; //Smart contract gets the addresses of the deployed contract

//Imports come from directory structure
import "../contracts/Adoption.sol"; //The smart contract we want to test

contract TestAdoption {
    Adoption adoption = Adoption(DeployedAddresses.Adoption());

    // Test the adopt() function
    function testUserCanAdoptPet() public {
        uint returnedId = adoption.adopt(8);
        uint expected = 8;
        Assert.equal(returnedId, expected, "Adoption of pet ID 8 should be recoreded.");
    }

    // Testing retrieval of a single pet's owner
    function testGetAdopterAddressByPetId() public {
        //Get expected owner of this contract
        address expected = this;
        //Get Adoptoer for pet id 8
        address adopter = adoption.adopters(8);
        Assert.equal(adopter, expected, "Owner of pet ID 8 should be recorded.");
    }

    // Testing retrieval of all pet owners
    function testGetAdopterAddressByPetIdInArray() public {
        //Get expected owner in this contract
        address expected = this;
        //Store adaptors in memory rather than in contract's storage
        address[16] memory adopters = adoption.getAdopters();
        Assert.equal(adopters[8], expected, "Owner of pet ID 8 should be recorded.");
    }
}
