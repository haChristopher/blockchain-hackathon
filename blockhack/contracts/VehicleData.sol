pragma solidity ^0.4.17;

contract Vehicledata {

struct VehicleDataEntry {
    uint sensorData;
    uint timestamp;
}

mapping(address => VehicleDataEntry[]) public vehicleDataEntries;
mapping(address => uint[]) public userDataEntries;
address public owner;

function Vehicledata() public {
    owner = msg.sender;
}

function storeSensorData(uint inputSensorData, uint inputTimestamp) public {
    var vehicleIdentity = msg.sender;
    vehicleDataEntries[vehicleIdentity].push(VehicleDataEntry({
        sensorData: inputSensorData,
        timestamp: inputTimestamp
    }));
}

function countEntriesOfAddress(address vehicleIdentity) public constant returns(uint counter) {
    counter = vehicleDataEntries[vehicleIdentity].length;
    return counter;
}

function evaluateDriverBehaviour(address userIdentity) public {
    //uint random_number=4;
    uint random_number = uint(block.blockhash(block.number-1))%10 + 1;
    userDataEntries[userIdentity].push(random_number);
}

}