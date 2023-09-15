import 'dart:convert';
//import 'dart:js';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '../constatnts/app_constants.dart';
import '../dialogs/custom_error_dialog.dart';
import '../dialogs/custom_success_dialog.dart';
import '../network/api_service.dart';

class   ForgetPasswordPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();

  ForgetPasswordPage({super.key});
  @override
  Widget build(BuildContext context)
   {

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

void showSuccessDialog(String successMessage) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return CustomSuccessDialog(
        successMessage: successMessage,
        onClosePressed: () {
          Navigator.of(context).pop(); // Close the dialog
        },
        onTaskComplete: () {
          
        },
      );
    },
  );
}
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                  height: 200.0,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.arrow_back_ios),
                            onPressed: (){
                              Navigator.of(context).pop();
                            },
                          )
                         ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18,bottom: 35),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/logo.png',
                                 width: 100.0,
                                 height: 70.0,
                                 fit: BoxFit.fill,),
                            ],
                          ),
                        ),
                      ],
                    ),
                   ),
                ),
            
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
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
                          'Forget Password',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, fontFamily: 'Proxima Nova',),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      TextFormField(
                        controller: _emailController, // Assign the controller here
                        style: AppConstants.customTextFieldStyle,
                        decoration: InputDecoration(
                          labelText: 'Email Address',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
                        ),
                        
                      ),
                      const SizedBox(height: 16.0),
                      FractionallySizedBox(
                        widthFactor: 1.0,
                        child: ElevatedButton(
                         onPressed: () async {
                            String email = _emailController.text;

                          if (email.isEmpty) {
                            _showErrorDialog('Please enter a valid email address');
                            return;
                          }
                        http.Response response = await ApiService.getOtp(email);

                        if (response.statusCode == 200) {
                    
                         Map<String, dynamic> responseData = json.decode(response.body);
                          bool success = responseData['success'];
                          if(success == true)
                          {
                          showSuccessDialog("Email Sent Successfully");
                          }

                        } else {
                          print(response.body);
                          Map<String, dynamic> responseData = json.decode(response.body);
                          String errorMessage = responseData['error'];
                          _showErrorDialog(errorMessage);
                        }
                          },
                      
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            fixedSize: const Size.fromHeight(36.0),
                          ),
                          child: const Text(
                            'Forget Password',
                            style: AppConstants.buttonTextStyle),
                        ),
                      ),
                      const SizedBox(height: 25.0),
                          
                      TextFormField(
                        controller: _otpController, // Assign the controller here
                        style: AppConstants.customTextFieldStyle,
                        decoration: InputDecoration(
                          labelText: 'Enter OTP',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      TextFormField(
                      controller: _newPasswordController, // Assign the controller here
                      style: AppConstants.customTextFieldStyle,
                      decoration: InputDecoration(
                          labelText: 'New Pasword',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
                        ),
                    ),
                    const SizedBox(height: 16.0),
                      FractionallySizedBox(
                        widthFactor: 1.0,
                        child: ElevatedButton(
                          onPressed: () async {
                            String otp = _otpController.text;
                           String newPassword = _newPasswordController.text;

                          if (otp.isEmpty || newPassword.isEmpty ) {
                            _showErrorDialog('Please enter Valid Data');
                            return;
                          }
                        http.Response response = await ApiService.changePassword(otp,newPassword);
                        print(response.body);
                        if (response.statusCode == 200) {
                    
                         Map<String, dynamic> responseData = json.decode(response.body);
                          bool success = responseData['success'];
                          if(success == true)
                          {
                            print(response.body);
                          showSuccessDialog("Password Changed Successfully");
                          }

                        } else {
                          print(response.body);
                          Map<String, dynamic> responseData = json.decode(response.body);
                          String errorMessage = responseData['error'];
                          _showErrorDialog(errorMessage);
                        }
                                           
                        },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:Colors.green,
                            fixedSize: const Size.fromHeight(36.0),
                          ),
                          child: const Text(
                            'Change Password',
                            style: AppConstants.buttonTextStyle),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Align(
                        // Center the "Forgot Password?" text
                        alignment: Alignment.center,
                        child: GestureDetector(
                         child: Expanded(
                           child: RichText(
                                      text: const TextSpan(
                                        style: TextStyle(color: Colors.black),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'By signing up for an account, I accept the Meta Health Associates',
                                          style: TextStyle(
                                            fontFamily: 'Proxima Nova',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13.0,
                                            color: Color(0xFF4A4A4A),
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Terms and Conditions',
                                          style: TextStyle(
                                          fontFamily: 'Proxima Nova',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13.0,
                                          color: Colors.black,
                                        ),
                                        ),
                                        TextSpan(
                                          text: ' and ',
                                          style: TextStyle(
                                          fontFamily: 'Proxima Nova',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13.0,
                                          color: Color(0xFF4A4A4A),
                                        ),
                                        ),
                                        TextSpan(
                                         text: 'Privacy Policy',
                                        style: TextStyle(
                                          fontFamily: 'Proxima Nova',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13.0,
                                          color: Colors.black,
                                        ), 
                                        )
                                      ]
                                      ), 
                                      ),
                         ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

