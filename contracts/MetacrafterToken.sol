// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {
    uint256 public initialSupply=10000;
    constructor() ERC20("Gold", "GLD") {
        _mint(msg.sender, initialSupply);
    }

    function giveValue()public view returns(uint256){
        return initialSupply;
    }
}