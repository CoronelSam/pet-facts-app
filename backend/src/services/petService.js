const axios = require('axios');

async function fetchCatFact() {
  const response = await axios.get('https://catfact.ninja/fact');
  return response.data.fact;
}

async function fetchDogImage() {
  const response = await axios.get('https://dog.ceo/api/breeds/image/random');
  return response.data.message;
}

module.exports = {
  fetchCatFact,
  fetchDogImage,
};