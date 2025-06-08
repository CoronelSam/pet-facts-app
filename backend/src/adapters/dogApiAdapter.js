const axios = require('axios');
const config = require('../config/config');

const fetchRandomDogImage = async () => {
    try {
        const response = await axios.get(`${config.DOG_API_BASE_URL}/breeds/image/random`);
        return response.data;
    } catch (error) {
        console.error('Error fetching dog image:', error);
        throw error;
    }
};

const fetchBreedList = async () => {
    try {
        const response = await axios.get(`${config.DOG_API_BASE_URL}/breeds/list/all`);
        return response.data;
    } catch (error) {
        console.error('Error fetching breed list:', error);
        throw error;
    }
};

module.exports = {
    fetchRandomDogImage,
    fetchBreedList
};