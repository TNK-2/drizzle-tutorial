// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.9.0;

contract Shipping {
  enum ShippingStatus { Pending, Shipped, Delivered }
  enum ShipmentStatus { Pending, Shipped, Delivered }

  ShippingStatus private status;
  ShipmentStatus public shipstatus;
  uint256 public numupdates;

  event LogNewAlsert(string description);

  constructor() public {
    status = ShippingStatus.Pending;
    numupdates = 0;
  }

  function Shipped() public {
    status = ShippingStatus.Shipped;
    shipstatus = ShipmentStatus.Shipped;
    numupdates = numupdates + 1;
  }

  function Delivered() public {
    status = ShippingStatus.Delivered;
    shipstatus = ShipmentStatus.Delivered;
    numupdates = numupdates + 1;
    emit LogNewAlsert("Your package has arrived");
  }

  function getStatus(ShippingStatus _status) internal pure returns (string memory) {
    if (ShippingStatus.Pending == _status) return "Pending";
    if (ShippingStatus.Shipped == _status) return "Shipped";
    if (ShippingStatus.Delivered == _status) return "Delivered";  
  }

  function Status() public view returns (string memory) {
    ShippingStatus _status = status;
    return getStatus(_status);
  }

}