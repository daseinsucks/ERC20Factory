pragma solidity ^0.8.0;

import "./CreatedERC20.sol";
import "./CreatedERC20Snapshot.sol";
import "./CreatedERC20Votes.sol";

contract Factory {


event tokenCreated(address tokenAddress);

constructor() public {}

function deployToken (
        string calldata name,
        string calldata symbol,
        uint256 totalSupply,
        uint256 tokenType

) public returns (address) {
    uint totalSupply_ = totalSupply * 1e18;

    if (tokenType == 0) {
   _deployNewERC20(name, symbol, totalSupply_);

} else  if (tokenType == 1) {
   _deployNewERC20Snapshot(name, symbol, totalSupply_);

} else  if (tokenType == 2) {
   _deployNewERC20Votes(name, symbol, totalSupply_);
}
}

 function _deployNewERC20(
        string calldata name,
        string calldata symbol,
        uint256 totalSupply
        
    ) internal returns (address) {
        CreatedERC20 token = new CreatedERC20(
            name,
            symbol,
            totalSupply,
            msg.sender
        );
        emit tokenCreated(address(token));

        return address(token);
    }


 function _deployNewERC20Snapshot(
        string calldata name,
        string calldata symbol,
        uint256 totalSupply
    ) internal returns (address) {
        CreatedERC20Snapshot token = new CreatedERC20Snapshot(
            name,
            symbol,
            totalSupply,
            msg.sender
        );
        emit tokenCreated(address(token));

        return address(token);
    } 

    function _deployNewERC20Votes(
        string calldata name,
        string calldata symbol,
        uint256 totalSupply
    ) internal returns (address) {
        CreatedERC20Votes token = new CreatedERC20Votes(
            name,
            symbol,
            totalSupply,
            msg.sender
        );
        emit tokenCreated(address(token));

        return address(token);
    }   

}  
      
