// SPDX-License-Identifier: MIT

pragma solidity ^0.8.14;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Contract is ERC20, Ownable {
    constructor() ERC20("Token", "TKN"){}

    function mint(address to, uint256 amout) public onlyOwner {
        _mint(to, amount);
    }
}
