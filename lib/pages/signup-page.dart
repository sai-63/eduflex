import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:practice/pages/login_page.dart';
import 'package:practice/reusable_widgets.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _emailTextController=TextEditingController();
  TextEditingController _passwordTextController=TextEditingController();
  TextEditingController _textController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 60.0,right: 60.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blue,Colors.deepPurple,Colors.purple]),
        ),
        child: Column(
          children: [
            SizedBox(height: 60.0,),
            reUsableTextField("Enter Username", Icons.person, true, _textController),
            SizedBox(height: 40.0,),
            reUsableTextField("Enter Email", Icons.person, true, _emailTextController),
            SizedBox(height: 40.0,),
            reUsableTextField("Enter Password", Icons.person, true, _passwordTextController),
            SizedBox(height: 40.0,),
            loginSignUpButton(context, false, (){
              FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailTextController.text, password: _passwordTextController.text).then((value){Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginScreen()));}).onError((error, stackTrace){});
            } )
          ],
        ),
      ),
    );
  }
}
