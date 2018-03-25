pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Babushkin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Babushkin(address _owner)  UpgradeableToken(_owner) {
    name = "Babushkin";
    symbol = "BIA";
    totalSupply = 900000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}