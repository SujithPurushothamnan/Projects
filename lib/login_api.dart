import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ApiService {
  final String baseUrl = "http://192.168.1.11:8000/api";

  Future<Map<String, dynamic>> login(String email, String password) async {
    final url = Uri.parse("$baseUrl/auth/login");

    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "email": email.trim(),
        "password": password.trim(),
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

     
      final prefs = await SharedPreferences.getInstance();
      prefs.setString("access_token", data["access_token"]);
      prefs.setString("user_name", data["user"]["name"]);
      prefs.setString("user_email", data["user"]["email"]);
      prefs.setInt("user_id", data["user"]["id"]);

      return data;
    } else {
      throw Exception("Failed to login: ${response.body}");
    }
  }
}
