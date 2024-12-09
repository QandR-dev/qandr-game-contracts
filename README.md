# QANDR Game Contracts

This repository contains smart contracts for the QANDR gaming ecosystem. These contracts run on EDU Chain and manage in-game assets and interactions.

## Contracts

### GameNFT
The main contract for managing in-game NFTs. NFTs can be burned after being used in the game.

#### Features
- Unlimited minting capability
- NFT price: 0.1 USDT (via marketplace)
- Burnable after in-game usage
- ERC721 standard compliant

#### Functions
- `mint(address to)`: Creates a new NFT
- `burn(uint256 tokenId)`: Burns an NFT
- `totalSupply()`: Shows total NFT count

## Installation

1. Clone the repository:
```bash
git clone https://github.com/QandR-dev/qandr-game-contracts.git
cd qandr-game-contracts
```

## Deployment

1. Open Remix IDE (https://remix.ethereum.org)
2. Upload the contract to Remix
3. Select compiler version 0.8.0 or higher
4. When deploying, provide the owner address as constructor parameter

## Testing

To interact with the deployed contract:
1. Minting NFT: Call the `mint` function
2. Burning NFT: Call the `burn` function with TokenID

## Security

- Contract uses OpenZeppelin libraries
- Burn function can only be called by NFT owner or approved addresses

## License

MIT

