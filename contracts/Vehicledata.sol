pragma solidity ^0.4.17;

contract Vehicledata {

struct VehicleDataEntry {
    uint sensorData;
    uint timestamp;
}

mapping(address => VehicleDataEntry[]) public vehicleDataEntries;
// mapping(bytes32 => address) public mappedVinToKeyEntries;
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



}
