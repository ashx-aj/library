import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:bookstore/sign_in.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
    // ignore: prefer_const_constructors, unused_local_variable
    var option = FirebaseOptions(
        apiKey: "AIzaSyC4ey3f1tprTH4Sx0rvTGeYnyXSIniQSCE",
        authDomain: "book-demo-737c9.firebaseapp.com",
        projectId: "book-demo-737c9",
        storageBucket: "book-demo-737c9.appspot.com",
        messagingSenderId: "941977576425",
        appId: "1:941977576425:web:c8c2f412076b2dd83f2178");
    await Firebase.initializeApp(options: option);
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(fontFamily: "poppins"),
              home: SignIn());
        });
  }
}
