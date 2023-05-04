pragma solidity >= 0.5.0;

contract hello {
	string public payload;

	function setPayload(string memory content) public {
		payload = content;
	}


	function sayHello() public pure returns (string memory) {
		return 'Hello';
	}
}
