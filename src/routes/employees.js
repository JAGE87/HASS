const express = require('express');
const router = express.Router();
const mysqlConnection = require('../database');

router.get('/', (req, res) =>{
    mysqlConnection.query('SELECT * FROM cotizaciones', (err, rows, fields) =>{
        if(!err){
            res.json(rows);
        } else {
            console.log(err);
        }
    });
});

router.get('/:id', (req, res) => {
    const { id } = req.params;
    mysqlConnection.query('SELECT * FROM cotizaciones WHERE id = ?', [id], (err, rows, fields) => {
        if(!err){
            res.json(rows[0]);
        } else {
            console.log(err);
        }
    })
});

router.post('/', (req, res) => {
    const { id, DateCreated, DateModified, DateExpiration, ProductNumber, ProductPartNumber, ProductName, ProductPrice, ProductQuantity, ProductInventory, ProductTypeName, ProductCategoryName, ProductPromoDiscountAmount, ProductPromoDiscountPercent, OwnerId, OwnerName, OwnerUser, CustomerName, CustomerEmail, CustomerPhone, CustomerCompany } = req.body;   
    const query = `
        CALL modificar(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);
        `;
    mysqlConnection.query(query, [id, DateCreated, DateModified, DateExpiration, ProductNumber, ProductPartNumber, ProductName, ProductPrice, ProductQuantity, ProductInventory, ProductTypeName, ProductCategoryName, ProductPromoDiscountAmount, ProductPromoDiscountPercent, OwnerId, OwnerName, OwnerUser, CustomerName, CustomerEmail, CustomerPhone, CustomerCompany], (err, rows, fields) => {
        if(!err){
            res.json({Status: 'Employed Saved'});
        } else {
            console.log(err);
        }
    })
});

module.exports = router;
