import 'package:flutter/material.dart';
import 'package:sih_app/screen/Books/book10.dart';
import 'package:sih_app/screen/Schoolar_feeds/schollar_feed1.dart';
import 'package:sih_app/screen/dashboard/dashboard.dart';
import 'package:sih_app/screen/home/Home_Screen.dart';
import 'package:sih_app/screen/wallet/wallet_one.dart';

class BottomNavigationbar_widget extends StatelessWidget {
  const BottomNavigationbar_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // backgroundColor: AppColor.backgroundColor,
      type: BottomNavigationBarType
          .fixed, // This is required for more than three items
      items: [
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
            child: Icon(
              Icons.book,
              color: Colors.blueAccent[200],
            ),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyBooks(),
                ),
              );
            },
            child: Icon(
              Icons.book,
              color: Colors.blueAccent[200],
            ),
          ),
          label: 'Book',
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MainWallet(),
                ),
              );
            },
            child: Icon(
              Icons.wallet,
              color: Colors.blueAccent[200],
            ),
          ),
          label: 'Wallet',
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyScholarFeeds()),
              );
            },
            child: Icon(
              Icons.feed,
              color: Colors.blueAccent[200],
            ),
          ),
          label: 'Feeds',
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dashboard()),
              );
            },
            child: Icon(
              Icons.dashboard_customize_sharp,
              color: Colors.blueAccent[200],
            ),
          ),
          label: 'Dashboard',
        ),
      ],
    );
  }
}
