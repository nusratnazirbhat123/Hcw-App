import 'dart:ui';
import 'package:flutter/material.dart';
void main() {
  runApp(StartJob());}
class StartJob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartJobPage(),
    );
  }
}

class StartJobPage extends StatefulWidget {
  @override
   StartJobPageState createState() => StartJobPageState();
}

class StartJobPageState extends State<StartJobPage> {
  TextEditingController _textEditingController = TextEditingController();
   void ShowDialog(BuildContext context) {
   showDialog(
    context: context,
    builder: (BuildContext Context){
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        content: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Caregiver Review',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.account_circle_sharp,size: 130, color: Color.fromARGB(255, 206, 203, 203),),
                ],
              ),
               SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Nicholas',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Rate the care provided sunday, jan 9',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w300),),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star,size: 30, color:Colors.yellow),
                  SizedBox(width: 2.0),
                  Icon(Icons.star,size: 30, color:Colors.yellow),
                  SizedBox(width: 2.0),
                  Icon(Icons.star,size: 30, color:Colors.yellow),
                  SizedBox(width: 2.0),
                  Icon(Icons.star,size: 30, color:Colors.yellow),
                  SizedBox(width: 2.0),
                ],
              ),
              SizedBox(height: 12.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 120,
                    width: 225,
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 0.3,
                    ),
                    ),
                   
                    child: TextField(
                      controller: _textEditingController,
                      maxLines: null,
                      decoration: InputDecoration(
                      hintText: ' Additional Comments',
                      border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){
          
                  }, 
                   style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: Size(19, 36),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ), 
                   ),
                  child: Text('Not Now',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),),
                  SizedBox(width: 5.0),
                  ElevatedButton(onPressed: (){
          
                  }, 
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: Size(14, 36),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ) 
                  ),
                  child: Text('Submit Review',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),),
                ],
              ),
            ],
          ),
        ),
      );
     
    }
  );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: AppBar(
         backgroundColor: Colors.green,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  children: [
                    IconButton(onPressed: (){
                     Navigator.pop(context); 
                    }, icon: const Icon(Icons.arrow_back_ios)),
                    const SizedBox(width: 6.0),
                    const Text('Start Job'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left:12.0, right: 12.0, top: 25.0),
        child: Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0)
              ),
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Column(
              children: [
              Container(
                height: 75,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                  elevation: 4,
                  margin: const EdgeInsets.only(bottom: 0.5),
                  child: ListTile(title: 
                  Column(
                   children: [
                            Padding(
                              padding: const EdgeInsets.only(top:10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                   GestureDetector(
                                  onTap: (){
                                                  
                                 },
                                  child: const Icon(Icons.account_circle_sharp,size: 35, color: Color.fromARGB(255, 206, 203, 203),
                                  ),
                                ),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 3.0,top: 10.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                           children: [
                                            Text('Nicholas',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500 ),),
                                            SizedBox(width: 129),
                                            Text('Order No.',style: TextStyle(fontSize: 12,color:Colors.grey),),
                                           ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 3.0),
                                            child: Text('Customer Name',style: TextStyle(fontSize: 9),),
                                          ),
                                          SizedBox(width: 122),
                                          Text('12344358',style: TextStyle(fontSize: 9),),
                                        ],
                                      ),
                                         Padding(
                                           padding: EdgeInsets.only(left: 3.0, bottom: 5.0),
                                           child: Row(
                                           children: [
                                           Icon(Icons.star,
                                           color: Colors.yellow,
                                           size: 11,
                                           ),
                                           SizedBox(width: 2.0),
                                           Icon(Icons.star,
                                           color: Colors.yellow,
                                           size: 11,
                                           ),
                                           SizedBox(width: 2.0),
                                           Icon(Icons.star,
                                           color: Colors.yellow,
                                           size: 11,
                                           ),
                                           SizedBox(width: 2.0),
                                           Icon(Icons.star,
                                           color: Colors.yellow,
                                           size: 11,
                                           ),
                                                                                    ],
                                                                                   ),
                                         ),
                                     ],
                                  )
                               ],
                                                       ),
                            ),
                   ]
                  ),
                   
                  ),
                ),
              ),
               
          
               //Card 2
               Container(
                height: 75,
                 child: Card(
                   shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                  elevation: 4,
                  margin: const EdgeInsets.only(bottom: 0.5),
                  child:  const ListTile(title: 
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top:12.0),
                        child: Row(
                          children: [
                            Text('Service Name',style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),),
                          ],
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: Row(
                         children: [
                          Text('Personal Support Worker',style: TextStyle(fontSize: 11),),
                         ],
                        ),
                      )   
                    ],
                  ),
                  ),
                             ),
               ),
          
          
             //Card 3
          
              Container(
                height:75,
                child: Card(
                   shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                  elevation: 4,
                  margin: const EdgeInsets.only(bottom: 0.5),
                  child:  const ListTile(title: Column(
                   children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Row(
                            children: [
                              Icon(Icons.calendar_month, size: 12,color: Colors.black,),
                              SizedBox(width: 4,),
                              Text('19 Oct 2023',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                               SizedBox(width: 2),
                               Text('Order Date',style: TextStyle(fontSize: 12),), 
                            ],
                          ),
                        ),
                         SizedBox(height: 7.0),
                         Padding(
                           padding: EdgeInsets.only(bottom:12.0),
                           child: Row(
                                      children: [
                                      Icon(Icons.access_time_filled,size: 12, color: Colors.black,),
                                      SizedBox(width: 4),
                                      Text('08:42 PM',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                      SizedBox(width: 2),
                                      Text('Order Time',style: TextStyle(fontSize: 12),), 
                                      ],
                                    ),
                         )
                    ],
                  ),   
                 ],
               ),
              ),
            ),
            ),  
          SizedBox(height: 80.0),
          Text('2h 27m 00s', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
                
          SizedBox(height: 80.0),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){
                    ShowDialog(context);
                    }, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: const Size(305, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )
                    ),
                    child: const Text('Start Job')),
                  ],
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){

                    }, 
                     style: ElevatedButton.styleFrom(
                       backgroundColor: Colors.black,
                      minimumSize: const Size(305, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )
                     
                    ),
                    child: const Text('End Job')),
                  ],
                )
              ],
            ),
          ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}

 