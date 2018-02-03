pragma solidity ^0.4.17;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Vehicledata.sol";

contract VehicleDataTest {
    Vehicledata vehicledata = Vehicledata(DeployedAddresses.Vehicledata());

/*
function testCounterEntriesEmpty() public {
    var numberOfEntries = mileage.countEntriesOfAddress(this);
    Assert.equal(numberOfEntries, 0, "wrong number of entries");
}
*/

function testContractOwner() public {
    //Assert.equal(this, vehicledata.owner, "Wrong owner");
}

// Testing the storeSensorData function
function testVehicleCanStoreSensorData() public {
	//vehicledata.storeSensorData(800, 17293069492);
    //vehicledata.storeSensorData(900,17293069530);
}
}