pragma solidity ^0.4.23;

import './Kgecoin.sol';
import '../node_modules/openzeppelin-solidity/contracts/crowdsale/emission/MintedCrowdsale.sol';

//contract KGEcoinCrowdsale is TimedCrowdsale, MintedCrowdsale{
contract KGEcoinCrowdsale is MintedCrowdsale{
	function KGEcoinCrowdsale
	(
		uint256 _rate, 
		address _wallet, 
		MintableToken _token
	) 
		public
		Crowdsale(_rate, _wallet, _token){}
}
