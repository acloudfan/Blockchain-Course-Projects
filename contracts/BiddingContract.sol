pragma solidity ^0.4.4;

/**
 * Project work: Bidding contract
 * Implements the shell for the contract exercise described in the last section
 * Part of an online course.
 * http://acloudfan.com/learn-blockchain
 *
 * PLEASE NOTE : THIS IS A SHELL AND WILL REQUIRE YOU TO CODE THE FUNCTIONS
 *               OTHERWISE YOU WILL GET COMPILATION ERRORS
 **/

contract BiddingContract {

  bytes32   name;
  string    description;
  uint      duration;
  uint      startBid;

  uint      createdAt;

  struct Bidder {
    address   bidder;
    string    name;
    uint      bidAmount;
    // Ethers pull pattern used
    bool      claimedEthers;
  }

  // Declare the events
  event HighBidChanged(address addr, bytes32 nm, uint  newHighBid);
  event BidFailed(address addr, bytes32 nm, uint bidAmt);

  // Maintain all bidders in an array
  Bidder[]  bidders;

  // This maintains the high bidder
  Bidder    highBidder;

  // duration in minutes
  // start price in ethers
  function BiddingContract(bytes32 nm, 
                           string desc, 
                           uint dur, 
                           uint sBid) {
    // constructor
    name=nm;
    description=desc;
    duration=dur;
    startBid=sBid;
    // Initalize createdAt to current time
  }

  // Bid function is what gets called by any bidder
  function  placeBid(string name, uint bid) payable {

    // check if the duration has not expired
    // if it has then throw an exception

    // currentBid = highBidder.bidAmount
    // If bid <= currentBid    // Consider the case when there is no bid
    // Emit a BidFailed Event
    // Create a Bidder structure and add to bidders array

    // If bid > currentBid
    // Add the current high bidder to bidders array
    // Replace the highBidder with the new high bidder
    // emit High bid event
  }

  function getHighBid() constant returns(uint){
    // Return the bid amount held in high bidder
  }

  // This is invoked by anyone to chek if there is are ehters
  // in the contract that they can claim
  // Losers will be added to the bidders array ... the claim flag in struct
  // maintains the status of whether the caller has already been given the ethers or not
  function  getClaimAmount() returns(uint){
    // check if msg.sender in the bidders
    // check if claims flag is FALSE
    // return the bid amount
  }

  // Losers will call this to get their bid ethers back
  function claimEthers() {
    // Check if caller is eligible for clain - getClaimAmout
    // If they are then send ethers to them
    // remove the bidder from the bidders
  }

  // Can a bid end if there are unclaimed ethers 
  // In later version the claims data will be moved to a separate contract
  // Claims will be made losers against the separate contract
  function  canBidEnd() returns (bool) {
    // bidders.length == 0 for bid to end
    // check if the bidding is active i.e., not expired
  }

  // This ends the bidding 
  // Only owner can call this function - apply modifier
  // All ethers returned to the owner as part of self destruct
  function endBidding() {

  }

}
