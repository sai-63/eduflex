import 'package:flutter/material.dart';

TextField reUsableTextField(String text,IconData icon,bool type,TextEditingController controller){
  return TextField(
    controller: controller,
    obscureText: type,
    enableSuggestions: !type,
    autocorrect: !type,
    cursorColor: Colors.white,
    style: TextStyle(color: Colors.white.withOpacity(0.9)),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.black,
      ),
      labelText: text,
      labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.white.withOpacity(0.3),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: const BorderSide(width: 0,style: BorderStyle.none)
      )
    ),
  );
}

Container loginSignUpButton(BuildContext context,bool type,Function ontap){
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50.0,
    margin: const EdgeInsets.only(top: 20.0,bottom: 20.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(90.0),
    ),
    child: ElevatedButton(
      onPressed: ontap(),
      child: Text(
        type? 'Login':'Sign Up',
        style: const TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color: Colors.white),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if(states.contains(MaterialState.pressed)){
            return Colors.blue;
          }else{
            return Colors.black;
          }
        }
          ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)))
      ),
    ),
  );
}

Container box(String text,IconData icon,Function onTap){
  return Container(
    width: 100.0,
    height: 104.0,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        IconButton(onPressed: (){onTap();},icon:Icon(icon,size: 50,)),
        SizedBox(height: 10.0,),
        Text(text,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
      ],
    ),
  );
}

Container syllabus(String text,Function onTap){
  return Container(
    color: Colors.grey,
    width: 200.0,
    child: TextButton(
      onPressed: (){onTap();},
      child: Text(text,style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),
    ),
  );
}
