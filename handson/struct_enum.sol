pragma solidity >= 0.5.0;

contract controlSwitch {
	enum switchStatus{ON, OFF, Unavailable}
	enum loadType{bulb, fan, motor}
	struct home {int floor; switchStatus status; loadType load;}
		
	// switchStatus public defaultStatus = switchStatus.OFF;
	// switchStatus public status = defaultStatus;
	
	home public myhome;
	int floor;

	function switchControl(int _floor, loadType _load, switchStatus _switch) public 
	returns (int, loadType, switchStatus){
		myhome.floor = _floor;
		myhome.load = _load;
		myhome.status = switchStatus.ON;
		return(myhome.floor, myhome.load, myhome.status );
	}
