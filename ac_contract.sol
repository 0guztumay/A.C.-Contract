// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract oguzac{
    uint256[]paidToken;
    uint256[]ac;
    uint256[]acDegree;
    address[]wallet;

    function setAcOwner(uint256 _ac,uint256 tokenvalue , uint256 _degree) public returns(uint256){
        require(ac[_ac]>0&&ac[_ac]<5,"There is only 4 A.C. here.");
        require(paidToken[_ac]<tokenvalue,"Please give higher price");
        paidToken[_ac]=tokenvalue;
        acDegree[_ac]=_degree;
        wallet[_ac]=msg.sender;
        return paidToken[_ac];
    }
    function setDegree(uint256 _ac, uint256 _degree)public{
        require(ac[_ac]>0&&ac[_ac]<5,"There is only 4 A.C. here.");
        require(wallet[_ac]==msg.sender,"The owner of the air conditioner does not appear here");
        require(_degree>15&&_degree<31,"Please enter a value between 16-30");
        acDegree[_ac]=_degree;
    }
}