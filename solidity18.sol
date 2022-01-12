// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

/*
 * Array(배열)
 * 형식 : 타입[] 접근제한자 변수이름
 * 배열은 mapping과 다르게 length 값을 구할 수 있다.
 * Stack Exchange에 따르면 솔리디티에서는 배열보다는 mapping을 좀 더 선호한다고 한다.
 * 배열의 장점은 모든 요소들을 순회할 수 있다는 것인데 이것이 솔리디티에서는 문제가 될 수 있다.
 * 순회가 가능하면 DDoS 공격에 취약할 수 있기 때문이다.
 * 예를 들어, 해커가 특정 배열을 악의적으로 무한반복을 시킨다면,
 * 가스와 이더리움 블록체인 네트워크를 과부화 시키는 등의 DDoS 공격의 여지가 있기 때문이다.
 */

contract Array {
	uint256[] public ageArray;	// 길이 제한 X
	uint256[10] public ageFixedSizeArray;	// 배열 길이 고정
	string[] public nameArray = ["Tom", "Andrew", "Tobey"];	// 선언 + 초기화

	function AgeLength() public view returns(uint256) {
		// 배열의 길이 구하기
		return ageArray.length;
	}

	function AgePush(uint256 _age) public {
		// 배열에 요소 추가
		ageArray.push(_age);
	}

	function AgeChange(uint256 _index, uint256 _age) public {
		// 지정한 index 자리에 기존의 값을 _age로 교체
		// 배열 범위 밖의 index를 전달할 경우 error
		ageArray[_index] = _age;
	}

	function AgeGet(uint256 _index) public view returns(uint256) {
		// index로 배열의 요소 찾기
		return ageArray[_index];
	}

	function AgePop() public {
		// 제일 최신의 값(마지막 index) 삭제
		// length--;
		ageArray.pop();
	}

	function AgeDelete(uint256 _index) public {
		// 지정한 index에 있는 요소 삭제
		// length는 줄어들지 않고 그 자리에 0이 들어감(Pop처럼 완전히 삭제되는 것이 아님)
		delete ageArray[_index];
	}
}
