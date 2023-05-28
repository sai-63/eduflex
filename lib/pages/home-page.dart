import 'package:flutter/material.dart';
import 'package:practice/pages/chat-page.dart';
import 'package:practice/reusable_widgets.dart';
import 'package:practice/pages/syllabus-page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        title: const Text(
          'Eduflex',
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.blue,
        decoration: BoxDecoration(
          color: Colors.grey[300]
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                box('Schedules', Icons.schedule,(){}),
                const SizedBox(
                  width: 35.0,
                ),
                box('Notes', Icons.note_alt_sharp,(){}),
                const SizedBox(width: 35.0,),
                box('Syllabus', Icons.assignment_sharp,(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Syllabus()));})
              ],
            ),
            const SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                box('Chat', Icons.chat,(){Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));}),
                const SizedBox(
                  width: 35.0,
                ),
                box('Study Materials', Icons.menu_book,(){}),
                const SizedBox(width: 35.0,),
                box('YouTube', Icons.play_circle_fill_rounded,(){})
              ],
            ),
          ],
        ),
      ),
    );
  }
}
