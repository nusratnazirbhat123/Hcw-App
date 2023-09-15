import 'package:flutter/material.dart';
import 'package:hcw_app/Flow_Home_Page/Start_Job.dart';
import 'package:hcw_app/Home_Home/Cancelledtab.dart';
void main() => runApp(OrderDetails());

class OrderDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrderDetailsPage(),
    );
  }
}

class OrderDetailsPage extends StatefulWidget {
  @override
  OrderDetailsPageState createState() => OrderDetailsPageState();
}

class OrderDetailsPageState extends State<OrderDetailsPage> {
 

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
                    const Text('Order details'),
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
                const SizedBox(height: 18.0), 
                Container(
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2),
                    ),
                    elevation: 4,
                    margin: const EdgeInsets.only(bottom: 0.5),
                    child: const ListTile(title: 
                    Column(
                     children: [
                              Padding(
                                padding: EdgeInsets.only(top: 12.0),
                                child: Row(
                                  children: [
                                    Text('Customer Address-'),
                                  ],
                                ),
                              ),
                              SizedBox(height: 18.0),
                              Row(
                                children: [
                                 Text('Office No- 09, Top Floor, A-81',style: TextStyle(fontSize: 12, color: Color.fromARGB(255, 121, 118, 118)),),
                                ],
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                children: [
                                 Text('Sector - 4 Noida Utter Pradesh',style: TextStyle(fontSize: 12, color:  Color.fromARGB(255, 121, 118, 118)),),
                                ],
                              ),                               
                       ],
                     ),
                   ),
               ),
             ),
           ),
           const SizedBox(height: 45.0),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> CancelledBookings()));
                    }, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      minimumSize: const Size(305, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )
                    ),
                    child: const Text('X Cancel Booking')),
                  ],
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> StartJob()));
                    }, 
                     style: ElevatedButton.styleFrom(
                       backgroundColor: Colors.green,
                      minimumSize: const Size(305, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )
                     
                    ),
                    child: const Text('Accept')),
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
