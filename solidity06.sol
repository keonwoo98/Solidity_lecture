// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

/*
 * view : function 밖의 변수들을 읽을 수 있으나 변경 불가능
 * pure : function 밖의 변수들을 읽지 못하고 변경도 불가능
 * view와 pure 둘 다 명시하지 않으면 function 밖의 변수들을 읽어서 변경해야 함
 */

contract view_pure {
	uint256 public a = 1;

	function view_example() public view returns(uint256) {
		return a + 2;
	}

	function read_and_change() public returns(uint256) {
		a = 3;
		return a + 2;
	}

	function pure_example() pure public returns(uint256) {
		uint256 b = 3;
		return b + 2;
	}
}
