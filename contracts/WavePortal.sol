// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
  uint256 totalWaves;
  string[] wavers;
  constructor() {
    console.log("Halo Semua, ini WavePortal");
  }
  function wave() public {
    totalWaves++;
    console.log("%s has waved", msg.sender);
  }
  function getTotalWaves() public view returns (uint256) {
    console.log("We have %d total waves!", totalWaves);
    return totalWaves;
  }
  function addWavers(string memory waver) public {
    wavers.push(waver);
    console.log("%s has joined as wavers", waver);
  }
  function iterateWavers()  public view {
    console.log("We have %d wavers", wavers.length);
    for(uint i=0;i<wavers.length ;i++) {
      console.log("%d . %s as wavers",i + 1, wavers[i]);
    }
  }
}