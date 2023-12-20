import 'package:flutter/material.dart';
import 'package:sih_app/common/bottomNavigation_widget.dart';
import 'package:sih_app/config/color/screen_color.dart';

class MyScholarFeeds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        centerTitle: true,
        title: Text("Scholarships👩🏻‍🎓📖"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ScholarshipCard(),
            ScholarshipCard(),
            ScholarshipCard(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationbar_widget(),
    );
  }
}

class ScholarshipCard extends StatelessWidget {
  const ScholarshipCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ScholarFeeds(),
        ElevatedButton(
          onPressed: () {
            _showConfirmationDialog(context);
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'Apply for test',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _showConfirmationDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.greenAccent,
          title: Text('Congratulations!'),
          content: Container(
            height: 90,
            // color: Colors.greenAccent,
            child: Column(
              children: [
                Text('You have successfully applied for the test 🎉'),
                SizedBox(height: 16),
                Text('Good luck! 🍀'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}

class ScholarFeeds extends StatelessWidget {
  const ScholarFeeds({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: 320,
        decoration: BoxDecoration(
          color: Colors.grey[400],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Text(
              "Scholarship",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              "National Level Science Talent Search Exam",
              style: TextStyle(
                fontSize: 15,
                color: Colors.blueGrey,
              ),
            ),
            _buildDivider(),
            SizedBox(height: 0),
            Text(
              "Eligibility Criteria",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              "Class 2 to 12",
              style: TextStyle(
                fontSize: 15,
                color: Colors.blueGrey,
              ),
            ),
            _buildDivider(),
            SizedBox(height: 0),
            Text(
              "Scholarship Amount",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              "Rs. 2,00,000 cash prize (first rank among all the classes), Laptop + a Memento + a Medal (top 3 rankers)",
              style: TextStyle(
                fontSize: 13,
                color: Colors.blueGrey,
              ),
            ),
            _buildDivider(),
            SizedBox(height: 0),
            Text(
              "Examination date",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              "December 1 and 15, 2023 (Offline)January 28, 2024 (Online)",
              style: TextStyle(
                fontSize: 15,
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Divider(
        color: Colors.grey,
        thickness: 1,
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:sih_app/common/bottomNavigation_widget.dart';
// import 'package:sih_app/screen/Books/book10.dart';

// class MySchollarFeeds extends StatefulWidget {
//   const MySchollarFeeds({super.key});

//   @override
//   State<MySchollarFeeds> createState() => _MySchollarFeedsState();
// }

// class _MySchollarFeedsState extends State<MySchollarFeeds> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: Text("ScholarShips👩🏻‍🎓📖"),
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               sholarfeeds(),
//               // SizedBox(height: 16),
//               ElevatedButton(
//                 onPressed: () {
//                   // Add your apply button functionality here
//                 },
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.green,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Text(
//                     'Apply for test',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//               ),
//               sholarfeeds(),
//               // SizedBox(height: 16),
//               ElevatedButton(
//                 onPressed: () {
//                   // Add your apply button functionality here
//                 },
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.green,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Text(
//                     'Apply for test',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//               ),
//               sholarfeeds(),
//               // SizedBox(height: 16),
//               ElevatedButton(
//                 onPressed: () {
//                   // Add your apply button functionality here
//                 },
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.green,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Text(
//                     'Apply for test',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         bottomNavigationBar: BottomNavigationbar_widget());
//   }
// }

// class sholarfeeds extends StatelessWidget {
//   const sholarfeeds({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: Container(
//         width: double.infinity,
//         height: 300,
//         decoration: BoxDecoration(
//           color: Colors.grey[400],
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Column(
//           children: [
//             Text(
//               "Scholarship",
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//             Text(
//               "National Level Science Talent Search Exam",
//               style: TextStyle(
//                 fontSize: 15,
//                 color: Colors.blueGrey,
//               ),
//             ),
//             Divider(
//               color: Colors.grey,
//             ),
//             SizedBox(
//               height: 0,
//             ),
//             Text(
//               "Eligibility Criteria",
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//             Text(
//               "Class 2 to 12",
//               style: TextStyle(
//                 fontSize: 15,
//                 color: Colors.blueGrey,
//               ),
//             ),
//             Divider(
//               color: Colors.grey,
//             ),
//             SizedBox(
//               height: 0,
//             ),
//             Text(
//               "Scholarship Amount",
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//             Text(
//               "Rs. Rs. 2,00,000 cash prize (first rank among all the classes), Laptop + a Memento + a Medal (top 3 rankers)",
//               style: TextStyle(
//                 fontSize: 13,
//                 color: Colors.blueGrey,
//               ),
//             ),
//             Divider(
//               color: Colors.grey,
//             ),
//             SizedBox(
//               height: 0,
//             ),
//             Text(
//               "Examination date",
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//             Text(
//               "December 1 and 15, 2023 (Offline)January 28, 2024 (Online)",
//               // "Rs. Rs. 2,00,000 cash prize (first rank among all the classes), Laptop + a Memento + a Medal (top 3 rankers)",
//               style: TextStyle(
//                 fontSize: 15,
//                 color: Colors.blueGrey,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// Widget _buildDivider() {
//   return Padding(
//     padding: const EdgeInsets.symmetric(vertical: 8),
//     child: Divider(
//       color: Colors.grey,
//       thickness: 1,
//     ),
//   );
// }
