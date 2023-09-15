import 'package:flutter/material.dart';
import 'package:hcw_app/Side_Menu/Available_Time_Slots.dart';
import 'package:hcw_app/Side_Menu/Earning.dart';
import 'package:hcw_app/Side_Menu/Note.dart';
import 'package:hcw_app/Side_Menu/Rating.dart';
class CustomDrawer extends StatelessWidget{
  const CustomDrawer({super.key});

  @override
  Widget build (BuildContext context){
    return Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
              Container(
                height: 160,
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 70, left: 5.0),
                      child: Column(
                        children: [
                          Icon(Icons.account_circle_sharp,size: 50, color: Color.fromARGB(255, 206, 203, 203),
                           ),
                        ],
                      ),
                    ),
                            SizedBox(width: 5.0),
                            Padding(
                              padding: EdgeInsets.only(top: 75),
                              child: Column(
                                children: [
                                  Text('Nicholas',
                                  style: TextStyle(fontWeight: FontWeight.w600,fontFamily: 'Proxima Nova',fontSize: 16)
                                  ),
                                  SizedBox(height: 5.0),
                                  Text('Professionals',
                                  style: TextStyle(fontWeight: FontWeight.w500,fontFamily: 'Proxima Nova',fontSize: 11)
                                  )
                                ],
                              ),
                            ),
                  ],
                ),
              ),
          Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: ListTile(
                        title: Row(
                          children: [
                            CircleAvatar(
                            backgroundColor: Colors.lightGreen[100],  
                            child: const Icon(Icons.sensors,size: 30, color: Colors.green,)),
                            const SizedBox(width: 7.0),
                            TextButton(
                              onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> TimeSlots()));
                            }, child: const Text(
                              'Status',
                               style: TextStyle(fontWeight: FontWeight.w500,fontFamily: 'Proxima Nova', color: Colors.black),
                              ),
                            ),
                          ],
                        )          
            ),
          ),
           ListTile(
             title: Row(
                          children: [
                            CircleAvatar(
                            backgroundColor: Colors.lightGreen[100],  
                            child: const Icon(Icons.sensors,size: 30, color: Colors.green,)),
                            const SizedBox(width: 7.0),
                            TextButton(
                              onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Rating()));
                            }, child: const Text(
                              'Rating',
                               style: TextStyle(fontWeight: FontWeight.w500,fontFamily: 'Proxima Nova', color: Colors.black),
                              ),
                            ),
                          ],
                        )          
            ),
           ListTile(
             title: Row(
                          children: [
                            CircleAvatar(
                            backgroundColor: Colors.lightGreen[100],  
                            child: const Icon(Icons.sensors,size: 30, color: Colors.green,)),
                            const SizedBox(width: 0.0),
                            TextButton(
                              onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Notes()));
                            }, child: const Text(
                              'Note',
                               style: TextStyle(fontWeight: FontWeight.w500,fontFamily: 'Proxima Nova', color: Colors.black),
                              ),
                            ),
                          ],
                        )          
            ),
            ListTile(
            title: Row(
                          children: [
                            CircleAvatar(
                            backgroundColor: Colors.lightGreen[100],  
                            child: const Icon(Icons.sensors,size: 30, color: Colors.green,)),
                            const SizedBox(width: 7.0),
                            TextButton(
                              onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Earning()));
                            }, child: const Text(
                              'Earning',
                               style: TextStyle(fontWeight: FontWeight.w500,fontFamily: 'Proxima Nova', color: Colors.black),
                              ),
                            ),
                          ],
                        )          
            ),
            ListTile(
            title: Row(
                          children: [
                            CircleAvatar(
                            backgroundColor: Colors.lightGreen[100],  
                            child: const Icon(Icons.sensors,size: 30, color: Colors.green,)),
                            const SizedBox(width: 7.0),
                            TextButton(
                              onPressed: (){
                            //Navigator.push(context, MaterialPageRoute(builder: (context)=> TimeSlots()));
                            }, child: const Text(
                              'Terms and Conditions',
                               style: TextStyle(fontWeight: FontWeight.w500,fontFamily: 'Proxima Nova', color: Colors.black),
                              ),
                            ),
                          ],
                        )          
            ),
          ListTile(
             title: Row(
                          children: [
                            CircleAvatar(
                            backgroundColor: Colors.lightGreen[100],  
                            child: const Icon(Icons.sensors,size: 30, color: Colors.green,)),
                            const SizedBox(width: 0.0),
                            TextButton(
                              onPressed: (){
                            //Navigator.push(context, MaterialPageRoute(builder: (context)=> Rating()));
                            }, child: const Text(
                              'Help',
                               style: TextStyle(fontWeight: FontWeight.w500,fontFamily: 'Proxima Nova', color: Colors.black),
                              ),
                            ),
                          ],
                        )          
            ),
            ],
          ),
        );
  }
}