pragma solidity ^0.4.11;

contract Election {
    
    struct Candidate{
        uint id;
        string name;
        uint voteCount;
    }

    mapping(uint => Candidate) public candidates;
    uint public candidatesCount;
    
    function Election() public {
        addCandidate("Candidate1");
        addCandidate("Candidate2");
    }

    function addCandidate(string _name){
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

}