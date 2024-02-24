// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.12;
contract product{
    bytes32[] products;
    bytes32[] owners;
    bytes32[] pStatus;
    bytes32[] _usernames;
    bytes32[] _passwords;




    //fuction for loginuser
    function loginUser(bytes32 username,bytes32 password) public view returns(bool) {
      uint i;
		  uint j=0;

		  if(_usernames.length>0) {
			  for(i=0;i<_usernames.length;i++) {
				  if((_usernames[i])==(username)) {
					  j=i;
				  }
			  }
		
			  if(_passwords[j]==password && _usernames[j]==username) {
				  return true;
			  }
			  else {
				  return false;
			  }
		  } else {
        return false;
      }
    }

}