import 'package:flutter/material.dart';
import 'package:sih_app/config/color/screen_color.dart';

class JobforNow extends StatefulWidget {
  const JobforNow({super.key});

  @override
  State<JobforNow> createState() => _JobforNowState();
}

class _JobforNowState extends State<JobforNow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        title: Text("Naukri k sath"),
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 80,
                    height: 45,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Image.network(
                        "https://i.pinimg.com/736x/b9/81/2f/b9812fadb80981fc40c0f5e412c08bfb.jpg"),
                  ),
                  Text("Requred a Salsmen in JK mall for\n selling perfume"),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      width: 80,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      child: Image.asset("images/salesman.webp")),
                  Text("Requred a Salsmen in JK mall for\n selling perfume"),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      width: 80,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      child: Image.asset("images/salesman.webp")),
                  Text("Requred a Salsmen in JK mall for\n selling perfume"),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 80,
                    height: 45,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Image.network(
                      "https://miro.medium.com/v2/resize:fit:696/0*au9A2HXzE8-RVn7B.png",
                      // "https://i.pinimg.com/736x/0e/5e/ac/0e5eaccd5c7247660b46f9f3657279b9.jpg",
                      // fit: ,
                    ),
                  ),
                  Text("Requred a Salsmen in JK mall for\n selling perfume"),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      width: 80,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      child: Image.asset("images/salesman.webp")),
                  Text("Requred a Salsmen in JK mall for\n selling perfume"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
