// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

/*
 * 접근 제어자 (함수, 변수에서 사용 가능)
 * public : 어느 곳에서든 접근 가능
 * external : public처럼 어느 곳에서든 접근 하지만, external이 정의된 자기자신의 스마트 컨트랙트는 접근 불가
 * private : 오직 private이 정의된 자기자신의 스마트 컨트랙트에서만 접근 가능
 *			(private이 정의된 현재 이 컨트랙트를 상속받은 자식 컨트랙트는 접근 불가)
 * internal : private처럼 오직 internal이 정의된 자기 자신의 스마트 컨트랙트에서만 접근 가능
 *			(internal이 정의된 현재 이 컨트랙트를 상속받은 자식 컨트랙트도 접근 가능)
 */

contract Access_Modifier {
	// public
	uint256 public a1 = 3;

	// private
	uint256 private a2 = 5;
}

contract Public_example_1 {
	uint256 public a = 3;

	function changeA_1(uint256 _value) public {
		a = _value;
	}
	function get_a() view public returns (uint256) {
		return a;
	}
}

contract Public_example_2 {
	Public_example_1 instance = new Public_example_1();

	function changeA_2(uint256 _value) public {
		instance.changeA_1(_value);
	}
	function use_public_example_1() view public returns (uint256) {
		return instance.get_a();
	}
}

contract private_example {
	uint256 private a = 3;

	function get_a() view public returns (uint256) {
		return a;
	}
}

contract external_example_1 {
	uint256 private a = 3;

	function get_a() view external returns (uint256) {
		return a;
	}
}

contract external_example_2 {
	external_example_1 instance = new external_example_1();

	function external_example_1_get_a() view public returns (uint256) {
		return instance.get_a();
	}
}
