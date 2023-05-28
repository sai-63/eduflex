import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:practice/pages/home-page.dart';
import 'package:practice/reusable_widgets.dart';
import 'package:flutter/cupertino.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailTextController=TextEditingController();
  TextEditingController _passwordTextController=TextEditingController();
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
            const SizedBox(height: 200.0,),
            reUsableTextField("Enter Username", Icons.person, true, _emailTextController),
            const SizedBox(height: 40.0,),
            reUsableTextField("Enter Password", Icons.person, true, _passwordTextController),
            const SizedBox(height: 30.0,),
            loginSignUpButton(context, true,(){
              FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailTextController.text, password: _passwordTextController.text).then((value){Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));}).onError((error, stackTrace){});
            }),
            const SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0,color: Colors.white),
                ),
                TextButton(
                    onPressed: (){
                      print('Hi');
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: Text('SignUp',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0,color: Colors.blue[500]),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
