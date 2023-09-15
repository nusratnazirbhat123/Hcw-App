
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hcw_app/SignIn_SignUp/Log_In.dart';
import 'package:hcw_app/dialogs/custom_success_dialog.dart';
import 'package:http/http.dart' as http;
import '../constatnts/app_constants.dart';
import '../dialogs/custom_error_dialog.dart';
import '../network/api_service.dart';

void main() {
  runApp(SignupPage());
}
class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState()=> _SignupPageState();
  }
  class _SignupPageState extends State<SignupPage>{
    final GlobalKey menukey1 = GlobalKey();
    final GlobalKey menukey2 = GlobalKey();
    final GlobalKey menukey3 = GlobalKey();

  List <String> menu1items = ['Jammu & Kashmir', 'Assam'];
  String Selecteditem1 = '';


  List <String> menu2items = ['Individual', 'Other'];
  String Selecteditem2 = '';

  List <String> menu3items = ['Savings', 'Current'];
  String Selecteditem3 = '';

  

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController dateofbirthController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController pincodeController = TextEditingController();
  TextEditingController postalCodeController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController businesstypeController = TextEditingController();
  TextEditingController ipaddressController = TextEditingController();
  TextEditingController routingNumberController = TextEditingController();
  TextEditingController accountNumberController = TextEditingController();
  TextEditingController accountHolderNameController = TextEditingController();
  TextEditingController accountHolderTypeController = TextEditingController();

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
           Navigator.pop(context);
        },
      );
    },
  );
}



  @override
 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 150.0,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
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
                      Expanded(
                        child: Center(
                          child: Image.asset(
                            'images/logo.png', 
                            width: 100.0,
                            height: 70.0,
                            fit: BoxFit.fill,),
                        ),
                      ),
                    ],
                  ),
                 ),
              ),
               const SizedBox(height: 12.0,),
               Padding(
                padding: const EdgeInsets.all(16.0),
                 child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    color: Color.fromARGB(236, 247, 244, 244),
                  ),
                  child:Form(
                    key: formkey,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 10.0, left: 10.0),
                          child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Details',style: TextStyle(fontSize: 19, fontWeight: FontWeight.w300,fontFamily: 'Proxima Nova'),),
                          ],
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Padding(
                         padding: const EdgeInsets.all(14.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: firstNameController,    //assign the controller here
                                  style: AppConstants.customTextFieldStyle,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                                    labelText: 'First Name',
                                    contentPadding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: 6.0),
                                    ),
                                  ),
                              ),
                                const SizedBox(width: 10.0,),
                                Expanded(
                                  child: TextFormField(
                                    controller: lastNameController,
                                   style: AppConstants.customTextFieldStyle,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                                    labelText: 'Last Name',
                                    contentPadding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
                                    ),
                                  ),
                                )
                            ],
                          ),
                        ),
                       Padding(
                         padding: const EdgeInsets.all(14.0),
                         child: Row(
                          children: [
                            Expanded(
                              child:TextFormField(
                                controller: emailController,
                                style: AppConstants.customTextFieldStyle,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                                      labelText: 'Email',
                                      contentPadding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
                                      ),
                            ),
                            ),
                          ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(14.0),
                         child: Row(
                          children: [
                            Expanded(
                              child:TextFormField(
                                controller: passwordController,
                                style: AppConstants.customTextFieldStyle,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                                      labelText: 'Password',
                                      contentPadding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
                                      ),
                            ),
                            ),
                          ],
                         ),
                       ),
                      
                      Padding(
                         padding: const EdgeInsets.all(14.0),
                         child: Row(
                          children: [
                            Expanded(
                              child:TextFormField(
                               controller: phoneController,
                               style: AppConstants.customTextFieldStyle,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                                      labelText: 'Phone',
                                      contentPadding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
                                      ),
                            ),
                            ),
                          ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(14.0),
                         child: Row(
                          children: [
                            Expanded(
                              child:TextFormField(
                               controller: addressController,
                               style: AppConstants.customTextFieldStyle,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                                      labelText: 'Address',
                                      contentPadding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
                                      ),
                            ),
                            ),
                          ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(14.0),
                         child: Row(
                          children: [
                            Expanded(
                              child:TextFormField(
                               controller: stateController,
                               style: AppConstants.customTextFieldStyle,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                                      labelText: 'State',
                                      suffixIcon: GestureDetector(
                                        onTapDown: (TapDownDetails details){
                                          showDropdownMenu1(context, details.globalPosition, menukey1);
                                        },
                                         key: menukey1,
                                        child: Icon(Icons.arrow_drop_down)),
                                      contentPadding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
                                      ),
                            ),
                            ),
                          ],
                         ),
                       ),
                       Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: cityController,
                                  style: AppConstants.customTextFieldStyle,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                                    labelText: 'City',
                                    contentPadding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: 6.0),
                                    ),
                                  ),
                              ),
                                const SizedBox(width: 10.0,),
                                Expanded(
                                  child: TextFormField(
                                    controller: pincodeController,
                                    style: AppConstants.customTextFieldStyle,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                                    labelText: 'Pin Code',
                                    contentPadding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
                                    ),
                                  ),
                                )
                            ],
                          ),
                        ),
                         Padding(
                         padding: const EdgeInsets.all(14.0),
                         child: Row(
                          children: [
                            Expanded(
                              child:TextFormField(
                               controller: dateofbirthController,
                               style: AppConstants.customTextFieldStyle,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                                      labelText: 'Date Of Birth',
                                      contentPadding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
                                      ),
                            ),
                            ),
                          ],
                         ),
                       ),
                        Padding(
                         padding: const EdgeInsets.all(14.0),
                         child: Row(
                          children: [
                            Expanded(
                              child:TextFormField(
                               controller: postalCodeController,
                               style: AppConstants.customTextFieldStyle,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                                      labelText: 'Postal Code ID Number',
                                      contentPadding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
                                      ),
                            ),
                            ),
                          ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(14.0),
                         child: Row(
                          children: [
                            Expanded(
                              child:TextFormField(
                               controller: countryController,
                               style: AppConstants.customTextFieldStyle,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                                      labelText: 'Country',
                                      contentPadding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
                                      ),
                            ),
                            ),
                          ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(14.0),
                         child: Row(
                          children: [
                            Expanded(
                              child:TextFormField(
                               controller: businesstypeController,
                               style: AppConstants.customTextFieldStyle,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                                      labelText: 'Business Type',
                                      suffixIcon: GestureDetector(
                                      onTapDown: (TapDownDetails details){
                                        showDropdownMenu2(context, details.globalPosition, menukey2);
                                      },  
                                      key: menukey2,
                                      child: Icon(Icons.arrow_drop_down)),
                                      
                                      contentPadding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
                                      ),
                            ),
                            ),
                          ],
                         ),
                       ),
                        Padding(
                         padding: const EdgeInsets.all(14.0),
                         child: Row(
                          children: [
                            Expanded(
                              child:TextFormField(
                                 controller: ipaddressController,
                                 style: AppConstants.customTextFieldStyle,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                                      labelText: 'Acceptance IP Address Currency',
                                      contentPadding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
                                      ),
                            ),
                            ),
                          ],
                         ),
                       ),
                        Padding(
                         padding: const EdgeInsets.all(14.0),
                         child: Row(
                          children: [
                            Expanded(
                              child:TextFormField(
                                 controller: routingNumberController,
                                 style: AppConstants.customTextFieldStyle,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                                      labelText: 'Routing Number',
                                      contentPadding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
                                      ),
                            ),
                            ),
                          ],
                         ),
                       ),
                        Padding(
                         padding: const EdgeInsets.all(14.0),
                         child: Row(
                          children: [
                            Expanded(
                              child:TextFormField(
                                 controller: accountNumberController,
                                  style: AppConstants.customTextFieldStyle,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                                      labelText: 'Account Number',
                                      contentPadding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
                                      ),
                            ),
                            ),
                          ],
                         ),
                       ),
                        Padding(
                         padding: const EdgeInsets.all(14.0),
                         child: Row(
                          children: [
                            Expanded(
                              child:TextFormField(
                                 controller: accountHolderNameController,
                                  style: AppConstants.customTextFieldStyle,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                                      labelText: 'Account Holder Name',
                                      contentPadding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
                                      ),
                            ),
                            ),
                          ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(14.0),
                         child: Row(
                          children: [
                              Expanded(
                              child:TextFormField(
                               controller: accountHolderTypeController,
                               style: AppConstants.customTextFieldStyle,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                                      labelText: 'Account Holder Type',
                                      suffixIcon: GestureDetector(
                                        onTapDown: (TapDownDetails details){
                                        showDropdownMenu3(context, details.globalPosition, menukey3);
                                      },
                                       key: menukey3,
                                       child: const Icon(Icons.arrow_drop_down)),
                                       contentPadding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
                                      ),
                            ),
                            ),
                          ],
                         ),
                       ),
                       const SizedBox(height: 20.0,),
                           Padding(
                             padding: const EdgeInsets.all(14.0),
                             child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                        Expanded(
                                         child: ElevatedButton(
                                          onPressed: () async {
                                          String  firstName = firstNameController.text;
                                          String  lastName = lastNameController.text;
                                          String  email = emailController.text;
                                          String  password = passwordController.text;
                                          String  dob = dateofbirthController.text;
                                          String  phone = phoneController.text; 
                                          String  address = addressController.text;
                                          String  state = stateController.text;
                                          String  city = cityController.text;
                                          String  pincode = pincodeController.text; 
                                          String  postal_code_id_number = postalCodeController.text;
                                          String  country = countryController.text;
                                          String  business_type = businesstypeController.text;
                                          String  acceptance_ip_address_currency = ipaddressController.text;
                                          String  routing_number = routingNumberController.text;
                                          String  account_number = accountNumberController.text;
                                          String  account_holder_name = accountHolderNameController.text; 
                                          String  account_holder_type = accountHolderTypeController.text; 

                          if (firstName.isEmpty || lastName.isEmpty || email.isEmpty || password.isEmpty ||
                            phone.isEmpty || address.isEmpty || state.isEmpty ||city.isEmpty || pincode.isEmpty ||  dob.isEmpty ||
                            postal_code_id_number.isEmpty || country.isEmpty||business_type.isEmpty || acceptance_ip_address_currency.isEmpty ||
                            routing_number.isEmpty || account_number.isEmpty || account_holder_name.isEmpty || account_holder_type.isEmpty) {
                          _showErrorDialog('Please fill all fields');
                          return;
                          }

                        // Make the API call using the ApiService
                        http.Response response = await ApiService.register(
                          firstName, lastName, email, password, dob, phone, address, state, city, pincode, postal_code_id_number, country, business_type, acceptance_ip_address_currency,routing_number, account_number, account_holder_name, account_holder_type
                        );

                        if (response.statusCode == 200) {
                    
                         Map<String, dynamic> responseData = json.decode(response.body);
                          bool success = responseData['success'];
                          if(success == true)
                          {
                          showSuccessDialog("Registration Successfull");
                          }
                          await Future.delayed(Duration(seconds: 2));
                          Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()));

                        } else {
                          // If the registration failed, show an error dialog
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
                       child: const Text('Continue', style: AppConstants.buttonTextStyle),
                    ),
                                         
                    ), 
                  ],
                ),
             ),
                             const SizedBox(height: 8.0),
                             Padding(
                               padding: const EdgeInsets.all(18.0),
                               child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Expanded(
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
                                 ],
                               ),
                             ),
                             SizedBox(height: 20.0,)
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



 //Code for State textfield

  void showDropdownMenu1(BuildContext context, Offset position, GlobalKey menukey1){
    final RenderBox renderbox = menukey1.currentContext?.findRenderObject() as RenderBox;
    final menuposition = renderbox.localToGlobal(Offset.zero);
  showMenu(context: context, 
  position: RelativeRect.fromLTRB(
    position.dx,
    position.dy,
    position.dx + renderbox.size.width,
    position.dy + renderbox.size.height + 1,
    ), 
  items: menu1items.map((String item){
    return PopupMenuItem<String>(
      value: item,
        child: Text(item),
      );
      }).toList(),
      ).then((value) {
        if(value != null){
        setState(() {
        Selecteditem1 = value;
      });
    }
  });
}





  //code for Business Type textfield

  void showDropdownMenu2(BuildContext context, Offset position, GlobalKey menukey2){
    final RenderBox renderbox = menukey2.currentContext?.findRenderObject() as RenderBox;
    final menuposition = renderbox.localToGlobal(Offset.zero);
  showMenu(context: context, 
  position: RelativeRect.fromLTRB(
    position.dx,
    position.dy,
    position.dx + renderbox.size.width,
    position.dy + renderbox.size.height + 1,
    ), 
  items: menu2items.map((String item){
    return PopupMenuItem<String>(
      value: item,
        child: Text(item),
      );
  }).toList(),
  ).then((value) {
        if(value != null){
        setState(() {
        Selecteditem2 = value;
      });
     }
  }
  );
}



//Code for State textfield

  void showDropdownMenu3(BuildContext context, Offset position, GlobalKey menukey3){
    final RenderBox renderbox = menukey3.currentContext?.findRenderObject() as RenderBox;
    final menuposition = renderbox.localToGlobal(Offset.zero);
  showMenu(context: context, 
  position: RelativeRect.fromLTRB(
    position.dx,
    position.dy,
    position.dx + renderbox.size.width,
    position.dy + renderbox.size.height + 1,
    ), 
  items: menu3items.map((String item){
    return PopupMenuItem<String>(
      value: item,
        child: Text(item),
      );
  }).toList(),
  ).then((value) {
        if(value != null){
        setState(() {
        Selecteditem1 = value;
      });
        }
  }
  );
  }
  }


