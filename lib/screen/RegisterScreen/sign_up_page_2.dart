import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sih_app/config/color/screen_color.dart';
import 'package:sih_app/screen/home/Home_Screen.dart';

class MyRegistrationPage extends StatefulWidget {
  @override
  _MyRegistrationPageState createState() => _MyRegistrationPageState();
}

class _MyRegistrationPageState extends State<MyRegistrationPage> {
  final _formKey = GlobalKey<FormState>();

  int num = 1;

  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _locationController = TextEditingController();
  TextEditingController _aboutController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _genderController = TextEditingController();
  TextEditingController _annualIncomeController = TextEditingController();
  TextEditingController _schoolNameController = TextEditingController();
  TextEditingController _aadharCardController = TextEditingController();
  TextEditingController _classstudentController = TextEditingController();
  TextEditingController _listRegisterController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  // final String apiUrl = 'http://192.168.191.168:8000/api/v1?format=json';
  final String apiUrl = "https://coabhatapara.ac.in/admin/dumy.php";

  // Function to validate phone number
// Function to validate phone number
  String? validatePhoneNumber(String? phoneNumber) {
    return phoneNumber?.length != 10 ? 'Invalid phone number' : null;
  }

  // String? validateRegister(String? member) {
  //   return member?.length != 0;
  // }

  // Function to validate Aadhar card number
  String? validateAadharCard(String? aadharCard) {
    return aadharCard?.length != 9 ? 'Invalid Aadhar card number' : null;
  }

  // Function to validate gender
  String? validateGender(String? gender) {
    return (gender?.toLowerCase() != 'male' &&
            gender?.toLowerCase() != 'female')
        ? 'Invalid gender'
        : null;
  }

  Future<void> _makeRegistrationRequest() async {
    if (_formKey.currentState!.validate()) {
      // Form is valid, proceed with the registration request
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          't1': _aadharCardController.text.trim(),
          't2': _nameController.text.trim(),
          't3': _phoneNumberController.text.trim(),
          't4': _ageController.text.trim(),
          't5': _genderController.text.trim(),
          't6': _locationController.text.trim(),
          // 'about': _aboutController.text.trim(),
          't7': int.tryParse(_annualIncomeController.text.trim()) ?? 0,
          't8': _schoolNameController.text.trim(),
          't9': _classstudentController.text.trim(),
          't10': _listRegisterController.text.trim(),
          't11': _passwordController.text.trim(),
        }),
      );
      print(_aadharCardController.text.trim());
      print(_aadharCardController.text.trim());
      print(_nameController.text.trim());
      print(_phoneNumberController.text.trim());
      print(_ageController.text.trim());
      print(_genderController.text.trim());
      print(_locationController.text.trim());
      // 'about': _aboutController.text.trim(),
      print(int.tryParse(_annualIncomeController.text.trim()));
      print(_schoolNameController.text.trim());
      print(_classstudentController.text.trim());
      print(_listRegisterController.text.trim());

      if (response.statusCode == 200) {
        num = int.parse(response.body.toString());
        // final SharedPreferences prefs = await SharedPreferences.getInstance();
        // await prefs.setString('id', "_aadharCardController");
        // num = response.body.toString();
        if (num == 2) {
          print("worlking 1");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
          );
        } else if (num == 1) {
          print("Invalid 2");
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("This Aadhar number already exist"),
                );
              });
          // print(response.body);
          // print(response.body);

          // Handle the response data, if needed
        } else {}
        // print(response.body);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        title: Text('Registration'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        "Register as ",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Container(
                          width: 150,
                          height: 80,
                          child: DropdownMenuExample(
                            controller: _listRegisterController,
                          )),

                      // DropdownMenuExample(controller: ,),
                    ],
                  ),
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(labelText: 'Name'),
                    validator: (value) {
                      return value!.isEmpty ? 'Please enter your name' : null;
                    },
                  ),
                  TextFormField(
                    controller: _phoneNumberController,
                    decoration: InputDecoration(labelText: 'Phone Number'),
                    keyboardType: TextInputType.phone,
                    validator: validatePhoneNumber,
                  ),
                  TextFormField(
                    controller: _locationController,
                    decoration: InputDecoration(labelText: 'Location'),
                    validator: (value) {
                      return value!.isEmpty
                          ? 'Please enter your location'
                          : null;
                    },
                  ),
                  TextFormField(
                    controller: _classstudentController,
                    decoration: InputDecoration(labelText: 'Class'),
                  ),
                  // TextFormField(
                  // controller: _aboutController,
                  // decoration: InputDecoration(labelText: 'About'),
                  // ),
                  TextFormField(
                    controller: _ageController,
                    decoration: InputDecoration(labelText: 'Age'),
                  ),
                  TextFormField(
                    controller: _genderController,
                    decoration: InputDecoration(labelText: 'Gender'),
                    validator: validateGender,
                  ),
                  TextFormField(
                    controller: _annualIncomeController,
                    decoration: InputDecoration(labelText: 'Annual Income'),
                    keyboardType: TextInputType.number,
                  ),
                  TextFormField(
                    controller: _schoolNameController,
                    decoration: InputDecoration(labelText: 'School Name'),
                  ),
                  TextFormField(
                    controller: _aadharCardController,
                    decoration: InputDecoration(labelText: 'Aadhar Card'),
                    keyboardType: TextInputType.number,
                    validator: validateAadharCard,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                    keyboardType: TextInputType.number,
                    validator: validateAadharCard,
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: _makeRegistrationRequest,
                    child: Text('Register'),
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

class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  String selectedValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedValue,
      items: list.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? value) {
        if (value != null) {
          setState(() {
            selectedValue = value;
            widget.controller.text = value;
          });
        }
      },
    );
  }
}

