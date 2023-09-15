import 'package:flutter/material.dart';


void main() => runApp(Earning());

class Earning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EarningPage(),
    );
  }
}

class EarningPage extends StatefulWidget {
  @override
  EarningPageState createState() => EarningPageState();
}

class EarningPageState extends State<EarningPage> {
 

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
                padding: const EdgeInsets.only(top: 33),
                child: Row(
                  children: [
                    IconButton(onPressed: (){
                    Navigator.of(context).pop();
                    }, icon: const Icon(Icons.arrow_back_ios)),
                    const SizedBox(width: 6.0),
                    const Text(
                      'My Earning',
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
      body: Container(
            child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Upcoming',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    Icon(Icons.tune, size: 20)
                  ],
                ),
              ),
              SizedBox(height: 16),
              Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0)
              ),
              
              //Code for Crad List 1
              //Card 1
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Column(
                      children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                        elevation: 4,
                        margin: const EdgeInsets.only(bottom: 0.5),
                        child: ListTile(title: 
                        Column(
                         children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                      onTap: (){
              
                                     },
                                      child: Icon(Icons.account_circle_sharp,size: 40, color: Color.fromARGB(255, 206, 203, 203),
                                      ),
                                     ),
                                      const Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 3.0,top: 6.0),
                                            child: Row(
                                               children: [
                                                Text('Nicholas',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500 ),),
                                                SizedBox(width: 129),
                                                Text('Order No.',style: TextStyle(fontSize: 12,color:Colors.grey),),
                                               ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top:5.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(left: 3.0),
                                                  child: Text('Medicine Specialist',style: TextStyle(fontSize: 9),),
                                                ),
                                                SizedBox(width: 107),
                                                Text('12344358',style: TextStyle(fontSize: 12),),
                                              ],
                                            ),
                                          ),
                                         ],
                                      )
                                   ],
                                 ),
                         ]
                        ),
                         
                        ),
                      ),
                       
              
                       //Card 2
                       Card(
                         shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                        elevation: 4,
                        margin:  const EdgeInsets.only(bottom: 0.5),
                        child:   const ListTile(title: 
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Service Name',style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),),
                              ],
                            ),
                            
                            Row(
                             children: [
                              Text('Personal Support Worker',style: TextStyle(fontSize: 10),),
                                 SizedBox(width: 94),
                                 Text('\$150',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                 Text(' My Earning',style: TextStyle(fontSize: 9),),
                             ],
                            )   
                          ],
                        ),
                        ),
                      ),
              
              
                     //Card 3
              
                      Card(
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
                              Row(
                                children: [
                                  Icon(Icons.calendar_month, size: 12, color: Colors.black,),
                                  SizedBox(width: 4,),
                                  Text('19 Oct 2023',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                                   SizedBox(width: 2),
                                   Text('Booking Date',style: TextStyle(fontSize: 9),), 
                                   SizedBox(width: 23),
                                   Icon(Icons.access_time_filled, size: 12, color: Colors.black,),
                                   SizedBox(width: 4),
                                   Text('08:42 PM',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                                   SizedBox(width: 2),
                                   Text('Schedule Time',style: TextStyle(fontSize: 9),), 
                             
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                   ),
                       
                        ],
                      ),
                    ),
                    
                  ),

                  //Card List 2
                  SizedBox(height: 10),
              Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0)
              ),
              
              //Code for Crad List 1
              //Card 1
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Column(
                      children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                        elevation: 4,
                        margin: const EdgeInsets.only(bottom: 0.5),
                        child: ListTile(title: 
                        Column(
                         children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                      onTap: (){
              
                                     },
                                      child: Icon(Icons.account_circle_sharp,size: 40, color: Color.fromARGB(255, 206, 203, 203),
                                      ),
                                     ),
                                      const Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 3.0,top: 6.0),
                                            child: Row(
                                               children: [
                                                Text('Nicholas',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500 ),),
                                                SizedBox(width: 129),
                                                Text('Order No.',style: TextStyle(fontSize: 12,color:Colors.grey),),
                                               ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top:5.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(left: 3.0),
                                                  child: Text('Medicine Specialist',style: TextStyle(fontSize: 9),),
                                                ),
                                                SizedBox(width: 107),
                                                Text('12344358',style: TextStyle(fontSize: 12),),
                                              ],
                                            ),
                                          ),
                                         ],
                                      )
                                   ],
                                 ),
                         ]
                        ),
                         
                        ),
                      ),
                       
              
                       //Card 2
                       Card(
                         shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                        elevation: 4,
                        margin:  const EdgeInsets.only(bottom: 0.5),
                        child:   const ListTile(title: 
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Service Name',style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),),
                              ],
                            ),
                            
                            Row(
                             children: [
                              Text('Personal Support Worker',style: TextStyle(fontSize: 10),),
                                 SizedBox(width: 94),
                                 Text('\$150',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                 Text(' My Earning',style: TextStyle(fontSize: 9),),
                             ],
                            )   
                          ],
                        ),
                        ),
                      ),
              
              
                     //Card 3
              
                      Card(
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
                              Row(
                                children: [
                                  Icon(Icons.calendar_month, size: 12, color: Colors.black,),
                                  SizedBox(width: 4,),
                                  Text('19 Oct 2023',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                                   SizedBox(width: 2),
                                   Text('Booking Date',style: TextStyle(fontSize: 9),), 
                                   SizedBox(width: 23),
                                   Icon(Icons.access_time_filled, size: 12, color: Colors.black,),
                                   SizedBox(width: 4),
                                   Text('08:42 PM',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                                   SizedBox(width: 2),
                                   Text('Schedule Time',style: TextStyle(fontSize: 9),), 
                             
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                   ),
                       
                        ],
                      ),
                    ),
                    
                  ),

            ],  
          ),
        ),
      ),
    );
  }
}  
