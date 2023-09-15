import 'dart:convert';
import 'package:hcw_app/constatnts/app_constants.dart';
import '../Home_Home/All_tab .dart';
import '../dialogs/custom_error_dialog.dart';
import 'package:flutter/material.dart';
import 'package:hcw_app/Forgot_Password/Forgotpassword.dart';
import 'package:hcw_app/SignIn_SignUp/Signup.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import '../network/api_service.dart';


void main() {
  runApp(LoginPage());
}
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState()=> _LoginPageState();
}
 class _LoginPageState extends State<LoginPage>{
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool showPassword = false;
  final formkey = GlobalKey<FormState>();
  bool isloading = false;
  

   @override
  void initState() {
    super.initState();
    // Check the login status from SharedPreferences
    _checkLoginStatus();
  }

  Future<void> _checkLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

    if (isLoggedIn) {
      // If the user is already logged in, navigate to the HomePage
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AllBookings()),
      );
    }
  }

  void _showErrorDialog(String errorMessage) {
    showDialog(
      context: context,
      builder: (context) {
        return CustomErrorDialog(
          errorMessage: errorMessage,
          onClosePressed: () {
            Navigator.pop(context); // Close the dialog
          },
        );
      },
    );
  }


  // Function to handle the login process
  Future<void> _handleLogin() async {
    String username = _usernameController.text;
    String password = _passwordController.text;

    // Make the API call using the ApiService
    http.Response response = await ApiService.login(username, password);

    if (response.statusCode == 200) {
      print(response.body);
      // If the login was successful, save the login status and navigate to the HomePage
      await _saveLoginStatus(true);
       Map<String, dynamic> responseData = json.decode(response.body);

    // Save user data and token in SharedPreferences
    await _saveUserData(responseData['data']);
    await _saveToken(responseData['token']);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AllBookings()),
      );
    } else {
      // If the login failed, show an error dialog
      print(response.body);
      Map<String, dynamic> responseData = json.decode(response.body);
      String errorMessage = responseData['error'];
      _showErrorDialog(errorMessage);
    }
  }
// Function to save user data in SharedPreferences
Future<void> _saveUserData(Map<String, dynamic> userData) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('user_data', json.encode(userData));
}

// Function to save the token in SharedPreferences
Future<void> _saveToken(String token) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('token', token);
}


  // Function to save the login status
  Future<void> _saveLoginStatus(bool isLoggedIn) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isLoggedIn', isLoggedIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,   //prevents resizing the layout when keyboart appears
      body: Padding(
        padding: const EdgeInsets.only(top: 130),
        child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Image.asset(
                'images/logo.png',
                 width: 100.0,
                 height: 70.0,
                 fit: BoxFit.fill,
                ),
              ],
            ),
          ), 
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 24.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Log In',
                      style: TextStyle(fontSize: 17,fontFamily: 'Proxima Nova', fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    controller: _usernameController,   //Assign the controller here
                    style: AppConstants.customTextFieldStyle, 
                    decoration: InputDecoration(
                      labelText: 'Email',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    validator: (value) {
                    if (value == null || value.isEmpty){
                      print('Please Enter Your Email');
                    }
                    else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(value));
                    {
                     // return null;
                    }
                    return null;
                    }

                    
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    controller: _passwordController,
                    style: AppConstants.customTextFieldStyle, // Assign the controller here
                    obscureText: !showPassword,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            showPassword = ! showPassword;
                          });
                        },
                        child: Icon(showPassword
                        ? Icons.visibility
                        : Icons.visibility_off)
                      ),
                    ),
                    validator: (value){
                      if (value == null || value.isEmpty){
                        return 'Please Enter Your Password';
                      }
                      else if(value.length<6){
                        return 'Password must be at least 6 characters';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 22.0),
                  FractionallySizedBox(
                    widthFactor: 1.0,
                    child: ElevatedButton(
                      onPressed: () async {
                      await _handleLogin();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        fixedSize: const Size.fromHeight(35.0),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 16, fontFamily: 'Proxima Nova', fontWeight: FontWeight.w500),),
                    ),
                  ),
                  const SizedBox(height: 18.0),
                  Align(
                    // Center the "Forgot Password?" text
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPasswordPage()));
                      },
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(fontFamily: 'Proxima Nova', fontSize: 13.0,color: Color(0xFF4A4A4A), fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
                   GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignupPage()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: RichText(
                text: const TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(
                    fontFamily: 'Proxima Nova',
                    fontWeight: FontWeight.w400,
                    fontSize: 13.0,
                    color: Color(0xFF4A4A4A),
                  ),
                  children: [
                    TextSpan(
                      text: "Signup Here",
                      style: TextStyle(
                        fontFamily: 'Proxima Nova',
                        fontWeight: FontWeight.w800, // Making it bold
                        fontSize: 13.0,
                        color: Color(0xFF4A4A4A),
                        decoration: TextDecoration.underline, // Adding underline
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
                ],
              ),
          ),
      );
  }
}
