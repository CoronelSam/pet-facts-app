const petService = require('../services/petService');

exports.getCatFact = async (req, res) => {
  try {
    const fact = await petService.fetchCatFact();
    res.json({ fact });
  } catch (error) {
    res.status(500).json({ error: 'Error al obtener dato de gato' });
  }
};

exports.getDogImage = async (req, res) => {
  try {
    const image = await petService.fetchDogImage();
    res.json({ image });
  } catch (error) {
    res.status(500).json({ error: 'Error al obtener imagen de perro' });
  }
};