import 'package:flutter/material.dart';
import 'package:sih_app/screen/CoursesStream/12to10.dart';
import 'package:sih_app/screen/dashboard/dashboard.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({
    super.key,
    // required this.flname,
    required this.mobileNo,
    required this.address,
    this.gmail,
    required this.imgPersonal,
  });

  // final String? flname;
  final double? mobileNo;
  final String? address;
  final String? gmail;
  final Image? imgPersonal;

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    var children2 = <Widget>[
      InkWell(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const FirstCourse(
                          particularUrl:
                              // "https://www.youtube.com/watch?v=CobQvtjL5gc",
                              'https://www.youtube.com/watch?v=BHcOvp6CYDU&t=1s&ab_channel=VedantuJEEMadeEjee',
                        )));
            // print("code");
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(20)),
              width: 260,
              height: 50,
              child: const CourseWidget(
                CourseImg:
                    "https://img.freepik.com/free-photo/math-formula-calculation-education-graphic_53876-133596.jpg?w=900&t=st=1695719690~exp=1695720290~hmac=b2802e409dc4a1bdd3dc9f6b0afca9878bf422d93c0b3517987f378e8f1e98e3",
                CourseTitle: "12th Mathematics",
              ),
            ),
          ),
        ),
      ),
      InkWell(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const FirstCourse(
                        particularUrl:
                            "https://www.youtube.com/watch?v=MVvHdH6n2VE&ab_channel=VedantuJEEMadeEjee")));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(20)),
              width: 260,
              height: 50,
              child: const CourseWidget(
                CourseImg:
                    "https://img.freepik.com/free-vector/online-tutorials-concept_52683-37480.jpg?w=900&t=st=1695717623~exp=1695718223~hmac=705b50c2ca926e32ae4f07f5a19c8a17244c591a9043786db404c84a71d7d0f1",
                CourseTitle: "12th Physics",
              ),
            ),
          ),
        ),
      ),
      InkWell(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const FirstCourse(
                          particularUrl:
                              "https://www.youtube.com/watch?v=Vl5Rb7Agd7g&ab_channel=NCERTWallah",
                        )));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(20)),
              width: 260,
              height: 50,
              child: const CourseWidget(
                CourseImg:
                    "https://img.freepik.com/free-photo/female-teacher-with-laptop-working_23-2148665934.jpg?w=900&t=st=1695722323~exp=1695722923~hmac=045f20cc98b60ff791b9f2493f5f03d248d34d23924c74cc6301dd2d9084a724",
                CourseTitle: "12th Chemistry",
              ),
            ),
          ),
        ),
      ),
      InkWell(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const FirstCourse(
                        particularUrl:
                            "https://www.youtube.com/watch?v=MvnCED8M3ag&ab_channel=CompetitionWallah")));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 195,

              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(20)),
              // width: 260,
              height: 50,
              child: const CourseWidget(
                CourseImg:
                    "https://img.freepik.com/free-vector/astronomy-concept-with-retro-science-cartoon-icons-set_1284-7503.jpg?w=740&t=st=1695732237~exp=1695732837~hmac=123038d6aff1d3abff3c49c2142f62c9acaea357ad4a354d90033747f68e2de2",
                CourseTitle: "12 Biology",
              ),
            ),
          ),
        ),
      ),
      InkWell(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const FirstCourse(
                        particularUrl:
                            "https://www.youtube.com/watch?v=Qy0Q_AYs63Y&ab_channel=PhysicsWallah-AlakhPandey")));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 190,

              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(20)),
              // width: 260,
              height: 50,
              child: const CourseWidget(
                CourseImg:
                    "https://img.freepik.com/free-vector/world-map-travel-elements-with-flat-design_23-2147826738.jpg?w=740&t=st=1695732057~exp=1695732657~hmac=91faf2d3d615102152b3288d42bc14f250a36251bd0e5f795601ade9d5665f1e",
                CourseTitle: "11th Chemistry",
              ),
            ),
          ),
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Courses...",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Title(color: Colors.black, child: Container()),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => const Dashboard()));
              },
              icon: const Icon(Icons.filter_tilt_shift_rounded))
        ],
      ),
      drawer: Drawer(
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const SearchBar(hintText: "Type here"),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "  Higher secondery classes",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                // Container(
                //   width: 333,
                //   height: 400,
                // ),
                SizedBox(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: children2,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "  Industry Level courses to get instent\n  job",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const RowValue(
                  CourseUrl:
                      "https://www.youtube.com/watch?v=zy_zipMEH7g&list=PL0ZXVmmropDQrPdWqVhuy9Y-ziqt4Axkr&ab_channel=DIYguru",
                  CourseUrl1:
                      "https://www.youtube.com/watch?v=MBl-3Yb30FA&ab_channel=edureka%21",
                  imgvalue:
                      "https://media.istockphoto.com/id/1320950393/photo/cars-on-production-line-in-factory.jpg?s=612x612&w=is&k=20&c=WidiqANz8ixp-v77bEK52rlmJgeQ0SmbUQSNSsaLXGY=",
                  title: "Car factory",
                  imgvalue1:
                      "https://media.istockphoto.com/id/940024042/photo/industrial-robotic-arms-performing-operations.jpg?s=1024x1024&w=is&k=20&c=80wKMpCm764cwCu_qwHVZ8IJTbAW_1Nc_aK-iqnDgZE=",
                  title1: "Robotic process &\nautomation",
                ),
                const SizedBox(
                  height: 10,
                ),
                const RowValue(
                  imgvalue:
                      "https://media.istockphoto.com/id/582256640/photo/oil-refinery-chemical-petrochemical-plant.jpg?s=612x612&w=is&k=20&c=b_3lmtoVJEeBnA7UH0wkFq2x9Ye_DVx8f5HoC6FMBwA=",
                  title: "Oil Refinery",
                  imgvalue1:
                      "https://images.unsplash.com/photo-1629313472434-cbbfdc2e1a5f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8ZGFpcnklMjBmYXJtfGVufDB8fDB8fHww&w=1000&q=80",
                  title1: "Dairy Farm",
                  CourseUrl:
                      'https://www.youtube.com/watch?v=WgWNQVdhE9A&list=PLD2D34BCA5468DD9A&ab_channel=Stanford',
                  CourseUrl1:
                      'https://www.youtube.com/watch?v=GqBfehq5CDI&ab_channel=AgricultureAdda247',
                ),
                const SizedBox(
                  height: 10,
                ),
                const RowValue(
                  imgvalue: "https://etimg.etb2bimg.com/photo/73316639.cms",
                  title: "Power grids",
                  imgvalue1:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTGVZxLz4iBhTbjEqxPNBbv0bD9rPWnrbrW_aW8U3pcYpQzh_zwvMKsRwS5K4gM_6M7M8&usqp=CAU",
                  title1: "Warehouse management",
                  CourseUrl:
                      'https://www.youtube.com/watch?v=v1BMWczn7JM&list=PLTZM4MrZKfW-ftqKGSbO-DwDiOGqNmq53&ab_channel=PracticalEngineering',
                  CourseUrl1:
                      'https://www.youtube.com/watch?v=-Kf0dFAw8EQ&ab_channel=CNBC',
                ),
              ],
            ),
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
