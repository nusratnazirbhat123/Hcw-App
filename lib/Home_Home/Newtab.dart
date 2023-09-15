import 'package:flutter/material.dart';
import 'package:hcw_app/Flow_Home_Page/OrderDetails.dart';

class NewBookings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
      child: Scaffold(
        body: Padding(
           padding: const EdgeInsets.all(16.0),
           child: Container(
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
                                           padding: EdgeInsets.only(left: 3.0,top: 8.0),
                                           child: Row(
                                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                               Text('Nicholas',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,fontFamily: 'Proxima Nova' ),),
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
                                              padding: EdgeInsets.only(left: 3.0),
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
                       margin: const EdgeInsets.only(bottom: 0.5),
                       child:  const ListTile(title: 
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Row(
                             children: [
                                Text('Service Name',style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),),
                             ],
                           ),
                           SizedBox(height: 3.0),
                           Row(
                            children: [
                             Text('Personal Support Worker',style: TextStyle(fontSize: 11),),
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
                                 Icon(Icons.calendar_month, size: 12,color: Colors.black,),
                                 SizedBox(width: 4,),
                                 Text('19 Oct 2023',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                  SizedBox(width: 2),
                                  Text('Order Date',style: TextStyle(fontSize: 12),), 
                                  SizedBox(width: 107),
                                  Text('\$150',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                               ],
                             ),
                              SizedBox(height: 7.0),
                              Row(
                         children: [
                           Icon(Icons.access_time_filled,size: 12, color: Colors.black,),
                           SizedBox(width: 4),
                           Text('08:42 PM',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                           SizedBox(width: 2),
                            Text('Order Time',style: TextStyle(fontSize: 12),), 
                            SizedBox(width: 89),
                              Text('Service Price',style: TextStyle(fontSize: 10),),
                         ],
                         )
                           ],
                         ),
                       
                        ],
                       ),
                       ),
                       ),
                     
             
             
             
                     //Card 4
                         
                      Card(
                        shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(2),
                       ),
                       elevation: 4,
                       margin:  const EdgeInsets.only(bottom: 0.5),
                       child:  ListTile(title: 
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                             ElevatedButton(
                             style: ElevatedButton.styleFrom(
                               minimumSize: const Size(60, 25),
                               backgroundColor: Colors.lightGreen[100],
                             ),
                             onPressed: ()
                           {
                           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  OrderDetails ()));

                           }, child: const Text('Accept',style: TextStyle(fontSize: 11,color: Colors.green),),
                           ),
             
                           const SizedBox(width: 10.0,),
                           ElevatedButton(
                             style: ElevatedButton.styleFrom(
                               minimumSize: const Size(60, 25),
                               backgroundColor: Colors.red[100],
                             ),
                             onPressed: ()
                           {
             
                           }, child: const Text('Reject',style: TextStyle(fontSize: 11,color: Colors.red),),
                           ),
                         ], 
                       ),
                       ),
                     ),
             
             
                   
             
                    //Code for Card List 2
                     SizedBox(height: 25.0),
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
                                           padding: EdgeInsets.only(left: 3.0,top: 8.0),
                                           child: Row(
                                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                               Text('Nicholas',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,fontFamily: 'Proxima Nova' ),),
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
                                              padding: EdgeInsets.only(left: 3.0),
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
                       margin: const EdgeInsets.only(bottom: 0.5),
                       child:  const ListTile(title: 
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Row(
                             children: [
                                Text('Service Name',style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),),
                             ],
                           ),
                           SizedBox(height: 3.0),
                           Row(
                            children: [
                             Text('Personal Support Worker',style: TextStyle(fontSize: 11),),
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
                                 Text('19 Oct 2023',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                  SizedBox(width: 2),
                                  Text('Order Date',style: TextStyle(fontSize: 12),), 
                                  SizedBox(width: 107),
                                  Text('\$150',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                               ],
                             ),
                              SizedBox(height: 7.0),
                              Row(
                         children: [
                           Icon(Icons.access_time_filled,size: 12,color: Colors.black,),
                           SizedBox(width: 4),
                           Text('08:42 PM',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                           SizedBox(width: 2),
                            Text('Order Time',style: TextStyle(fontSize: 12),), 
                            SizedBox(width: 89),
                              Text('Service Price',style: TextStyle(fontSize: 10),),
                         ],
                         )
                           ],
                         ),
                       
                        ],
                       ),
                       ),
                       ),
                     
             
             
             
                     //Card 4
                         
                      Card(
                        shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(2),
                       ),
                       elevation: 4,
                       margin:  const EdgeInsets.only(bottom: 0.5),
                       child:  ListTile(title: 
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           ElevatedButton(
                             style: ElevatedButton.styleFrom(
                               minimumSize: const Size(60, 25),
                               backgroundColor: Colors.lightGreen[100],
                             ),
                             onPressed: ()
                           {
                          
                           }, child: const Text('Accept',style: TextStyle(fontSize: 11,color: Colors.green),),
                           ),
             
                           const SizedBox(width: 10.0,),
                           ElevatedButton(
                             style: ElevatedButton.styleFrom(
                               minimumSize: const Size(60, 25),
                               backgroundColor: Colors.red[100],
                             ),
                             onPressed: ()
                           {
             
                           }, child: const Text('Reject',style: TextStyle(fontSize: 11,color: Colors.red),),
                           ),
                         ], 
                       ),
                       ),
                     ),
             
                  
             
             
                     ],
                     
                         ),
             ),
           
           ),
        ),
       ),
    );
  }
}