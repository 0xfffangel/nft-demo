// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./ERC721Tradable.sol";

contract DemoNFT is ERC721Tradable {
    constructor(address _proxyRegistryAddress)
        ERC721Tradable("DemoNFT", "DNFT", _proxyRegistryAddress)
    {}

    function tokenURI(uint256 tokenId)
        public
        pure
        override
        returns (string memory)
    {
        return
            string(
                abi.encodePacked(
                    "https://raw.githubusercontent.com/0xfffangel/nft-demo/master/assets/asset_",
                    Strings.toString(tokenId),
                    ".json"
                )
            );
    }
}

