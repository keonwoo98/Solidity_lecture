// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

/*
 * mapping에는 key와 value 값이 존재한다.
 * key를 넣어주면 value값을 얻을 수 있다.
 * 형식 : mapping(key타입 => value타입) 접근제한자 변수이름
 * mapping은 length 내장함수가 없기 때문에 length를 구할 수 없다.
 */

contract what_is_mapping {
	mapping(string => uint256) private priceList;
	mapping(uint256 => string) private nameList;
	mapping(uint256 => uint256) private ageList;

	function setPriceList(string memory _itemName, uint256 _price) public {
		priceList[_itemName] = _price;
	}

	function getPriceList(string memory _key) public view returns(uint256) {
		return priceList[_key];
	}

	function setNameList(uint256 _age, string memory _name) public {
		nameList[_age] = _name;
	}

	function getName(uint256 _key) public view returns(string memory) {
		return nameList[_key];
	}

	function setAgeList(uint256 _list, uint256 _age) public {
		ageList[_list] = _age;
	}

	function getAge(uint256 _key) public view returns(uint256) {
		return ageList[_key];
	}
}
