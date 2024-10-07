// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;


// import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";


// contract NFT is ERC721URIStorage {
//     uint public tokenCount;

//     constructor() ERC721("DAPP NFT","DAPP"){}

//     function  mint(string memory _tokenURI) external returns(uint) {
//         tokenCount++;
//         _safeMint(msg.sender,tokenCount);
//         _setTokenURI(tokenCount,_tokenURI);
//         return(tokenCount);
//     }
// }

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract NFT is ERC721URIStorage {
    uint public tokenCount;
    constructor() ERC721("DApp NFT", "DAPP"){}
    function mint(string memory _tokenURI) external returns(uint) {
        tokenCount ++;
        _safeMint(msg.sender, tokenCount);
        _setTokenURI(tokenCount, _tokenURI);
        return(tokenCount);
    }
}