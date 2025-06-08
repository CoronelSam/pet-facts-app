import 'dart:convert';
import 'package:http/http.dart' as http;

class PetServices {
  static const String _baseUrl = 'http://localhost:3000/api/pets';

  static Future<String> fetchCatFact() async {
    final response = await http.get(
      Uri.parse('$_baseUrl/cat-fact'),
      headers: {'Accept': 'application/json'},
    );
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['fact'] ?? '';
    } else {
      throw Exception('Error al obtener dato de gato');
    }
  }

  static Future<String> fetchDogImage() async {
    final response = await http.get(
      Uri.parse('$_baseUrl/dog-image'),
      headers: {'Accept': 'application/json'},
    );
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['image'] ?? '';
    } else {
      throw Exception('Error al obtener imagen de perro');
    }
  }
}
