
import 'package:flutter/material.dart';
import 'package:hcw_app/SignIn_SignUp/Log_In.dart';

void main() {
  runApp(WelcomePageApp());
}

class WelcomePageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    
    // Wait for 3 seconds and then navigate to the login page
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
                 decoration:  BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.lightGreen[100]!, Colors.white],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          )
                        ),
            child: Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/logo.png',
                          width: 100.0,
                          height: 80.0,
                          fit: BoxFit.fill,
                          ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Welcome to',style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500,fontFamily: 'Proxima Nova',),),
                          ],
                        ),
                        SizedBox(height: 6),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Meta Health Associates',style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold, fontFamily: 'Proxima Nova',),),
                      ],
                    )
                  ],
                ),
              ),
            ),  
           ),
    );
  }
}


