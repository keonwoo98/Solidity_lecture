// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

/*
 * instance는 주로 하나의 컨트랙트에서 다른 컨트랙트를 접근할 때 쓰인다.
 * A와 B 컨트랙트가 있다고 가정했을 때, B에서 A의 함수나 변수를 접근하여 사용하고 싶다면
 * A 인스턴스를 만들어 B 컨트랙트 안에서 사용하면 된다.
 * 형식 : 컨트랙트_이름 인스턴스_이름 = new 컨트랙트_이름()
 */

contract A {
	uint256 public a = 5;

	function change(uint256 _value) public {
		a = _value;
	}
}

contract B {
	// instance는 A 컨트랙트의 복사본과 같기 때문에 값을 변경해도 A 자체에 영향을 주지 않는다.
	A instance = new A();

	// 변수에 접근할 때는 ()를 붙여주어야 한다.
	function get_A() public view returns(uint256) {
		return instance.a();
	}
	
	function change_A(uint256 _value) public {
		instance.change(_value);
	}
}
