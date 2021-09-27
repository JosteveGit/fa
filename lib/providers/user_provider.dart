import 'package:flutter/foundation.dart';
import 'package:frontend/domain/user.dart';


class UserProvider with ChangeNotifier {
  User _user =  User(
      renewalToken: 'renewalToken',
      first_name: 'first_name',
      last_name: 'last_name',
      email: 'email',
      phone_number: 'phone_number',
      token: 'access_token',
      userId: 'userId' as int,


  );

  User get user => _user;

  void setUser(User user) {
    _user = user;
    notifyListeners();
  }
}
