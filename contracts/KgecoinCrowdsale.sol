pragma solidity ^0.4.23;

import './Kgecoin.sol';
import '../node_modules/openzeppelin-solidity/contracts/crowdsale/emission/MintedCrowdsale.sol';

// truffle migrate --network ropsten 후 토큰 발행하기
// truffle console --network ropsten 실행

// Contract Instance 만들기
// KGEcoinCrowdsale.deployed().then(inst => {KGEcrowdsaleInstance = inst})
// Coin Instance 만들기
// KGEcrowdsaleInstance.token().then(addr => {KGEcoinAddr = addr})
// KGEcoinInstance = KGEcoin.at(KGEcoinAddr)

// 토큰을 발행하기 전, 토큰 Contract의 소유권을 
// 토큰 발행 Contract에게 옮겨놔야 한다.
// KGEcoinInstance.transferOwnership(KGEcrowdsaleInstance.address)

// 그리고 이더를 전송하면 전송한 계좌에 토큰이 추가된다.
// KGEcrowdsaleInstance.sendTransaction({from: purchaser, value: web3.toWei(5,"ether")})
// 이더를 전송할 때 Geth에서 계좌 잠금을 풀어야 한다.
// personal.unlockAccount(eth.accounts[0])

// KGEcoin Contract 소유권 이전 후 Metamask에서 사용하는 방법
// KGEcoinAddr을 토큰 추가에 등록한다. 
// KGEcrowdsaleInstance.address에 송금한다.
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
