// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

/*
 * 컨트랙트를 상속함에 따라서 상속받은 함수를 수정해서 다르게 사용하는 방식을 overriding이라고 한다.
 * 즉 상속받은 함수를 덮어쓰기 한다고 볼 수 있다.
 * Overriding을 하기 위해서는, Overriding할 함수에 virtual을 명시해 주어야 한다.
 * 그리고 상속된 함수에는 override를 명시해야 한다.
 */

contract Father {
	string public familyName = "Kim";
	string public givenName = "Steve";
	uint256 public money = 100;

	constructor(string memory _givenName) public {
		givenName = _givenName;
	}

	function getFamilyName() view public returns(string memory) {
		return familyName;
	}

	function getGivenName() view public returns(string memory) {
		return givenName;
	}

	function getMoney() view public virtual returns(uint256) {
		return money;
	}
}

contract Son is Father {

	constructor() Father("Alex") {
		// contract Son is Father("Alex") 와 동일한 결과
	}

	uint256 public earning = 0;
	function work() public {
		earning += 100;
	}

	function getMoney() view public override returns(uint256) {
		return money + earning;
	}
}
