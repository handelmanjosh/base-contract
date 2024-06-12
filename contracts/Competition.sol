// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./Token.sol";

contract Competition is Ownable {
    address public token1;
    address public token2;
    uint public end_time;
    constructor() Ownable(msg.sender) {
        
    }
    function start(string calldata name1, string calldata symbol1, string calldata name2, string calldata symbol2) onlyOwner external {
        Token t1 = new Token(name1, symbol1);
        Token t2 = new Token(name2, symbol2);
        end_time = block.timestamp + 10000000;
        token1 = address(t1);
        token2 = address(t2);
        // now add uniswap liquidity for both tokens
    }
    function end() onlyOwner external {
        
    }
}