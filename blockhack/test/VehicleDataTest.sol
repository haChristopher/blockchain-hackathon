pragma solidity ^0.4.17;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Vehicledata.sol";

contract VehicleDataTest {
    //Adoption adoption = Adoption(DeployedAddresses.Adoption());
    Vehicledata vehicledata = Vehicledata(DeployedAddresses.Vehicledata());
    //Vehicledata vehicledata = Vehicledata(DeployedAddresses.Vehicledata());

/*
function testCounterEntriesEmpty() public {
    var numberOfEntries = mileage.countEntriesOfAddress(this);
    Assert.equal(numberOfEntries, 0, "wrong number of entries");
}
*/

//function testContractOwner() public {
    //Assert.equal(this, vehicledata.owner, "Wrong owner");
//}

// Testing the storeSensorData function
function testVehicleCanStoreSensorData() public {
	vehicledata.storeSensorData(800, 17293069492);
    vehicledata.storeSensorData(900,17293069530);
}

// Testing the getMileage function
function testUserCanGetMileage() public {
    var (miles, timestamp) = vehicledata.vehicleDataEntries(this, 0);
    Assert.equal(miles, 800, "wrong mileage");
    Assert.equal(timestamp, 17293069492, "wrong timestamp");
    var (miles2, timestamp2) = vehicledata.vehicleDataEntries(this, 1);
    Assert.equal(miles2, 900, "wrong mileage");
    Assert.equal(timestamp2, 17293069530, "wrong timestamp");
}
// Testing countEntries Funktion 
function testCounterEntriesOfAddress() public {
    var numberOfEntries = vehicledata.countEntriesOfAddress(this);
    Assert.equal(numberOfEntries, 2, "wrong number of entries");
}

//Test evaluation function
function testEvaluationDriverBehaviour() public {
    address publicKeyUser = 0xaa039dc4dd7c5cb4f8bc54865cda40460da4c426;
    vehicledata.evaluateDriverBehaviour(publicKeyUser);
    var score = vehicledata.userDataEntries(publicKeyUser, 0);
    Assert.equal(score, 4, "wrong number of score");
}

}