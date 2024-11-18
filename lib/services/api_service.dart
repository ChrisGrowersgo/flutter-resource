import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String _baseUrl = 'http://192.168.1.86'; // Cambia esto si tu base URL cambia

  static Future<String?> login(String email, String password) async {
    final url = Uri.parse('$_baseUrl/api/login?email=$email&password=$password');

    try {
      final response = await http.post(url); // Cambia a GET porque los datos están en la URL

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return data['access_token']; // Ajusta 'token' si el JSON tiene una estructura diferente
      } else {
        return null; // Credenciales inválidas o error en el servidor
      }
    } catch (e) {
      // Manejo de errores en caso de que el servidor no esté disponible o la conexión falle
      print('Error: $e');
      return null;
    }
  }
}
