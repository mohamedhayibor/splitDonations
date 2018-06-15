pragma solidity ^0.4.23;

contract SplitDonations {
    address public organizerAddress;
    address public venueAddress;

    modifier onlyOwners() {
        require((organizerAddress == msg.sender) ||
                (venueAddress == msg.sender), "You're not the owner or deployer.");
        _;
    }

    constructor(address _organizerAddress, address _venueAddress) public {
        require(_organizerAddress != _venueAddress, "donation acct can't be the same as house acct");
        organizerAddress = _organizerAddress;
        venueAddress = _venueAddress;
    }

    // whatever msg.value sent is the donation
    function deposit() payable public {

    }

    // everysingle time this is called it splits the money
    function withdraw() onlyOwners public {
        uint256 contractBalance = address(this).balance;
        uint256 splitBalance = contractBalance / 2;

        organizerAddress.transfer(splitBalance);
        venueAddress.transfer(splitBalance);
    }

    function currentContractBalance () view public returns(uint256) {
        return address(this).balance;
    }
}