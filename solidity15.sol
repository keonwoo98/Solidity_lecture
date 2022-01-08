// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

/*
 * 함수의 상속이 이루어질 때 만약 오버라이딩한 함수의 내용이 굉장히 길다면 번거로울 것이다.
 * 그럴 때 super 키워드를 쓸 수 있다.
 * super를 쓰면 컨트랙트의 event를 그대로 들고올 수 있다.
 */

contract Father {
	event FatherName(string name);
	function who() public virtual {
		emit FatherName("KimFather");
	}
}

contract Son is Father {
	event SonName(string name);
	function who() public override {
		super.who();
		emit SonName("KimSon");
	}
}
