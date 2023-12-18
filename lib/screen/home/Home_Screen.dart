import 'package:flutter/material.dart';
import 'package:sih_app/config/color/screen_color.dart';
import 'package:sih_app/common/free_cources.dart';
import 'package:sih_app/screen/CoursesStream/courseMenu.dart';

class HomeScreen extends StatefulWidget {
  // const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: AppColor.backgroundColor,
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      // backgroundColor: Colors.greenAccent.withOpacity(0.3),
                      // backgroundColor: Colors.green.withOpacity(0.3),
                      backgroundImage: NetworkImage(
                        "https://media.licdn.com/dms/image/C4D03AQEIn84WIIZK3Q/profile-displayphoto-shrink_800_800/0/1627012160123?e=1701302400&v=beta&t=iQT5dPJmvuhlTunGLFwAramPnpmbE3PpMyDxwprg8lQ",
                      ),
                      radius: 60,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    const drawerDetails(
                      values: "Aman Mishra",
                      icons: Icons.person,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const drawerDetails(
                      values: "+91 7024274951",
                      icons: Icons.phone,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const drawerDetails(
                      values: "amanave@gmail.com",
                      icons: Icons.email,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const drawerDetails(
                      values: "Chhattisgarh Raipur",
                      icons: Icons.location_on,
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    Divider(
                      color: Colors.green.withOpacity(0.3),
                      thickness: 2,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                        child: GestureDetector(
                            onTap: () {
                              // Navigator.push(context,
                              // MaterialPageRoute(builder: (context)=>const Jobs()));
                            },
                            child: const drawerDetails(
                                icons: Icons.work, values: "Jobs"))),
                    const SizedBox(
                      height: 20,
                    ),
                    const drawerDetails(
                        icons: Icons.help, values: "Help & Support"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      // bottomNavigationBar: Container(
      //   decoration: BoxDecoration(
      //     color: Colors.transparent, // Set the background color to transparent
      //     // color: Theme.of(context)
      //     //     .backgroundColor, // Use your app's background color

      //     borderRadius:
      //         BorderRadius.circular(10), // Circular radius for the container
      //     // Optionally add a shadow, border, or other decorations as needed.
      //   ),
      //   margin: EdgeInsets.all(3),
      //   // Margin around the BottomNavigationBar

      //   child: ClipRRect(
      //     borderRadius:
      //         BorderRadius.circular(10), // Same radius as the container
      //     child: BottomNavigationBar(
      //       items: [
      //         BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.home,
      //             color: Colors.blue[200],
      //           ),
      //           label: 'Home',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.book,
      //             color: Colors.blue[200],
      //           ),
      //           label: 'Books',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.wallet,
      //             color: Colors.blue[200],
      //           ),
      //           label: 'Wallet',
      //         ),
      //       ],
      //     ),
      //   ),
      // ),

// )

      //  BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.search),
      //       label: 'Search',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profile',
      //     ),
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.question_answer),
      ),
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceBetween, // This will push the title to the right
          children: <Widget>[
            Spacer(), // This creates an empty space, pushing the next widget to the right
            Text("Hi, Aman Misihra 👋"),
          ],
        ),
        // title: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Text(
        //       "Hi, Aman 👋",
        //     ),
        //   ],
        // ),
        actions: [],
      ),
      body: Container(
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: SearchBar(
                    padding: const MaterialStatePropertyAll<EdgeInsets>(
                      EdgeInsets.symmetric(horizontal: 16),
                    ),
                    leading: Icon(Icons.search),
                    hintText: "Search",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  // shape: const CircleBorder(),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "75% Off",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "5 courses available for\nfree you Enjoy the \nlearning and achive\n your goal 🥳",
                                // "Explore 5 free courses for\n your enjoyment! 🥳 Level up your skills,\n dive into new topics, \nor simply have fun learning—all at\n no cost! Embark on a journey of knowledge without \nspending a dime. Happy learning! 🚀📚 #FreeCourses",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 238, 231, 231),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 200,
                              width: 150,
                              child: Image.asset(
                                  "images/AdobeStock_635968378_Preview.png"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Courses for you ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "View More ->",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              Free_Courses(),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Courses 🔥",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "View More ->",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 160,
                      width: 160,

                      // width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                  // height: 10,
                  ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 160,
                      width: 160,

                      // width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 160,
                      width: 160,

                      // width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
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
