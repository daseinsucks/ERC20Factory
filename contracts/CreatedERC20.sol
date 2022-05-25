pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract CreatedERC20 is ERC20 {

    constructor(
      string memory name_,
      string memory symbol_,
      uint256 totalSupply_,
      address owner_) 
      ERC20(name_, symbol_) {
        _mint(msg.sender, totalSupply_);
      }

}  
      
