pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";

contract CreatedERC20Votes is ERC20Votes {

    constructor(
      string memory name_,
      string memory symbol_,
      uint256 totalSupply_,
      address owner_) 
      ERC20Votes() ERC20Permit(name_) ERC20(name_, symbol_) {
        _mint(owner_, totalSupply_);
      }
}
