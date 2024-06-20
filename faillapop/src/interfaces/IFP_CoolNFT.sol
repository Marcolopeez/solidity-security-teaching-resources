// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.13;

/** 
    @title Interface of the FaillaPop Cool NFT
    @author Faillapop team :D 
    @notice The contract allows the DAO to mint a Cool NFT for users.
    @dev Security review is pending... should we deploy this?
    @custom:ctf This contract is part of JC's mock-audit exercise at https://github.com/jcr-security/solidity-security-teaching-resources
*/
interface IFP_CoolNFT {
    /**
        @notice Sets the DAO address as the new Control Role
        @param daoAddr The address of the DAO contract
    */
    function setDAO(address daoAddr) external;
    
    /**
        @notice Mints a Cool NFT for the user
        @param to The address of the user that will receive the Cool NFT
    */
    function mintCoolNFT(address to) external;

    /**
 
        @notice DAO can remove a Cool NFT from a user
        @param owner The address of the user that will lose the Cool NFT
    */
    function burnAll(address owner) external;
}