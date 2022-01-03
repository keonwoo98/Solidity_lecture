// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

/*
 * constructor(생성자)는 스마트 컨트랙트가 생성, 배포, 인스턴스화 될 때 초기값을 설정해준다.
 */

contract A {
	string public name;
	uint256 public age;

	constructor(string memory _name, uint256 _age) {
		name = _name;
		age = _age;
	}

	function change(string memory _name, uint256 _age) public {
		name = _name;
		age = _age;
	}
}

contract B {
	A instance = new A("Kevin", 19);

	function change(string memory _name, uint256 _age) public {
		instance.change(_name, _age);
	}

	// 솔리디티에서는 함수의 반환값을 여러개 지정할 수 있다.
	function get() public view returns(string memory, uint256) {
		return (instance.name(), instance.age());
	}
}

/*
 * 스마트 컨트랙트 자체도 무겁고 인스턴스화 해야하는 것도 많다면 가스 소비량이 너무 많아진다.
 * 비용적인 측면 외에도 블록마다 가스를 소비할 수 있는 량이 제한적이기 때문에 제한양을 초과해버리면,
 * 이더리움 자체에서 에러가 나고 스마트 컨트랙트를 배포하지 못 할 것이다.
 * 가스 제한을 두는 이유는 보안적인 측면에 있다.
 */
