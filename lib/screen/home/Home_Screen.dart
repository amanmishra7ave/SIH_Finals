import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sih_app/common/bottomNavigation_widget.dart';
import 'package:sih_app/config/color/screen_color.dart';
import 'package:sih_app/common/free_cources.dart';
import 'package:sih_app/screen/Books/book10.dart';
import 'package:sih_app/screen/CoursesStream/12to10.dart';
import 'package:sih_app/screen/CoursesStream/courseMenu.dart';
import 'package:sih_app/screen/RegisterScreen/sign_up_page_2.dart';
import 'package:sih_app/screen/jobs/jobs1.dart';
import 'package:sih_app/screen/splash/splash_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key, this.giveaadhar});

  final String? giveaadhar;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? idIs;

  void setId() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('id', widget.giveaadhar ?? '');
    idIs = widget.giveaadhar;
    print("Stored ID: $idIs");
  }

  @override
  void initState() {
    super.initState();
    setId();
  }

  @override
  Widget build(BuildContext context) {
    bool languageIs = true;

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
                      values: " Raipur",
                      icons: Icons.location_on,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => JobforNow()));
                      },
                      child: const drawerDetails(
                        values: " Jobs",
                        icons: Icons.location_on,
                      ),
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
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SplashScreen()));
                              },
                              child: const drawerDetails(
                                  icons: Icons.work, values: "LogOut"),
                            ))),
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
                                "5 courses available for\nfree, You Enjoy the \nlearning and achive all\n your goal 🥳",
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
                  const paid_courses(
                    price: "19.99",
                    image:
                        "https://images-eu.ssl-images-amazon.com/images/W/MEDIAX_792452-T2/images/I/81gjb6rJdiL._AC_UL600_SR600,600_.jpg",
                  ),
                  const paid_courses(
                    price: "19.99",
                    image:
                        "https://coreldrawdesign.com/resources/thumbnails/thumbnail-1661624622.jpg",
                  ),
                ],
              ),
              SizedBox(
                  // height: 10,
                  ),
              Row(
                children: [
                  const paid_courses(
                    price: "19.99",
                    image:
                        "https://images-eu.ssl-images-amazon.com/images/W/MEDIAX_792452-T2/images/I/81gjb6rJdiL._AC_UL600_SR600,600_.jpg",
                  ),
                  const paid_courses(
                    price: "19.99",
                    // image: "images/neet.jpg",
                    image: ""
                        "https://images-eu.ssl-images-amazon.com/images/W/MEDIAX_792452-T2/images/I/81gjb6rJdiL._AC_UL600_SR600,600_.jpg",
                  ),
                ],
              ),
              Row(
                children: [
                  const paid_courses(
                    price: "19.99",
                    image:
                        "https://coreldrawdesign.com/resources/thumbnails/thumbnail-1661624622.jpg",
                    // "https://images-eu.ssl-images-amazon.com/images/W/MEDIAX_792452-T2/images/I/81gjb6rJdiL._AC_UL600_SR600,600_.jpg",
                  ),
                  const paid_courses(
                    price: "19.99",
                    image: ""
                        "https://images-eu.ssl-images-amazon.com/images/W/MEDIAX_792452-T2/images/I/81gjb6rJdiL._AC_UL600_SR600,600_.jpg",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationbar_widget(),
    );
  }
}

class paid_courses extends StatelessWidget {
  const paid_courses({super.key, required this.price, required this.image});

  final String? price;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 30,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: 150,
                decoration: BoxDecoration(
                  // color: Colors.amber,

                  borderRadius: BorderRadius.circular(20),
                  // You can add an Image widget here.
                ),
                child: Image.network(
                  image.toString(),
                  // "https://images-eu.ssl-images-amazon.com/images/W/MEDIAX_792452-T2/images/I/81gjb6rJdiL._AC_UL600_SR600,600_.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Price: \$$price', // Replace this with your actual price data
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RowValue extends StatelessWidget {
  const RowValue({
    super.key,
    required this.imgvalue,
    required this.title,
    required this.CourseUrl,
    required this.imgvalue1,
    required this.title1,
    required this.CourseUrl1,
  });

  final String? imgvalue;
  final String? title;
  final String? CourseUrl;
  final String? imgvalue1;
  final String? title1;
  final String? CourseUrl1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
              child: InkWell(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            FirstCourse(particularUrl: CourseUrl.toString())));
              },
              child: SizedBox(
                width: 80,
                height: 160,
                child: Column(children: [
                  Image.network(
                    imgvalue ?? "",
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // SizedBox(height: 10,),
                  Text(title ?? "Car factory")
                ]),
              ),
            ),
          )),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              child: InkWell(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FirstCourse(
                              particularUrl: CourseUrl1.toString(),
                            )));
              },
              child: SizedBox(
                  width: 80,
                  height: 160,
                  child: Column(children: [
                    Image.network(
                      imgvalue1 ?? "",
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // SizedBox(height: 10,),
                    Text(title1 ?? "")
                  ])),
            ),
          )),
        ],
      ),
    );
  }
}

class drawerDetails extends StatelessWidget {
  const drawerDetails({
    super.key,
    required this.icons,
    required this.values,
  });

  final IconData? icons;
  final String? values;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          color: Colors.green.withOpacity(0.3),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Icon(icons),
          ),
          const SizedBox(
            width: 30,
          ),
          Text(
            values ?? "",
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class CourseWidget extends StatelessWidget {
  const CourseWidget({
    super.key,
    this.CourseImg,
    this.CourseTitle,
  });

  final String? CourseImg;
  final String? CourseTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.network(
          CourseImg ?? "",
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          CourseTitle ?? "",
          style: const TextStyle(
            color: Color.fromARGB(255, 227, 205, 5),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
