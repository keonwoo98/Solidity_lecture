// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract data_type {
	/*
	* Data Type
	* boolean, bytes, address, uint
	*
	* Referenct Type
	* string, arrays, struct
	*
	* Mapping Type
	*/

	// 1. boolean : true / false
	bool public b = false;

	// ! || == && 연산자 사용가능
	bool public b1 = !false;			// true;
	bool public b2 = false || true;		// true;
	bool public b3 = false == true;		// false;
	bool public b4 = false && true;		// false;

	// 2. bytes : 1 ~ 32bytes까지 저장 가능
	bytes4 public bt1 = 0x12345678;		// byte 수 명시 가능
	bytes public bt2 = "STRING";		// 길이만큼 byte 자동 할당됨

	// 3. address : eth를 송수신 할 때 이 address를 통해 주고받음, smart contract마다 address 생성됨
	address public addr = 0xd8b934580fcE35a11B58C6D73aDeE468a2833fa8;

	// 4. int vs uint
	// int8 : -2^7 ~ 2^7-1
	int8 public it = 4;
	// uint8 : 0 ~ 2^8-1
	uint8 public uit1 = 123;
	// uint256 : 0 ~ 2^256-1
	uint256 uit2 = 132213;

	// + - * / % ** 연산자 사용가능
}
