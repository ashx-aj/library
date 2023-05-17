import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(padding: EdgeInsets.symmetric(vertical: 83)),
          Text(
            "Sign In",
            style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontFamily: "poppins",
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
