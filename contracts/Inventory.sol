pragma solidity ^0.8.0;

contract Inventory {
    struct RawMaterial {
        uint256 materialId;
        string name;
        uint256 quantity;
    }

    uint256 public materialCount;
    mapping(uint256 => RawMaterial) public rawMaterials;

    event RawMaterialAdded(uint256 materialId, string name, uint256 quantity);
    event RawMaterialUpdated(
        uint256 materialId,
        string newName,
        uint256 newQuantity
    );

    // event QuantityIncreased(uint256 materialId, uint256 newQuantity);

    function addRawMaterial(string memory _name, uint256 _quantity) external {
        materialCount++;
        rawMaterials[materialCount] = RawMaterial(
            materialCount,
            _name,
            _quantity
        );
        emit RawMaterialAdded(materialCount, _name, _quantity);
    }
}