// class DropdownMenuExample extends StatefulWidget {
//   const DropdownMenuExample({
//     super.key,
//     required this.controller,
//   });

//   final String controller;

//   @override
//   State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
// }

// class _DropdownMenuExampleState extends State<DropdownMenuExample> {
//   String Setcontroller = list.first;

//   @override
//   Widget build(BuildContext context) {
//     return DropdownMenu<String>(
//       initialSelection: list.first,
//       onSelected: (String? value) {
//         // This is called when the user selects an item.

//         setState(() {
//           controller = value!;
//         });
//       },
//       dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
//         return DropdownMenuEntry<String>(value: value, label: value);
//       }).toList(),
//     );
//   }
// }

List<String> list = <String>[
  'Student',
  'Mentor',
  'JobSeeker',
];



// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:sih_app/config/color/screen_color.dart';
// import 'package:sih_app/screen/home/Home_Screen.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: MyRegistrationPage(),
// //     );
// //   }
// // }

// class MyRegistrationPage extends StatefulWidget {
//   @override
//   _MyRegistrationPageState createState() => _MyRegistrationPageState();
// }

// class _MyRegistrationPageState extends State<MyRegistrationPage> {
//   TextEditingController _nameController = TextEditingController();
//   TextEditingController _phoneNumberController = TextEditingController();
//   TextEditingController _locationController = TextEditingController();
//   TextEditingController _aboutController = TextEditingController();
//   TextEditingController _ageController = TextEditingController();
//   TextEditingController _genderController = TextEditingController();
//   TextEditingController _annualIncomeController = TextEditingController();
//   TextEditingController _schoolNameController = TextEditingController();
//   TextEditingController _aadharCardController = TextEditingController();

//   final String apiUrl =
//       'http://192.168.191.168:8000/api/v1?format=json'; // Replace with your actual registration API endpoint
//   String? code;
//   void currectCode() {}

//   Future<void> _makeRegistrationRequest() async {
//     final response = await http.post(
//       Uri.parse(apiUrl),
//       headers: {
//         'Content-Type': 'application/json',
//       },
//       body: jsonEncode({
//         'name': _nameController.text.trim(),
//         'phone_number': _phoneNumberController.text.trim(),
//         'location': _locationController.text.trim(),
//         'about': _aboutController.text.trim(),
//         'age': _ageController.text.trim(),
//         'Gender': _genderController.text.trim(),
//         'Annual_income': int.tryParse(_annualIncomeController.text.trim()) ?? 0,
//         'School_name': _schoolNameController.text.trim(),
//         'aadhar_card': _aadharCardController.text.trim(),
//       }),
//     );

