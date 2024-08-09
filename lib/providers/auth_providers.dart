import 'package:flutter/material.dart';
import 'package:toko/models/user_model.dart';
import 'package:toko/services/auth_services.dart';

class AuthProvider with ChangeNotifier {
  UserModel? _user;

  UserModel? get user => _user;

  set user(UserModel? user) {
    _user = user;
    notifyListeners();
  }

  Future<bool> register({
    required String name,
    required String username,
    required String email,
    required String password,
  }) async {
    try {
      UserModel user = await AuthServices().register(
        name: name,
        username: username,
        email: email,
        password: password,
      );

      _user = user;
      notifyListeners(); // Tambahkan ini untuk memberitahu listener setelah user di-set
      return true;
    } catch (e) {
      print('Register Error: $e');
      return false;
    }
  }

  Future<bool> login({
    required String email,
    required String password,
  }) async {
    try {
      UserModel user = await AuthServices().login(
        email: email,
        password: password,
      );

      _user = user;
      notifyListeners(); // Tambahkan ini untuk memberitahu listener setelah user di-set
      return true;
    } catch (e) {
      print('Register Error: $e');
      return false;
    }
  }
}
