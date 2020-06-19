USE CPQ;

DELIMITER $$
USE `CPQ`$$

CREATE PROCEDURE `modificar` (
    IN _id VARCHAR(10),
    IN _DateCreated DATE,
    IN _DateModified DATE,
    IN _DateExpiration DATE,
    IN _ProductNumber VARCHAR(150),
    IN _ProductPartNumber VARCHAR(150),
    IN _ProductName VARCHAR(150),
    IN _ProductPrice VARCHAR(150),
    IN _ProductQuantity VARCHAR(150),
    IN _ProductInventory VARCHAR(150),
    IN _ProductTypeName VARCHAR(150),
    IN _ProductCategoryName VARCHAR(150),
    IN _ProductPromoDiscountAmount VARCHAR(150),
    IN _ProductPromoDiscountPercent VARCHAR(150),
    IN _OwnerId VARCHAR(10),
    IN _OwnerName VARCHAR(30),
    IN _OwnerUser VARCHAR(30),
    IN _CustomerName VARCHAR(30),
    IN _CustomerEmail VARCHAR(30),
    IN _CustomerPhone VARCHAR(30),
    IN _CustomerCompany VARCHAR(30)
)

BEGIN
		INSERT INTO cotizaciones(id, DateCreated, DateModified, DateExpiration, ProductNumber, ProductPartNumber, ProductName, ProductPrice, ProductQuantity, ProductInventory, ProductTypeName, ProductCategoryName, ProductPromoDiscountAmount, ProductPromoDiscountPercent, OwnerId, OwnerName, OwnerUser, CustomerName, CustomerEmail, CustomerPhone, CustomerCompany)
        VALUES(_id, _DateCreated, _DateModified, _DateExpiration, _ProductNumber, _ProductPartNumber, _ProductName, _ProductPrice, _ProductQuantity, _ProductInventory, _ProductTypeName, _ProductCategoryName, _ProductPromoDiscountAmount, _ProductPromoDiscountPercent, _OwnerId, _OwnerName, _OwnerUser, _CustomerName, _CustomerEmail, _CustomerPhone, _CustomerCompany);
    SELECT _id AS id;
END
