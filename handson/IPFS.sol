pragma solidity ^0.8.0;

contract IPFSTransfer {
    mapping(address => string) public ipfsAddresses;

    function transferIPFS(address recipient, string memory cid) external {
        ipfsAddresses[recipient] = cid;
    }
}
