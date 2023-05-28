import 'package:flutter/material.dart';
import 'package:practice/pages/syllabus-page.dart';
import 'package:practice/reusable_widgets.dart';

class Syllabus extends StatefulWidget {
  const Syllabus({Key? key}) : super(key: key);

  @override
  State<Syllabus> createState() => _SyllabusState();
}

class _SyllabusState extends State<Syllabus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Syllabus',style: TextStyle(fontWeight: FontWeight.bold,fontSize:
        20.0),),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              syllabus("I'st Year,I'st Sem R19",(){}),
              SizedBox(height: 10.0,),
              syllabus("I'st Year,II'nd Sem R19",(){}),
              SizedBox(height: 10.0,),
              syllabus("II'nd Year,I'st Sem R19",(){}),
              SizedBox(height: 10.0,),
              syllabus("II'nd Year,II'nd Sem R19",(){}),
              SizedBox(height: 10.0,),
              syllabus("III'rd Year,I'st Sem R19",(){}),
              SizedBox(height: 10.0,),
              syllabus("III'rd Year,II'nd Sem R19",(){}),
              SizedBox(height: 10.0,),
              syllabus("IV'th Year,I'st Sem R19",(){}),
              SizedBox(height: 10.0,),
              syllabus("IV'th Year,II'nd Sem R19",(){}),
              SizedBox(height: 10.0,),
            ],
          ),
        ),
      ),
    );
  }
}
