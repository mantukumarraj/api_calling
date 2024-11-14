import 'package:api_calling/screens/service/users_Model.dart';
import 'package:flutter/material.dart';
import '../screens/service/api_Service.dart';



class UserProvider with ChangeNotifier {
  List<UsersModel> _users = [];
  bool _isLoading = false;
  String? _error;

  List<UsersModel> get users => _users;
  bool get isLoading => _isLoading;
  String? get error => _error;

  final ApiService _apiService = ApiService();

  Future<void> fetchUsers() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _users = await _apiService.fetchUsers();
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
