pragma solidity 0.8.7;
// SPDX-License-Identifier: MIT

/**
 * @title EIP20 interface
 * @dev see https://github.com/ethereum/EIPs/issues/20
 */
interface IEIP20 {

  function totalSupply() external view returns (uint256);

  function balanceOf(address who) external view returns (uint256);

  function transfer(address to, uint256 value) external returns (bool);
  
  function allowance(address owner, address spender)
    external view returns (uint256);

  function transferFrom(address from, address to, uint256 value)
    external returns (bool);

  function approve(address spender, uint256 value) external returns (bool);

  event Approval(
    address indexed owner,
    address indexed spender,
    uint256 value
  );
  event Transfer(address indexed from, address indexed to, uint256 value);
}
