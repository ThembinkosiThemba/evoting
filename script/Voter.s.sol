// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

import {Script, console} from "forge-std/Script.sol";
import {Ballot} from "../src/Voter.sol";

contract CounterScript is Script {
    function run() public {
        bytes32[] memory proposalNames = new bytes32[](2);
        proposalNames[0] = "Bane";
        proposalNames[1] = "Bruce";

        vm.startBroadcast();

        Ballot ballot = new Ballot(proposalNames);

        console.log("Ballot contract deployed to:", address(ballot));

        vm.stopBroadcast();
    }
}
