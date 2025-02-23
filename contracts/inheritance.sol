//SPDX-License-Identifier: NONE

pragma solidity 0.8.28;

abstract contract ContractD{
    function whoAreYou() public virtual pure returns(string memory);
}

contract ContractC{
    function whoAmI() public virtual view returns(string memory){
        return "ContractC";
    }
}

contract ContractB{
    function whoAmI() public virtual view returns(string memory){
    return "ContractB";
    }

    function whoAmIInternal() internal pure returns(string memory){
    return "ContractB";
}
}

contract ContractA is ContractB, ContractC, ContractD{
    enum Type {
        None,
        ContractBType,
        ContractCType
    }

    Type contractType;

    constructor(Type _initialType){
        contractType = _initialType;
    }

    function whoAmI() public override(ContractB, ContractC) view returns(string memory){
        if (contractType == Type.ContractBType) {
            return ContractB.whoAmI();
        }

        if (contractType == Type.ContractCType) {
            return ContractC.whoAmI();
        }
        return "contract A";
    }

    function switchCurrentType(Type _switchType) public{
        contractType = _switchType;
    }

    function whoAreYou() public override(ContractD) pure returns(string memory){
        return "Contract D";
    }
    

    function whoAmIEnternal() external  pure returns(string memory){
        return whoAmIInternal();
    }
}