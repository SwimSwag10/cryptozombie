/*
pragma solidity >=0.5.0 <0.6.0;

contract ZombieFactory {

    event NewZombie(uint zombieId, string name, uint dna);

    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct Zombie {
        string name;
        uint dna;
    }

    Zombie[] public zombies;

    function _createZombie(string memory _name, uint _dna) private {
        //the "memory" is required for all reference types such as arrays, structs, mappings, and strings.
        //the "public always comes after the parameters and declares that the function is a public funtion on the blockchain.

        zombies.push(Zombie(_name, _dna)); 
        //we are pushing the dna number string to the array of numbers in the struct Zombie. I believe this
        is the make the program more readable on the backend since we are corrisponding each dna with a name.

        uint id = zombies.push(Zombie(_name, _dna)) - 1;
        emit NewZombie(id, _name, _dna);
        //this emits info to the event tag. This can be used on the front end of programs.
    }

    function _generateRandomDna(string memory _str) private view returns (uint) {
        uint rand = uint(keccak256(abi.encodePacked(_str)));
        return rand % dnaModulus;
    }

    function createRandomZombie(string memory _name) public {
        uint randDna = _generateRandomDna(_name);
        _createZombie(_name, randDna);
    }

}

*/