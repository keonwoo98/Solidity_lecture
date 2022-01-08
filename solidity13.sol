// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.8.0 < 0.9.0;

/*
 * event란 블록체인 네트워크의 블록에 특정 값을 기록하는 것이다.
 * 예를 들어, 송금하기라는 함수가 있을 때 송금 버튼을 누르면,
 * 누른 사람의 계좌와 금액이 event로 출력되어 블록체인 네트워크 안에 기록된다.
 * 이렇게 log를 사용하여 블록에 각인시키는 것은 일반적으로 string이나 다른 값으로
 * 스마트 컨트랙트에 저장하는 것보다 효율적이다.
 * 트랜잭션 log에 event 데이터를 집어넣기 위해선 emit 키워드를 사용한다.
 */

 contract what_is_event {
	 event info(string name, uint256 money);

	 function sendMoney() public {
		 emit info("KimKeonwoo", 1000);
	 }
 }
