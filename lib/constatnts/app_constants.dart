import 'dart:ui';

import 'package:flutter/material.dart';

class AppConstants {
  static const String baseUrl = 'YOUR_BASE_API_URL';
  // Add other constant values here if needed

//Headings
  static const TextStyle headingTwo = TextStyle(    
 fontFamily: 'Proxima Nova',
fontSize: 20, 
fontWeight: 
FontWeight.bold,
color:  Color(0xFF4A4A4A));

  static const TextStyle simpleTexxt = TextStyle(    
 fontFamily: 'Proxima Nova',
fontSize: 14, 
fontWeight: 
FontWeight.normal,
color:  Color(0xFF4A4A4A));

//TextFields
 static const TextStyle customTextFieldStyle = TextStyle(
  fontFamily: 'Proxima Nova', // Replace with your actual font family name
  fontSize: 14,
  fontWeight: FontWeight.normal, // You can set the desired font weight here
  color: Color(0xFF4A4A4A), // You can set the text color as well
);


//Buttons
static const TextStyle buttonTextStyle = TextStyle(
  fontFamily: 'Proxima Nova',
  fontSize: 13,
  fontWeight: FontWeight.w500,
  color: Colors.white,
);
}






