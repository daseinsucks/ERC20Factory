pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Snapshot.sol";

contract CreatedERC20Snapshot is ERC20Snapshot {

    constructor(
      string memory name_,
      string memory symbol_,
      uint256 totalSupply_,
      address owner_) 
     ERC20Snapshot() ERC20(name_, symbol_) {
        _mint(msg.sender, totalSupply_);
      }


}  
      
