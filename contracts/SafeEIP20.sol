pragma solidity 0.8.7;
// SPDX-License-Identifier: MIT

import "./EIP20.sol";
import "./IEIP20.sol";

/**
 * @title SafeEIP20
 * @dev Wrappers around EIP20 operations that throw on failure.
 * To use this library you can add a `using SafeEIP20 for EIP20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeEIP20 {
  function safeTransfer(
    IEIP20 token,
    address to,
    uint256 value
  )
    internal
  {
    require(token.transfer(to, value));
  }

  function safeTransferFrom(
    IEIP20 token,
    address from,
    address to,
    uint256 value
  )
    internal
  {
    require(token.transferFrom(from, to, value));
  }

  function safeApprove(
    IEIP20 token,
    address spender,
    uint256 value
  )
    internal
  {
    require(token.approve(spender, value));
  }
}