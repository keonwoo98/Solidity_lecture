// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract gas {
	/*
	* 1 ether = 10^9 Gwei = 10^18 wei
	* 0.000000000000000001 = 1^-18 = 1 wei
	* 0.01 ether = 10^16 Gwei
	* Gwei는 gas를 낼 때 사용하는 단위
	* gas는 스마트 컨트랙트를 사용할 때 지불하는 비용
	* 사용하고자 하는 스마트 컨트랙트 안에 정의된 코드의 길이에 따라 가스 비용이 책정됨
	* gas의 소비량 계산은 Ethereum Yellow Paper에 나와있음
	*/
	uint256 public value1 = 1 ether;
	uint256 public value2 = 1 wei;
	uint256 public value3 = 1 gwei;
}
/*
* 이더리움에 의하면, 가스를 만든이유는 DDoS(Distributed Denial of Service) 공격에서 좀 더 자유로워 지기 위해서 만들었다고 한다.
* 예를 들어, 해커가 고의적으로 블록체인 네트워크를 다운 시키려고, 스마트 컨트랙트를 지속적으로 작동하게 반복시켜 과부화를 준다고 가정 했을 때,
* 해커는 작동을 반복시킬때마다 Gas 비용을 지불해야한다.
*/
