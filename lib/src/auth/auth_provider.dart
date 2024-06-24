import 'package:birthflow_movil/src/auth/models/auth_request.dart';
import 'package:birthflow_movil/src/auth/service/auth_service.dart';
import 'package:flutter/material.dart';


class AuthProvider extends ChangeNotifier {
  String? _token;
  final AuthService _authService;

  AuthProvider(this._authService);

  bool get isAuthenticated => _token != null;

  void setToken(String token) {
    _token = token;
    notifyListeners();
  }

  Future<bool> validateToken() async {
    if (_token == null) return false;

    try {
      final response = await _authService.validateToken(_token!);
      if (response.isValid!) {
        return true;
      } else {
        clearToken();
        return false;
      }
    } catch (e) {
      clearToken();
      return false;
    }
  }

  Future<void> login(String usuario, String password) async {
    final request = AuthRequest(userName: usuario, password: password);
    try {
      final response = await _authService.authenticate(request);
      setToken(response.token);
    } catch (e) {
      throw Exception('Failed to login');
    }
  }

  void clearToken() {
    _token = null;
    notifyListeners();
  }

  Future<void> logout() async {
    if (_token == null) return;

    try {
      await _authService.logout(_token!);
      clearToken();
    } catch (e) {
      throw Exception('Failed to logout');
    }
  }
}
