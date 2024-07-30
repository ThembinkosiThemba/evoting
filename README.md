## Evoting
This is a simple evoting system using Solidity.

The idea is to create one contract per ballot, providing a short name for each option. Then the creator of the contract who serves as chairperson will give the right to vote to each address individually.

The persons behind the addresses can then choose to either vote themselves or to delegate their vote to a person they trust.

At the end of the voting time, winningProposal() will return the proposal with the largest number of votes.

## Getting Started

### Build

```sh
git clone https://github.com/ThembinkosiThemba/evoting.git
cd evoting
forge build
```

### Running the project
```sh
anvil
forge script script/Voter.s.sol --rpc-url http://localhost:8545 --broadcast
```

### Test

```shell
$ forge test
```