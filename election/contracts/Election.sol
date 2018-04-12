pragma solidity ^0.4.11;

contract Election {
    
    struct Candidate{
        uint id;
        string name;
        uint voteCount;
    }

    mapping(uint => Candidate) public candidates;
    uint public candidateCounter;
    
    function Election() public {
        addCandidate("Candidate1");
        addCandidate("Candidate2");
    }

    function addCandidate(string _name){
        candidateCounter++;
        candidates[candidateCounter] = Candidate(candidateCounter, _name, 0);
    }

}