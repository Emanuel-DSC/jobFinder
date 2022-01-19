import 'package:flutter/material.dart';

class recentJobsCard extends StatelessWidget {
  const recentJobsCard(
      {Key? key,
      required this.companyName,
      required this.jobTitle,
      required this.logoImagePath,
      required this.monthlyRate})
      : super(key: key);

  final String companyName;
  final String jobTitle;
  final String logoImagePath;
  final int monthlyRate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    color: Colors.grey[300],
                    height: 40,
                    child: Image.asset(logoImagePath),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      jobTitle,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(height: 4),
                    Text(
                      companyName,
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Container(
                padding: EdgeInsets.all(2),
                color: Colors.green[300],
                child: Text(
                  monthlyRate.toString() + '/mês',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
