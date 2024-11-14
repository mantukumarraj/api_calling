import 'dart:convert';
import 'package:api_calling/screens/service/users_Model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List<UsersModel>> fetchUsers() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((user) => UsersModel.fromJson(user)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}
