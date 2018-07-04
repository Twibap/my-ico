pragma solidity ^0.4.23;

import '../node_modules/openzeppelin-solidity/contracts/token/ERC20/MintableToken.sol';

// Mint는 박하향의 풀 외에도 조폐국이란 뜻이 있다.
// MintableToken은 추가 발행 가능한 토큰을 구현했다.
// finishMinting()을 호출하면 더이상 발행하지 않는다.
//
// 발행량 제한은 MintableToken을 상속한 컨트랙트에서 구현한다.
// KGEcoin은 발행량을 제한하지 않았다.
contract KGEcoin is MintableToken {
	string public name = "KingGodEmperor COIN";
	string public symbol = "KGE";
	uint8  public decimals = 18;
}
