import 'package:flutter/material.dart';
import 'package:frontend/domain/user.dart';
import 'package:frontend/providers/user_provider.dart';
import 'package:provider/provider.dart';


class Welcome extends StatelessWidget {
// const ({Key? key}) : super(key: key);
  final User? user;

  const Welcome({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Provider.of<UserProvider>(context).setUser(user!);

    return Scaffold(
      body: Container(
        child: Center(
          child: Text("WELCOME PAGE"),
        ),
      ),
    );
  }
}
