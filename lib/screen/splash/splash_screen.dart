import 'package:flutter/material.dart';
import 'package:sih_app/screen/RegisterScreen/login_page.dart';
// import 'package:sih_app/screen/RegisterScreen/sign_up.dart';
import 'package:sih_app/screen/RegisterScreen/sign_up_page_2.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          color: Colors.blueGrey,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 160,
              ),
              Text(
                "Welcome to LightMind",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 180,
                height: 50,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                    );
                  },
                  child: Text("Login Here"),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 180,
                height: 50,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyRegistrationPage(),
                      ),
                    );
                  },
                  child: Text("Sign Up Here"),
                ),
              ),
            ],
          )),
    );
  }
}
