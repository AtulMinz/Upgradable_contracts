//SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {BoxV1} from "./BoxV1.sol";

contract BoxV2 is BoxV1 {
    constructor() {
        _disableInitializers();
    }

    function initialize() public override initializer {
        __Ownable_init(msg.sender);
        __UUPSUpgradeable_init();
    }

    function getValue(uint256 value) public view returns (uint256) {
        return value;
    }

    function verison() public pure returns (string memory) {
        return "BoxV2";
    }

    function _authorizeUpgrade(address newImplementation) internal override {}
}
