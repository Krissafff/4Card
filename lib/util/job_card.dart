// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final String logoImagePath;
  final int hourlyRate;

  JobCard({
    required this.companyName,
    required this.jobTitle,
    required this.logoImagePath,
    required this.hourlyRate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 200,
          padding: EdgeInsets.all(12),
          color: Colors.white,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      child: Image.asset(
                        logoImagePath,
                        color: Colors.orange,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        // ignore: sort_child_properties_last
                        child: Text(
                          'Por tempo',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Color.fromARGB(255, 253, 168, 41),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    jobTitle,
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Text(
                  'R' '\$' + hourlyRate.toString() + '/hr',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ]),
        ),
      ),
    );
  }
}
