import 'package:flutter/widgets.dart';
import 'package:fotohub/models/user.dart';
import 'package:fotohub/resources/auth_method.dart';

class UserProvider with ChangeNotifier {
  User? _user;
  final AuthMethod _authMethods = AuthMethod();

  User get getUser => _user!;

  Future<void> refreshUser() async {
    User user = await _authMethods.getUserDetails();
    _user = user;
    notifyListeners();
  }
}