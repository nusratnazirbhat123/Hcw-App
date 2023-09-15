import 'package:flutter/material.dart';
import 'package:hcw_app/Home_Home/All_Tab_Second_Screen.dart';
import 'package:hcw_app/Home_Home/Drawer.dart';
import 'package:hcw_app/Home_Home/Newtab.dart';
import 'package:hcw_app/Home_Home/Cancelledtab.dart';
import 'package:hcw_app/Home_Home/Completedtab.dart';



class AllBookings extends StatelessWidget {
  const AllBookings({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Padding(
        padding: const EdgeInsets.only(top: 0.0),
        child: MyScreen(),
      ),
    );
  }
}


class MyScreen extends StatefulWidget {
  @override
  MyScreenState createState()=> MyScreenState();
}
class MyScreenState extends State<MyScreen> {

  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
  void openDrawer(){
    scaffoldkey.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
      child: Scaffold( 
      appBar: AppBar(
       //automaticallyImplyLeading: false,
        toolbarHeight: 115,
        flexibleSpace: SingleChildScrollView(
          child: Container(
             decoration:  BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.lightGreen[100]!, Colors.white],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      )
                    ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                    Padding(
                      padding:  const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: (){
                            openDrawer();
                            },
                          child: Image.asset(
                            'images/logo.png',
                             height: 200,
                             width: 80,
                             ),
                          ),
                          const SizedBox(width: 155),
                          const Icon(Icons.notifications_outlined,size: 25,color: Colors.black,),
                          const SizedBox(width: 6),
                          const Icon(Icons.account_circle_sharp,size: 35, color: Color.fromARGB(255, 206, 203, 203),),
                        ],
                       ),
                    ),
                   ],
                 ),
          ), 
        ),
              bottom:const TabBar(
                labelColor: Colors.black,
                indicatorColor: Colors.green,
                indicatorWeight: 3,
                isScrollable:true,
                tabs: [
                  Tab(text: 'All'),
                  Tab(text: 'New'),
                  Tab(text: 'Completed'),
                  Tab(text: 'Cancelled'),
                 ],
                 ),
      ),


      drawer: const CustomDrawer(),

      //CODE FOR ALL TAB SCREEN 1st
      body: TabBarView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 120,
                  width: 330,
                  child: Card(                   
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: const BorderSide(
                        color: Colors.blue,
                        width: 1,
                      )
                    ),
                    margin: const EdgeInsets.all(16.0),
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child:  Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));
                                },
                                  child: const Icon(Icons.account_circle_sharp,size: 45, color: Color.fromARGB(255, 206, 203, 203),
                                   ),
                              ),
                                    const SizedBox(width: 6.0,),
                                    const Text('Nicholas',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,fontFamily: 'Proxima Nova' ),)
                            ],
                          ),
                              const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Your Profile is pending for Approval.',style: TextStyle(fontSize: 12,color: Colors.blue,fontFamily: 'Proxima Nova'),),
                                SizedBox(width: 5.0),
                                Icon(Icons.hourglass_empty_rounded, color: Colors.blue,),
                              ],
                              
                            ),
                        ],
                          ),
                    ),
                  ),
                ),
              ),
               Container(
                 height: 120,
                 width: 330,
                 child: Card(
                   elevation: 4,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(8),
                     side: const BorderSide(
                       color: Colors.green,
                       width: 1,
                     )
                   ),
                   margin: const EdgeInsets.all(16.0),
                   child: Padding(
                     padding: const EdgeInsets.all(9.0),
                     child:  Column(
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                            GestureDetector(
                                onTap: (){

                                },
                            
                                  child:   const Icon(Icons.account_circle_sharp,size: 45, color: Color.fromARGB(255, 206, 203, 203),
                                   ),
                            ),
                                   const SizedBox(width: 6.0,),
                                   const Text('Jonathan',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,fontFamily: 'Proxima Nova' ),)
                           ],
                         ),
                             const Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text('Your Profile is Approved.',style: TextStyle(fontSize: 12,color: Colors.green,fontFamily: 'Proxima Nova'),),
                               SizedBox(width: 5.0),
                               Icon(Icons.check_circle, color: Colors.green,),
                             ],
                             
                            ),
                        ],
                         ),
                   ),
                 ),
               ),
             ],
           ),  
               NewBookings(),
               CompleteBookings(), 
               CancelledBookings(),
        ],  
       ),
     ),
      );  
  }
}


   