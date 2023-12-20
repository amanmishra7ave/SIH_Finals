import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sih_app/config/color/screen_color.dart';
import 'package:http/http.dart' as http;
import 'package:sih_app/screen/home/Home_Screen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int num = 2;

  TextEditingController _aAdharCardController = TextEditingController();
  TextEditingController _loginPasswordController = TextEditingController();

  final String apiUrl = "https://coabhatapara.ac.in/admin/login.php";

  Future<void> _makeLoginRequest() async {
    final response = await http.post(Uri.parse(apiUrl),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(
          {
            't1': _aAdharCardController.text.trim(),
            't2': _loginPasswordController.text.trim(),
          },
        ));

    if (response.statusCode == 200) {
      int num = int.tryParse(response.body.toString()) ?? 0;

      if (num == 1) {
        //  final SharedPreferences prefs = await SharedPreferences.getInstance();
        //await prefs.setString('id', "212".toString());
        //final String? id = prefs.getString('id');
        // print(prefs.getString('id'));
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
      } else if (num == 2) {
        print("Invalid 2");
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Invalid Aadhar number or password"),
            );
          },
        );
      }
    }
  }

  //   if (response.statusCode == 200) {
  //     num = int.parse(response.body.toString());

  //     // num = response.body.toString();
  //     if (num == 1) {
  //       final SharedPreferences prefs = await SharedPreferences.getInstance();
  //       await prefs.setString('id', _aAdharCardController.text.trim());
  //       print("id");
  //       print(
  //         prefs.getString('id'),
  //       );
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => HomeScreen(),
  //         ),
  //       );
  //     } else if (num == 2) {
  //       print("Invalid 2");
  //       showDialog(
  //           context: context,
  //           builder: (BuildContext context) {
  //             return AlertDialog(
  //               title: Text("Invalid Aadhar number or password"),
  //             );
  //           });
  //       // print(response.body);
  //       // print(response.body);

  //       // Handle the response data, if needed
  //     } else {}
  //     // print(response.body);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        title: Text(
          "Login",
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                ),
                TextField(
                  controller: _aAdharCardController,
                  decoration: InputDecoration(hintText: "Aaddhar number"),
                ),
                TextField(
                  controller: _loginPasswordController,
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: 160,
                  height: 50,
                  child: FloatingActionButton(
                    onPressed: _makeLoginRequest,
                    child: Text("Submit"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