//     if (response.statusCode == 200) {
//       // Successful registration
//       print('Registration successful');
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => HomeScreen(),
//         ),
//       );
//       // Handle the response data, if needed
//     } else {
//       print(response.body);
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => HomeScreen(),
//         ),
//       );
//       // Failed registration
//       print('Registration failed with status: ${response.statusCode}');
//       // Handle the failure, e.g., show an error message
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColor.backgroundColor,
//       appBar: AppBar(
//         backgroundColor: AppColor.backgroundColor,
//         title: Text('Registration'),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 TextField(
//                   controller: _nameController,
//                   decoration: InputDecoration(labelText: 'Name'),
//                 ),
//                 TextField(
//                   controller: _phoneNumberController,
//                   decoration: InputDecoration(labelText: 'Phone Number'),
//                 ),
//                 TextField(
//                   controller: _locationController,
//                   decoration: InputDecoration(labelText: 'Location'),
//                 ),
//                 // TextField(
//                 //   controller: _aboutController,
//                 //   decoration: InputDecoration(labelText: 'About'),
//                 // ),
//                 TextField(
//                   controller: _ageController,
//                   decoration: InputDecoration(labelText: 'Age'),
//                 ),
//                 TextField(
//                   controller: _genderController,
//                   decoration: InputDecoration(labelText: 'Gender'),
//                 ),
//                 TextField(
//                   controller: _annualIncomeController,
//                   decoration: InputDecoration(labelText: 'Annual Income'),
//                   keyboardType: TextInputType.number,
//                 ),
//                 TextField(
//                   controller: _schoolNameController,
//                   decoration: InputDecoration(labelText: 'School Name'),
//                 ),
//                 TextField(
//                   controller: _aadharCardController,
//                   decoration: InputDecoration(labelText: 'Aadhar Card'),
//                 ),
//                 SizedBox(height: 16.0),
//                 InkWell(
//                   child: GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => HomeScreen()));
//                     },
//                     child: ElevatedButton(
//                       onPressed: _makeRegistrationRequest,
//                       child: Text('Register'),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

















// import 'package:flutter/material.dart';
// import 'package:sih_app/screen/home/Home_Screen.dart';

// class SignUp2 extends StatefulWidget {
//   const SignUp2({
//     super.key,
//   });

//   @override
//   State<SignUp2> createState() => _SignUp2State();
// }

