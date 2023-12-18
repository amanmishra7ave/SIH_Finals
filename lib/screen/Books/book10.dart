import 'package:flutter/material.dart';
import 'package:sih_app/config/color/screen_color.dart';

class MyBooks extends StatefulWidget {
  const MyBooks({super.key});

  @override
  State<MyBooks> createState() => _MyBooksState();
}

class _MyBooksState extends State<MyBooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        title: Text("Library 📚"),
        centerTitle: true,
      ),
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      width: 140,
                      height: 200,
                      child: Image.network(
                        "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/81+Eh-enKAL._AC_UF1000,1000_QL80_.jpg",
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    download_button(),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 140,
                      height: 200,
                      child: Image.network(
                        "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/81+Eh-enKAL._AC_UF1000,1000_QL80_.jpg",
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    download_button(),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      width: 140,
                      height: 200,
                      child: Image.network(
                        "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/81+Eh-enKAL._AC_UF1000,1000_QL80_.jpg",
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    download_button(),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 140,
                      height: 200,
                      child: Image.network(
                        "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/81+Eh-enKAL._AC_UF1000,1000_QL80_.jpg",
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    download_button(),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      width: 140,
                      height: 200,
                      child: Image.network(
                        "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/81+Eh-enKAL._AC_UF1000,1000_QL80_.jpg",
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    download_button(),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 140,
                      height: 200,
                      child: Image.network(
                        "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/81+Eh-enKAL._AC_UF1000,1000_QL80_.jpg",
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    download_button(),
                  ],
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 140,
                  height: 200,
                  child: Image.network(
                      "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/81+Eh-enKAL._AC_UF1000,1000_QL80_.jpg"),
                ),
                Container(
                  width: 140,
                  height: 200,
                  child: Image.network(
                      "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/81+Eh-enKAL._AC_UF1000,1000_QL80_.jpg"),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: AppColor.backgroundColor,
        type: BottomNavigationBarType
            .fixed, // This is required for more than three items
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.blueAccent[200],
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
              color: Colors.blueAccent[200],
            ),
            label: 'Book',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.wallet,
              color: Colors.blueAccent[200],
            ),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard_customize_sharp,
              color: Colors.blueAccent[200],
            ),
            label: 'Dashboard',
          ),
        ],
      ),
    );
  }
}

class download_button extends StatelessWidget {
  const download_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Button pressed action
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
        minimumSize: Size(100, 35),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        'Download',
        style: TextStyle(
          fontSize: 13,
          color: Colors.white,
        ),
      ),
    );
  }
}
