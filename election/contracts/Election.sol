pragma solidity ^0.4.11;

contract Election {
    
    struct Candidate{
        uint id;
        string name;
        uint voteCount;
    }

    mapping(uint => Candidate) public candidates;

    //once a voter in the mapping has been set to true, do not allow them to vote again
    mapping(address => bool) public voters;
    uint public candidatesCount;
    
    function Election() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    function addCandidate(string _name){
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    function vote(uint _candidateID) public {

        require(voters[msg.sender] == false);
        require(_candidateID >0 && _candidateID <= candidatesCount);

        voters[msg.sender] = true;
        candidates[_candidateID].voteCount++;

        //record voter has voted
    }

}