// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract StateTransition {
    
    uint startTime;
    uint currentTime;

    enum State{
        Reg, //0
        Vote,//1
        Count//2
    }
    State state;

    constructor(){
    }

    function start() public {
        startTime = block.timestamp;
        currentTime = block.timestamp;
        state = State.Reg;
    }

    function updateState() public {
        currentTime = block.timestamp;
        if(currentTime <= (startTime + 10 seconds)){
            state = State.Reg;
        } 
        else if(currentTime <= (startTime + 20 seconds)){
            state = State.Vote;
        }
        else {
            state = State.Count;
        }
    }

    function getState() public view returns(string memory){
        string memory stateStr;
        if(state == State.Reg){
            stateStr = "Reg";
        }  else if(state == State.Vote){
            stateStr = "Vote"; 
        }  else if(state == State.Count){
            stateStr = "Count";
        }
        return stateStr;
    } 

    function getStartTime() public view returns(uint){
        return startTime;
    }
    
    function getCurrentTime() public view returns(uint){
        return block.timestamp; 
    }
    
    function getLastUpdateTime() public view returns(uint){
        return currentTime;
    }
}