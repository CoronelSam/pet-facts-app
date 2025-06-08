const express = require('express');
const router = express.Router();
const petController = require('../controllers/petController');

router.get('/cat-fact', petController.getCatFact);
router.get('/dog-image', petController.getDogImage);

module.exports = router;