// class _SignUp2State extends State<SignUp2> {
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   bool isLoading = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 46, 59, 117),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(
//                 height: 80,
//               ),
//               Center(
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     border: Border.all(width: 2, color: Colors.grey),
//                     color: const Color.fromARGB(255, 2, 25, 49),
//                   ),
//                   width: 299,
//                   height: 814,
//                   child: SingleChildScrollView(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         SizedBox(
//                           height: 20,
//                         ),
//                         const Text(
//                           "Register",
//                           style: TextStyle(
//                             fontFamily: 'PlusJakartaSans',
//                             fontWeight: FontWeight.w400,
//                             color: Colors.blueAccent,
//                             fontSize: 20,
//                           ),
//                         ),
//                         // ... (your other TextFormField widgets)
//                         Padding(
//                           padding: const EdgeInsets.only(top: 20.0),
//                           child: CommanTextfiel1(
//                             texthint: "Your Full Name...",
//                             maintext: "Full Name",
//                             // emailpostman: emailController,
//                           ),
//                         ),

//                         // Padding(
//                         //   padding: const EdgeInsets.only(top: 20.0),
//                         //   child: CommanTextfiel1(
//                         //     texthint: "Your email number...",
//                         //     maintext: "Email",
//                         //     // emailpostman: emailController,
//                         //   ),
//                         // ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 20.0),
//                           child: CommanTextfiel1(
//                             texthint: "Enter your full address",
//                             maintext: "Address...",
//                             // emailpostman: emailController,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 20.0),
//                           child: CommanTextfiel1(
//                             texthint: "Your Age...",
//                             maintext: "Age",
//                             // emailpostman: emailController,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 20.0),
//                           child: CommanTextfiel1(
//                             texthint: "Your Gender...",
//                             maintext: "Gender",
//                             // emailpostman: emailController,
//                           ),
//                         ),

//                         Padding(
//                           padding: const EdgeInsets.only(top: 20.0),
//                           child: CommanTextfiel1(
//                             texthint: "School Name...",
//                             maintext: "Family annual Income",
//                             // visiblePassword: true,
//                             // emailpostman: emailController,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 20.0),
//                           child: CommanTextfiel1(
//                             texthint: "Enter Your Phone number...",
//                             maintext: "Phone number",
//                             // visiblePassword: true,
//                             // emailpostman: emailController,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 20.0),
//                           child: CommanTextfiel1(
//                             texthint: "About yourselg...",
//                             maintext: "About you",
//                             // emailpostman: emailController,
//                           ),
//                         ),
//                         // Padding(
//                         //   padding: const EdgeInsets.only(top: 20.0),
//                         //   child: CommanTextfiel1(
//                         //     texthint: "Enter Your Aadhar Card...",
//                         //     maintext: "Family annual Income",
//                         //     // visiblePassword: true,
//                         // emailpostman: emailController,
//                         //   ),
//                         // ),
//                         const Padding(
//                           padding: EdgeInsets.only(left: 20.0, top: 6),
//                           //   child: Row(
//                           //     children: [
//                           //       SwitchExample(),
//                           //       SizedBox(
//                           //         width: 3,
//                           //       ),
//                           //       Text(
//                           //         "Remember me",
//                           //         style: TextStyle(
//                           //           color: Colors.white,
//                           //         ),
//                           //       ),
//                           //     ],
//                           //   ),
//                         ),
//                         //23
//                         const SizedBox(
//                           height: 15,
//                         ),
//                         InkWell(
//                           child: GestureDetector(
//                             onTap: () {
//                               setState(() {
//                                 isLoading = true; // Show loading indicator
//                               });

//                               Future.delayed(Duration(seconds: 2), () {
//                                 // After 2 seconds, set isLoading to false
//                                 setState(() {
//                                   isLoading = false;
//                                 });

//                                 // Navigate to the next screen
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => HomeScreen(),
//                                   ),
//                                 );
//                               });
//                             },
//                             child: TextButton(
//                               style: TextButton.styleFrom(
//                                 foregroundColor: Colors.white,
//                                 fixedSize: const Size(260, 30),
//                                 backgroundColor: Colors.blue,
//                               ),
//                               onPressed: () async {
//                                 setState(() {
//                                   isLoading = true; // Show loading indicator
//                                 });

//                                 Future.delayed(Duration(seconds: 2), () {
//                                   setState(() {
//                                     isLoading = false;
//                                   });

//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) => HomeScreen(),
//                                     ),
//                                   );
//                                 });
//                               },
//                               child: isLoading
//                                   ? CircularProgressIndicator() // Show loading indicator
//                                   : const Text(
//                                       "SIGN IN"), // Show button text when not loading
//                             ),
//                           ),
//                         ),

//                         // ... (your other widgets)
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// // CommanTextfiel1 widget
// class CommanTextfiel1 extends StatelessWidget {
//   const CommanTextfiel1({
//     Key? key,
//     required this.texthint,
//     required this.maintext,
//     // this.visiblePassword,
//     // this.emailValidator,
//     // required this.emailpostman,
//   }) : super(key: key);

//   final String texthint;
//   final String maintext;
//   // final bool? visiblePassword;
//   // final bool? emailValidator;
//   // final TextEditingController emailpostman;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 260,
//       height: 70,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 8.0, bottom: 5),
//             child: Text(
//               maintext,
//               style: const TextStyle(
//                 fontSize: 15,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           SizedBox(
//             width: 260,
//             height: 40,
//             child: TextFormField(
//               // controller: emailpostman,
//               style: const TextStyle(
//                 color: Colors.white,
//               ),
//               // obscureText: visiblePassword ?? false,
//               decoration: InputDecoration(
//                 labelStyle: const TextStyle(color: Colors.white),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 hintText: texthint,
//                 contentPadding:
//                     const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
//                 hintStyle: const TextStyle(
//                   color: Color.fromARGB(255, 54, 54, 54),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // CommanTextfiel2 widget
// class CommanTextfiel2 extends StatelessWidget {
//   const CommanTextfiel2({
//     Key? key,
//     required this.texthint,
//     required this.maintext,
//     this.visiblePassword,
//     this.emailValidator,
//     // required this.emailController, // Pass the controller as a parameter
//   }) : super(key: key);

//   final String texthint;
//   final String maintext;
//   final bool? visiblePassword;
//   final bool? emailValidator;
//   // final TextEditingController emailController; // Use the provided controller

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 260,
//       height: 70,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 8.0, bottom: 5),
//             child: Text(
//               maintext,
//               style: const TextStyle(
//                 fontSize: 15,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           SizedBox(
//             width: 260,
//             height: 40,
//             child: TextFormField(
//               // controller: emailController, // Use the provided controller
//               style: const TextStyle(
//                 color: Colors.white,
//               ),
//               obscureText: visiblePassword ?? false,
//               decoration: InputDecoration(
//                 labelStyle: const TextStyle(color: Colors.white),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 hintText: texthint,
//                 contentPadding:
//                     const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
//                 hintStyle: const TextStyle(
//                   color: Color.fromARGB(255, 54, 54, 54),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
