import 'package:firebase_authentication_tutorial/app_user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthUserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AppUser appUser = Provider.of<AppUser>(context);
    return Scaffold(
      body: Center(
        child: Text(appUser.email),
      ),
    );
  }
}
