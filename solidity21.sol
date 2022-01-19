// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

// if 조건문
contract if_conditional {
	string private outcome = "";

	function isIt5(uint256 _number) public returns(string memory) {
		if (_number == 5) {
			outcome = "Yes, it is 5";
			return outcome;
		}
		else {
			outcome = "No, it is not 5";
			return outcome;
		}
	}

	function isIt5or3or1(uint _number) public returns(string memory) {
		if (_number == 5) {
			outcome = "Yes, it is 5";
			return outcome;
		}
		else if (_number == 3) {
			outcome = "Yes, it is 3";
			return outcome;
		}
		else if (_number == 1) {
			outcome = "Yes, it is 1";
			return outcome;
		}
		else {
			outcome = "No, it is not 5, 3, or 1";
			return outcome;
		}
	}
}
