
import 'package:frontend/domain/user.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class UserPreferences {
  Future<bool> saveUser(User user) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();


    prefs.setString("first_name", user.first_name);
    prefs.setString("last_name", user.last_name);
    prefs.setString("email", user.email);
    prefs.setString("phone_number", user.phone_number);
    prefs.setString("token", user.token);
    prefs.setString("renewalToken", user.renewalToken);
    prefs.setString("userId", user.userId );

    print("object prefere");
    print(user.renewalToken);

    return prefs.commit();
  }

  Future<User> getUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();


    String? first_name = prefs.getString("first_name");
    String? last_name = prefs.getString("last_name");
    String? email = prefs.getString("email");
    String? phone_number = prefs.getString("phone_number");
    String? token = prefs.getString("token");
    String? renewalToken = prefs.getString("renewalToken");

    return User(

        last_name: first_name as String,
        first_name: first_name as String,
        email: email as String,
        phone_number: phone_number as String,
        token: token as String,
        renewalToken: renewalToken as String,
        userId: userId as int,
    );
  }

  void removeUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.remove("first_name");
    prefs.remove("last_name");
    prefs.remove("email");
    prefs.remove("phone_number");
    prefs.remove("token");
  }

  Future<String?> getToken(args) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? tokens = prefs.getString("tokens");
    return tokens;
  }
}
