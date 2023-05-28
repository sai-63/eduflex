import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:practice/pages/login_page.dart';
import 'package:practice/pages/signup-page.dart';
import 'package:practice/pages/home-page.dart';
import 'package:practice/pages/chat-page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context)=> LoginScreen(),
      '/signup': (context)=> SignUp(),
      '/home': (context)=> Home(),
      '/chat': (context)=> ChatScreen(),
    },
  ));
}