// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract CrossToken is ERC20, Ownable {
    constructor() ERC20("Cross Token", "CTX") Ownable(msg.sender) {
    }
    
    function mint_CTXTkn(address receiver, uint256 quantity) public onlyOwner {
        _mint(receiver, quantity);
    }

    function burn_CTXTkn(uint256 quantity) public {
        _burn(msg.sender, quantity);
    }

    function transfer(address receiver, uint256 quantity) public override returns (bool) {
        return super.transfer(receiver, quantity);
    }
}
