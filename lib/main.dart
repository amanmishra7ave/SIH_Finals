import 'package:flutter/material.dart';
// import 'package:sih_app/Firebase_auth_implementation/signUp.dart';
import 'package:sih_app/screen/Books/book10.dart';
import 'package:sih_app/screen/RegisterScreen/sign_up_page_2.dart';
import 'package:sih_app/screen/Schoolar_feeds/schollar_feed1.dart';
import 'package:sih_app/screen/home/Home_Screen.dart';
import 'package:sih_app/screen/jobs/jobs1.dart';
import 'package:sih_app/screen/splash/splash_screen.dart';
import 'package:sih_app/screen/wallet/wallet_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String language = "hindi";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: MyBooks(),
      // home: SignUp2(),
      // home: MyRegistrationPage(),
      // home: JobforNow(),
      // home: MyScholarFeeds(),
      // home: HomeScreen(),
      home: SplashScreen(),
      // home: SignUpPage(),
      // home: MainWallet(),
    );
  }
}

// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyLoginPage(),
//     );
//   }
// }

// class MyLoginPage extends StatefulWidget {
//   @override
//   _MyLoginPageState createState() => _MyLoginPageState();
// }

// class _MyLoginPageState extends State<MyLoginPage> {
//   TextEditingController _usernameController = TextEditingController();
//   TextEditingController _passwordController = TextEditingController();
//   final String apiUrl =
//       'http://192.168.191.168:8000/api/v1'; // Replace with your actual login API endpoint

//   Future<void> _makeLoginRequest() async {
//     final response = await http.post(
//       Uri.parse(apiUrl),
//       headers: {
//         'Content-Type': 'application/json',
//       },
//       body: jsonEncode({
//         'name': "aman",
//         'location': "UK",
//       }),
//     );

//     if (response.statusCode == 200) {
//       // Successful login
//       print('Login successful');
//       // Handle the response data, e.g., save user authentication token
//     } else {
//       // Failed login
//       print('Login failed with status: ${response.statusCode}');
//       // Handle the failure, e.g., show an error message
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login Example'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: _usernameController,
//               decoration: InputDecoration(labelText: 'Username'),
//             ),
//             TextField(
//               controller: _passwordController,
//               decoration: InputDecoration(labelText: 'Password'),
//               obscureText: true,
//             ),
//             SizedBox(height: 16.0),
//             ElevatedButton(
//               onPressed: _makeLoginRequest,
//               child: Text('Login'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
















// import 'dart:io';
// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:open_file/open_file.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'PDF Download App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   final String pdfUrl =
//       "https://ncert.nic.in/textbook/pdf/jemh1dd.zip";
//   Future<void> _downloadPDF() async {
//     final response = await http.get(Uri.parse(pdfUrl));

//     if (response.statusCode == 200) {
//       final file = File('example.pdf'); // You can customize the file name
//       await file.writeAsBytes(response.bodyBytes);
//       OpenFile.open(file.path);
//     } else {
//       throw Exception('Failed to download PDF');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('PDF Download App'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             ElevatedButton(
//               onPressed: _downloadPDF,
//               child: Text('Download PDF'),
//             ),
//           ],
//         ),
//       ),
//     );
// //   }
// // }
