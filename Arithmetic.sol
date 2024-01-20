// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;


// Assign students to write a simple arithmetic smart contract on Arbitrum Sepolia to find an odd number, an even number, and most significant bits.


contract Arithmetic {

    function getEvenNumber(uint256 even) public pure returns(bool) { 
    return even % 2 == 0;
   }

   function getOddNumber (uint256 odd) public pure returns(bool) {
    return odd  % 2 != 0;
   } 

   
    function getMostSignificantBit(uint256 _number) public pure returns (uint8 result) {
        if(_number >= 2 ** 128) {
            _number >>= 128;
            result += 128;

        }

        if (_number >= 2 ** 64) {
            _number >>= 64;
            result += 64;
        }

        if (_number >= 2 ** 32) {
            _number >>= 32;
            result += 32;
        }

        if (_number >= 2 ** 16) {
            _number >>= 16;
            result += 16;
        }

        if (_number >= 2 ** 8) {
            _number >>= 8;
            result += 8;
        }

        if (_number >= 2 ** 4) {
            _number >>= 4;
            result += 4;
        }

        if (_number >= 2 ** 2) {
            _number >>= 2;
            result += 2;
        }

        if (_number >= 2) {
            result += 1;
        }

    }
    
}

    
