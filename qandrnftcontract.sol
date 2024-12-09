// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract Qandr is ERC721, Ownable {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor(address initialOwner) 
        ERC721("Qandr", "QNRNFT") 
        Ownable(initialOwner) 
    {}

    function mint(address to) public returns (uint256) {
        _tokenIds.increment();
        uint256 newTokenId = _tokenIds.current();
        
        _safeMint(to, newTokenId);
        return newTokenId;
    }

  
    function burn(uint256 tokenId) public {
        require(ownerOf(tokenId) == _msgSender() || getApproved(tokenId) == _msgSender(), 
                "Caller is not owner nor approved");
        _burn(tokenId);
    }


    function totalSupply() public view returns (uint256) {
        return _tokenIds.current();
    }
}
