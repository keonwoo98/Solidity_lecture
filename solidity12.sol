// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

/*
 * Solidity에서는 2개 이상의 컨트랙트를 상속받을 수 있다.
 * 만약 상속할 컨트랙트들에 같은 이름의 함수가 있다면 해당 함수는 override해야 한다.
 * 상속할 컨트랙드들의 함수에는 virtual이라고 명시해주고
 * 상속 받을 컨트랙트에서는 override(중복 이름의 함수를 가진 컨트랙트들)을 명시해주어야 한다.
 */

contract Father {
	uint256 public fatherMoney = 100;
	
	function getFatherName() public pure returns(string memory) {
		return "KimFather";
	}

	function getMoney() public view virtual returns(uint256) {
		return fatherMoney;
	}
}

contract Mother {
	uint256 public motherMoney = 500;

	function getMotherName() public pure returns(string memory) {
		return "LeeMother";
	}

	function getMoney() public view virtual returns(uint256) {
		return motherMoney;
	}
}

contract Son is Father, Mother {
	function getMoney() public view override(Father, Mother) returns(uint256) {
		return fatherMoney + motherMoney;
	}
}
