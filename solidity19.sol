// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

/*
 * Mapping과 Array 사용 시 주의할 점
 * 아래 컨트랙트에서 changeNum() 함수로는 mapping과 array의 값을 변경할 수 없다.
 * 왜냐하면 num의 reference로 저장하는게 아니라, 그 당시 값만 캡쳐해서 들고 오기 때문이다.
 * 따라서 값 변경을 위해서는 각각의 update 함수를 통해 변경해야한다.
 */

contract caution {
	uint256 num = 42;
	mapping(uint256 => uint256) numMap;
	uint256[] numArray;

	function changeNum(uint256 _num) public {
		num = _num;
	}

	function showNum() public view returns(uint256) {
		return num;
	}

	function numMapAdd() public {
		numMap[0] = num;
	}

	function showNumMap() public view returns(uint256) {
		return numMap[0];
	}

	function UpdateMap() public {
		numMap[0] = num;
	}

	function numArrayAdd() public {
		numArray.push(num);
	}

	function showNumArray() public view returns(uint256) {
		return numArray[0];
	}

	function updateArray() public {
		numArray[0] = num;
	}
}
