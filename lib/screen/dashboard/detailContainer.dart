import 'package:flutter/material.dart';


class smalldetails extends StatelessWidget {
  const smalldetails({
    super.key,
    required this.noOfCases,
    required this.stringValue,
  });

final String ? noOfCases;
final String ? stringValue;



  @override
  Widget build(BuildContext context) {
    return Container(
      width: 145,
      height: 48,
      decoration: BoxDecoration(
      color: const Color.fromARGB(255, 7, 1, 41),
      borderRadius: BorderRadius.circular(10)

      ),
      child: Padding(
        padding: const EdgeInsets.only(left:8.0,top: 4,right: 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                stringValue ?? "Total no. of cases ",
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                Text(
                 noOfCases ?? "567",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 6,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8)),
              // color: Colors.blue,
              width: 28,
              height: 28,
            )                                
          ],
        ),
      ),
    );
  }
}
