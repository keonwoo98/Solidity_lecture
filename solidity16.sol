// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

/*
 * 상속의 순서는 가장 마지막에 상속한 컨트랙트가 우선이 된다.
 * 아래 코드에서 contract Son is Father, Mother 와 같이 상속을 했을 때,
 * Mother가 더 뒤에 쓰였으므로 상속된 who함수는 Mother 컨트랙트에서 가져오게 된다.
 */

contract Father {
	event FatherName(string name);
	function who() public virtual {
		emit FatherName("KimFather");
	}
}

contract Mother {
	event MotherName(string name);
	function who() public virtual {
		emit MotherName("LeeMother");
	}
}

contract Son is Father, Mother {
	event SonName(string name);
	function who() public override(Father, Mother) {
		super.who();
		emit SonName("KimSon");
	}
}
