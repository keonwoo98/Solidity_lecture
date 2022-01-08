// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

/*
 * indexed는 event의 키워드이다.
 * indexed는 특정한 event의 값들을 들고올 때 사용된다.
 * 사실상 event를 emit하여 블록에 넣는다고 해도 블록은 계속 생성되고 여러 event에 겹치게 될 것이다.
 * 그럴 때 indexed를 사용하여 블록들 안에 출력된 event들을 필터하여 원하는 event만을 들고올 수 있게 된다.
 */

contract event_indexed {
	event numberTracker1(uint256 num, string str);
	event numberTracker2(uint256 indexed num, string str);

	uint256 num = 0;
	function PushEvent(string memory _str) public {
		emit numberTracker1(num, _str);
		emit numberTracker2(num, _str);
		num++;
	}
}
