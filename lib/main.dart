
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:raidereats_admin_website_portal/authentication/login_screen.dart';
import 'package:raidereats_admin_website_portal/main_screens/home_screen.dart';







Future<void> main() async
{

  await Firebase.initializeApp(options: const FirebaseOptions(apiKey: "AIzaSyCQKbB3OF6Y4SqzW0s6I_iO7stx392YL_k", appId: "1:672869159031:web:77ab41892051dae5143672",  messagingSenderId: "672869159031",projectId: "raider-eats-app",),);


  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin Web Portal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: FirebaseAuth.instance.currentUser == null?  const LoginScreen() : const HomeScreen(),
    );
  }
}



