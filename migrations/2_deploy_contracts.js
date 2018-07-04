// var Ownable = artifacts.require("Ownable");

// NOTE: Use this file to easily deploy the contracts you're writing.
//   (but make sure to reset this file before committing
//    with `git checkout HEAD -- migrations/2_deploy_contracts.js`)

const KGEcoinCrowdsale = artifacts.require("./KgecoinCrowdsale.sol");
const KGEcoin = artifacts.require("./Kgecoin.sol");

module.exports = function (deployer, network, accounts) {
	const rate = new web3.BigNumber(1000);
	const wallet = accounts[0];	// delpoy 시 수수료 지불 및 입금 수취 계좌

	deployer.deploy(KGEcoin)
		.then(function(){
			return deployer.deploy(
				KGEcoinCrowdsale, rate, wallet, KGEcoin.address);
		});
	
};
