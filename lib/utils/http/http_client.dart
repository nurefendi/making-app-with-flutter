import 'package:http/http.dart' as http;
import 'dart:convert'
;
class HttpHelper {
  HttpHelper._();

  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse(endpoint));
    return _handleResponse(response);
  }
  static Future<Map<String, dynamic>> post(String endpoint, dynamic data) async {
    final response = await http.post(
        Uri.parse(endpoint),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(data)
    );
    return _handleResponse(response);
  }
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final response = await http.put(
        Uri.parse(endpoint),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(data)
    );
    return _handleResponse(response);
  }
  static Future<Map<String, dynamic>> patch(String endpoint, dynamic data) async {
    final response = await http.patch(
        Uri.parse(endpoint),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(data)
    );
    return _handleResponse(response);
  }
  static Future<Map<String, dynamic>> delete(String endpoint) async {
    final response = await http.delete(Uri.parse(endpoint));
    return _handleResponse(response);
  }
  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode < 300) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data : ${response.statusCode}');
    }
  }

}