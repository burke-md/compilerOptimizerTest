// SPDX-License-Identifier: MIT

pragma solidity ^0.8.14;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Contract is ERC20, Ownable {
    constructor() ERC20("Token", "TKN"){}
    uint256 private counter = 0;

    mapping(address => uint256) addressTotal;

    function mint() external onlyOwner {
        counter++;
        addressTotal[msg.sender]++;
        _mint(msg.sender, 1);
    }

    function getNumTokens() external view returns(uint256 numTokens) {
        return counter;
    }
}
