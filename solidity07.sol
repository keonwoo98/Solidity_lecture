// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

/*
 * storage : 대부분의 변수, 함수들이 저장되며, 영속적으로 저장이되어 가스 비용이 비싸다.
 * memory : 함수의 파라미터, 리턴값, 레퍼런스 타입이 주로 저장된다.
 * 그러나 storage처럼 영속적이지 않고, 함수 내에서만 유효하기 때문에 storage보다 가스 비용이 싸다.
 * colldata : 주로 external function의 파라미터에서 사용된다.
 * stack : EVM(Ethereum Virtual Machine)에서 stack data를 관리할 때 쓰는 영역이며 1024Mb 제한이 있다.
 */

contract str_contract {
	// string은 사실 기본 data type이 아니라 레퍼런스 타입이라고 볼 수 있기 때문에 memory 키워드를 명시해주어야 한다.
	function get_string(string memory _str) public pure returns(string memory) {
		return _str;
	}

	function get_uint(uint256 _ui) public pure returns(uint256) {
	// uint256은 기본 data type이기 때문에 memory default로 되어 있어서 따로 명시하지 않아도 된다.
		return _ui;
	}
}
