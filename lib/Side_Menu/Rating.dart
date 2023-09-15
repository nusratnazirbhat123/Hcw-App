import 'package:flutter/material.dart';
void main() => runApp(Rating());

class Rating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RatingPage(),
    );
  }
}

class RatingPage extends StatefulWidget {
  @override
  RatingPageState createState() => RatingPageState();
}

class RatingPageState extends State<RatingPage> {
 

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
                      'Rating',
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
                  height: 65,
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
                                padding: EdgeInsets.only(top:20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                     Text('Nicholas',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500 ),),
                                  ],
                                  ),
                              ),
                     ],  
                    ),
                    ),
                  ),
                ),
                 Container(
                  height: 190,
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
                                padding: EdgeInsets.only(top:10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                     Text('Order Id 12345678',style: TextStyle(fontSize: 12),),
                                  ],
                                  ),
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                children: [
                                  Text('22 Nov,2021  08:42PM',style: TextStyle(fontSize: 11,color: Colors.grey,fontWeight: FontWeight.w200),),
                                ],
                              ),
                             SizedBox(height: 10.0),
                             Row(
                              children: [
                                Text('Service',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
                                SizedBox(width: 8.0),
                                Text('Registered Nurse',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                              ],
                             ),
                             SizedBox(height: 10.0),
                             Row(
                              children: [
                                Icon(Icons.star,size: 14, color: Colors.green),
                                SizedBox(width: 2.0),
                                Icon(Icons.star,size: 14, color: Colors.green),
                                SizedBox(width: 2.0),
                                Icon(Icons.star,size: 14, color: Colors.green),
                                SizedBox(width: 5.0),
                                Text('Perfect Service',style: TextStyle(fontSize: 14),),
                              ],
                             ),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                            Text('Thanks Coln',style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w400),),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                            Flexible(child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry...',style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.w400),)),
                          ],
                        )
                     ],  
                    ),
                    ),
                  ),
                 ),
                 const SizedBox(height: 20.0),
                 Container(
                  height: 65,
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
                                padding: EdgeInsets.only(top:20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                     Text('Nicholas',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500 ),),
                                  ],
                                  ),
                              ),
                     ],  
                    ),
                    ),
                  ),
                ),
                  Container(
                  height: 190,
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
                                padding: EdgeInsets.only(top:10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                     Text('Order Id 12345678',style: TextStyle(fontSize: 12),),
                                  ],
                                  ),
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                children: [
                                  Text('22 Nov,2021  08:42PM',style: TextStyle(fontSize: 11,color: Colors.grey,fontWeight: FontWeight.w200),),
                                ],
                              ),
                             SizedBox(height: 10.0),
                             Row(
                              children: [
                                Text('Service',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
                                SizedBox(width: 8.0),
                                Text('Registered Nurse',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                              ],
                             ),
                             SizedBox(height: 10.0),
                             Row(
                              children: [
                                Icon(Icons.star,size: 14, color: Colors.green),
                                SizedBox(width: 2.0),
                                Icon(Icons.star,size: 14, color: Colors.green),
                                SizedBox(width: 2.0),
                                Icon(Icons.star,size: 14, color: Colors.green),
                                SizedBox(width: 5.0),
                                Text('Perfect Service',style: TextStyle(fontSize: 14),),
                              ],
                             ),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                            Text('Thanks Coln',style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w400),),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                            Flexible(child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry...',style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.w400),)),
                          ],
                        )
                     ],  
                    ),
                    ),
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
