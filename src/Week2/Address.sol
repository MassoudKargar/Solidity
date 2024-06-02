// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract Address {
    
    address public contractAdr;

    address public ownerAdr;

    constructor() {
        ownerAdr = msg.sender;
        contractAdr = address(this);
    }



    function payment() payable public {
        if(msg.value < 1 ether){
            revert("You need to pay 1 Eth");
        }
         
    }   

    function getContractBalance() public view returns(uint) {
        // return contractAdr.balance; //wei
        return contractAdr.balance/10**18; //Eth
    }

    function getOwnerBalance() public view returns (uint){
        // return ownerAdr.balance; //wei
        return ownerAdr.balance / 10 ** 18; //Eth
    }

    function destructor() public {
        require(ownerAdr == msg.sender, "Not an owner;");
        selfdestruct(payable(ownerAdr));
    } 
}

  /* هر آدرسی در بلاکچین میتواند موجودی داشته باشد
    Address:
        1. Accounts
        2. Contracts

    1 ether = 10^18 wei = 1_000_000_000_000_000_000 wei
    9 ether = 9 * 10^18 wei

    تمام متغیر هایی که مقادیر مالی دا نشان میدهند از نوع 
    uint256 ~ uint

    

    */