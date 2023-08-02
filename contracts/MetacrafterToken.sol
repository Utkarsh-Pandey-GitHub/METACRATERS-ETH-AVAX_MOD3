
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {

    uint256 private _totalSupply;
    address public owner;
    mapping(address => uint256) private _balances;

    constructor(uint256 initialSupply) ERC20("Token", "UTK") {
        _totalSupply = initialSupply;
        owner = msg.sender;
        _mint(owner, initialSupply);
    }

    function totalSupply() public view override returns (uint256) {
        return _totalSupply;
    }

    function balanceOf(address account) public view override returns (uint256) {
        return _balances[account];
    }

    function transfer(address to, uint256 value) public override returns (bool) {
        address sender = _msgSender();
        _transfer(sender, to, value);
        return true;
    } 

}