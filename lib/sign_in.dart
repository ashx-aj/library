// ignore_for_file: prefer_const_constructors
import 'package:bookstore/sign_up.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:bookstore/home_page.dart';
import 'package:flutter/material.dart';
import 'util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            verticalheight(50),
            Padding(padding: EdgeInsets.symmetric(vertical: 83)),
            Text(
              "Sign In",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontFamily: "poppins",
                  fontWeight: FontWeight.w600),
            ),
            verticalheight(30),
            _text("Email"),
            verticalheight(40),
            _text("password"),
            verticalheight(10),
            Padding(
              padding: const EdgeInsets.only(left: 160),
              child: Text(
                "forgot password",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
            verticalheight(50),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => homepage()));
              },
              child: Container(
                height: 40,
                width: 278,
                child: Center(
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            verticalheight(30),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignUp()));
              },
              child: Text(
                "Don't have an account? Sign Up",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _text(String txt) {
    return Container(
        height: 40,
        width: 278,
        child: TextFormField(
          decoration:
              InputDecoration(label: Text(txt), border: OutlineInputBorder()),
        ));
  }
}
