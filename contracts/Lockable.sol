pragma solidity 0.8.7;
// SPDX-License-Identifier: MIT

import "./Ownable.sol";

/**
 * @title Lockable
 * @dev Locks users account by putting them in a blacklist
 */
contract Lockable is Ownable {
    mapping(address => bool) blacklist;
        
    event LockUser(address indexed who);
    event UnlockUser(address indexed who);

    modifier whenNotLocked {
        require(!blacklist[msg.sender], "Blocked user");
        _;
    }
    
    function lockUser(address who) public onlyOwner {
        blacklist[who] = true;
        
        emit LockUser(who);
    }

    function unlockUser(address who) public onlyOwner {
        blacklist[who] = false;
        
        emit UnlockUser(who);
    }
}