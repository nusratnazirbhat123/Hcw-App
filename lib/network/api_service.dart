
import 'dart:convert';
//import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//import 'package:shared_preferences/shared_preferences.dart';

class ApiService {
  static const String baseUrl = 'https://mha-admin-panel-eiger.vercel.app'; // Replace with your API base URL


    static Future<http.Response> login(String username, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/api/hcw/auth/login'), // Replace with the login API endpoint
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'email': username, 'password': password}),
    );
    return response;
  }
     

   static Future<http.Response> register(String firstName,String lastName,String email,String password ,String phone, String address, String state, String city, String dob, String pincode, String postal_code_id_number, String country, String business_type, String acceptance_ip_address_currency, String routing_number, String account_number, String account_holder_name, String account_holder_type)async {
    final response = await http.post(
      Uri.parse('$baseUrl/api/hcw/auth/register'), // Replace with the login API endpoint
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'firstname': firstName,'lastname': lastName,'email': email,'password': password,
      'phone': phone, 'address': address, 'state': state, 'city': city, 'pincode': pincode, 'dob': dob, 
      'postal_code_id_number': postal_code_id_number,'country': country, 'business_type': business_type, 
      'acceptance_ip_address_currency': acceptance_ip_address_currency, 'routing_number': routing_number, 
      'account_number': account_number,'account_holder_name': account_holder_name, 'account_holder_type': account_holder_type}),
    );
    return response;
  }



  static Future<http.Response> getOtp(String email)async {
    final response = await http.post(
      Uri.parse('$baseUrl/api/user/auth/forget_password'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'email': email}),
    );
    return response;
  }




//Change Password

 static Future<http.Response> changePassword(String otp,String newPassword)async {
    final response = await http.put(
      Uri.parse('$baseUrl/api/hcw/auth/change_forget_password'), 
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'otp': otp,'password': newPassword}),
    );
    return response;
  }



//Add Time Slots


 static Future<http.Response> addTimeSlot(String id,  startTime,  endTime) async {
    final response = await http.post(
      Uri.parse('$baseUrl/api/hcw//timeslots'), 
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'id': id, 'start': startTime, 'end': endTime}),
    );
    return response;
  } 



//Delete Time slot

static Future<bool> DeleteTimeSlot(String id) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/api/hcw/timeslots/64f8287ed2fb4577d7b7a530'), 
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'id': id}),
    );
   if(response.statusCode == 200){
    return true;
   }
   else{
    print('Failed To Delete Time Slot. Error ${response.statusCode}: ${response.body}');
    return false;
   }
  }



// update time slot
Future<void> UpdateTimeSlot (String id) async {
  final response = await http.put (
    Uri.parse('$baseUrl/api/hcw/timeslots/$id'),
  );
  if (response.statusCode == 200){
    print('Time Slot Updated Successfully');
  }
  else{
    print('Failed to Update');
  }
}


//    static Future<http.Response> updateProfile(String firstName,String lastName, String email, String phone, String gender, yearOfBirth,
//    String houseNo, String state, String city, String pincode ) async {
//      String? authToken = await _getAuthToken();

//     if (authToken == null) {
//       throw Exception("Authorization token not found.");
//     }

//     final response = await http.put(
//       Uri.parse('$baseUrl/api/user/update'), 
//       headers: {'Content-Type': 'application/json',
//       'Authorization': 'Bearer $authToken',},
//       body: json.encode({'firstname': firstName,'lastname': lastName,
//       'email': email,'phone': phone,'gender': gender,'yearofbirth':yearOfBirth,'houseNumber':houseNo,'state':state,'city':city,'pinCode':pincode}),
//     );
//     return response;
//   }



//   // Example GET request
// static Future<ApiResponse> getProfile(String endpoint) async {
//   try {
//     final response = await http.get(Uri.parse('$baseUrl/api/user/$endpoint'));

//     return ApiResponse(
//       response.statusCode,
//       json.decode(response.body),
//     );
//   } catch (e) {
//     return ApiResponse(-1, 'Error: $e');
//   }
// }

//   // Example POST request
//   static Future<ApiResponse> postRequest(String endpoint, dynamic body) async {
//     try {
//       final response = await http.post(
//         Uri.parse('$baseUrl$endpoint'),
//         headers: {'Content-Type': 'application/json'},
//         body: json.encode(body),
//       );

//       return ApiResponse(
//         response.statusCode,
//         json.decode(response.body),
//       );
//     } catch (e) {
//       return ApiResponse(-1, 'Error: $e');
//     }
//   }


//   static Future<String?> _getAuthToken() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     String? authToken = prefs.getString('token'); 
//     return authToken;
//   }

//   // Add more methods for different types of requests (PUT, DELETE, etc.) if needed
// }

// class ApiResponse {
//   ApiResponse(int statusCode, decode);
// }
}