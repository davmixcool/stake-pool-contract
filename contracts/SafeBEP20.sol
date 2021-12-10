pragma solidity 0.8.7;
// SPDX-License-Identifier: MIT

import "./BEP20.sol";
import "./IBEP20.sol";

/**
 * @title SafeBEP20
 * @dev Wrappers around BEP20 operations that throw on failure.
 * To use this library you can add a `using SafeBEP20 for BEP20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeBEP20 {
  function safeTransfer(
    IBEP20 token,
    address to,
    uint256 value
  )
    internal
  {
    require(token.transfer(to, value));
  }

  function safeTransferFrom(
    IBEP20 token,
    address from,
    address to,
    uint256 value
  )
    internal
  {
    require(token.transferFrom(from, to, value));
  }

  function safeApprove(
    IBEP20 token,
    address spender,
    uint256 value
  )
    internal
  {
    require(token.approve(spender, value));
  }
}