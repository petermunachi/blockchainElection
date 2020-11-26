// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

contract Election {
  //Modela Candidate
  struct Candidate {
    uint id;
    string name;
    uint voteCount;
  }
  //Store Candidate
  mapping (uint=>Candidate) public candidates;
  //Fetch Candidate
  //Store Candidate Count
  uint public candidatesCount;


  constructor() public {
    addCandidate("Candidate 1");
    addCandidate("Candidate 2");
  }

  function addCandidate(string memory _name) private {
    candidatesCount++;
    candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
  }

}