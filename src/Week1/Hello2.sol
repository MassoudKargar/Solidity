// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Hello {
    string  public helloStr;

    constructor() {
        helloStr = "Hello World!";
    }



    function setHello(string memory newValue) public  {
        helloStr = newValue;
    }

    function getHello() public view returns(string memory) {
        return helloStr;
    }

    
    function getHello2() public view returns(string memory output) {
        output = helloStr;
    }

    function getHello3() public pure returns(string memory) {
        string memory  memoryVariable = "Output from memory Variable!";
        return memoryVariable;
    }



    // گرفتن خروجی فقط در توابع ویو و پیور امکانپذیر است
    function getHello4() public returns(string memory) {
        helloStr = "Masoud";
        return helloStr;
    }

    function getHello5() public pure returns(string memory,string memory) {
        string memory newStr1 = "Welcome";
        string memory newStr2 = "to solidity";
        return (newStr1,newStr2);
    }
}

/*
    فانکشن های سالیدیتی 

    function functionName(<input parameters>) < access modifier> <state mutabiilty> returns(output types){
        return <output variables>;    
    }
*/

/*
    memory: در ورودی / خروجی / بدنه تابع : string, struct , array , mapping , bytes
    access modifier : public , private , internal , external 
    state mutability : pure , view 
    memory types : storage , memory , call_data/stack
*/