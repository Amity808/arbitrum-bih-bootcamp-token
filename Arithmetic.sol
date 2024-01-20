// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;


// Assign students to write a simple arithmetic smart contract on Arbitrum Sepolia to find an odd number, an even number, and most significant bits.


contract Arithmetic {

    function getEvenNumber(uint256 even) public pure returns(bool)
   { 
    return even % 2 == 0;
   }

   function getOddNumber (uint256 odd) public pure returns(bool)
   {
    return odd  % 2 != 0;
   } 

   
    function getMostSignificantBit(uint256 _number) public pure returns (uint8) {
        // Ensure the number is not zero
        require(_number > 0, "Number must be greater than zero");

        // Calculate the position of the most significant bit
        uint8 msbPosition = 0;
        uint256 tempNumber = _number;

        while (tempNumber > 1) {
            tempNumber >>= 1;
            msbPosition++;
        }

        return msbPosition;
    }
    
}

    
