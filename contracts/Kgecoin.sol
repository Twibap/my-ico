pragma solidity ^0.4.23;

import '../node_modules/openzeppelin-solidity/contracts/token/ERC20/MintableToken.sol';

contract KGEcoin is MintableToken {
	string public name = "KingGodEmperor COIN";
	string public symbol = "KGE";
	uint8  public decimals = 18;
}
