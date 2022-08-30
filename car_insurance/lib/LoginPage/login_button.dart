import 'package:flutter/material.dart';

import '../constants.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({required this.onPressed});

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 6.0,
      color: Colors.blueAccent,
      borderRadius: BorderRadius.circular(30.0),
      child: MaterialButton(
        onPressed: onPressed,
        minWidth: 200,
        height: 40,
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
