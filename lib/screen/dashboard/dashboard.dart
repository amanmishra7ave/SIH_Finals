import 'package:flutter/material.dart';
import 'package:sih_app/screen/dashboard/CasesInformation.dart';
// import 'package:kycframwork/screens/dashboard/CasesInformation.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 2, 66),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Title(
                color: Colors.blue,
                child: const Text(
                  "Dashboard",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
            const SizedBox(
              height: 30,
            ),
            Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 5, 14, 95),
                    borderRadius: BorderRadius.circular(20)),
                width: 333,
                height: 500,
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 20),
                  child: casesInformation(),
                )),
          ],
        ),
      ),
    );
  }
}
