// SPDX-License-Identifier: MIT

pragma solidity ^0.8.14;

contract Conversion {
    constructor() {}

    string storeIntAsStr;

    function storeStr(uint _int) external {
     
        uint j = _int;
        uint len;
        while (j != 0) {
            len++;
            j /= 10;
        }
        bytes memory bstr = new bytes(len);
        uint k = len - 1;
        while (_int != 0) {
            unchecked { bstr[k--] = bytes1(uint8(48 + _int % 10)); }
            _int /= 10;
        }
        storeIntAsStr = string(bstr);
    }
}
