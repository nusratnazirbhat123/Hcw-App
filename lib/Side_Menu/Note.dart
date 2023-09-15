import 'package:flutter/material.dart';

void main() => runApp(Notes());

class Notes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotePage(),
    );
  }
}

class NotePage extends StatefulWidget {
  @override
  NotePageState createState() => NotePageState();
}

class NotePageState extends State<NotePage> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: AppBar(
          backgroundColor: Colors.green,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    IconButton(onPressed: (){
                    Navigator.of(context).pop();
                    }, icon: const Icon(Icons.arrow_back_ios)),
                    const SizedBox(width: 6.0),
                    const Text(
                      'Note',
                       style: TextStyle(
                          color: Colors.white,
                          fontSize: 20, 
                          fontWeight: FontWeight.w500, 
                          fontFamily: 'Proxima Nova'),),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                ),
                  height: double.infinity,
                  child: const ListTile(title: 
                  Column(
                   children: [
                            Padding(
                              padding: EdgeInsets.only(top:10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Order Id. 12345678',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Row(
                            children: [
                            Flexible(child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry...',style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.w400),)),
                            ],
                           ),
                     ],
                   ),
        ),
      ), 
    ),
    );
  }
}