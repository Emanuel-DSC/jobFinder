import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  const JobCard(
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
      padding: const EdgeInsets.only(left: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 200,
          padding: EdgeInsets.all(12),
          color: Colors.grey[200],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    child: Image.asset(
                      logoImagePath,
                      fit: BoxFit.contain,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Meio período',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  jobTitle,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Text(monthlyRate.toString() + '/mês'),
            ],
          ),
        ),
      ),
    );
  }
}
