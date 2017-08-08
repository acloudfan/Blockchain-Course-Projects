var BiddingContract = artifacts.require("./BiddingContract.sol");

module.exports = function(deployer) {
  deployer.deploy(BiddingContract);
  
};
