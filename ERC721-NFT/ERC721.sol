// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts@4.8.1/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts@4.8.1/utils/Strings.sol";

contract CATHAMBURGER is ERC721 {
    using Strings for uint256;

    constructor() ERC721("CATHAMBURGER", "CAH") {
        }

    function _baseURI() internal pure override returns (string memory) {
        return "./IPFS/.....";
    }

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory){
        super.tokenURI;

        ownerOf(tokenId);
        return string (abi.encodePacked(_baseURI(), tokenId.toString(), ".json"));
    }
    function safeMint(address to, uint256 tokenId) public {
        _safeMint(to, tokenId);

    }
}