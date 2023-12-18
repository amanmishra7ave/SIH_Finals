import 'package:flutter/material.dart';
import 'package:sih_app/screen/Books/book10.dart';
import 'package:sih_app/screen/home/Home_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyBooks(),
      // home: HomeScreen(),
    );
  }
}

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
