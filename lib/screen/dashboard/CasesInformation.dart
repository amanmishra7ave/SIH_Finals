// import 'package:casestudy/widgets/detailContainer.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sih_app/screen/dashboard/detailContainer.dart';

class casesInformation extends StatelessWidget {
  const casesInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Student Performance",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          "Hello, Aman Mishra! Your overall performance of this week is ready",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Column(
            children: [
              CircularPercentIndicator(
                startAngle: 330,
                // progressColor: Colors.greenAccent,
                progressColor: Colors.green,
                backgroundColor: const Color.fromARGB(255, 2, 1, 55),
                center: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '68%',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " Current\nPercentage",
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    )
                  ],
                ),
                // arcType: ArcType.HALF,
                animation: true,
                percent: 0.68,
                radius: 70,
                lineWidth: 15,
                circularStrokeCap: CircularStrokeCap.round,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "7days 1h 37min",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Test Report",
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),
              const SizedBox(
                height: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // smalldetails(),
                  Row(
                    children: [
                      smalldetails(
                        noOfCases: "243",
                        stringValue: "Total classes",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      smalldetails(
                        noOfCases: "India",
                        stringValue: "Current location",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      smalldetails(
                        noOfCases: "70%",
                        stringValue: "Previes week",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      smalldetails(
                        noOfCases: "CBSE",
                        stringValue: "board",
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
