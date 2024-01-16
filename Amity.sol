// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.9.0/contracts/token/ERC20/ERC20.sol";



contract Token is ERC20 {
    constructor()
        ERC20("Amity Token", "AMT")
    {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }
}
