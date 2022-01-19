import 'package:flutter/material.dart';

import 'utils/jobcard.dart';
import 'utils/recentjob.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List jobsForYou = [
    ['Apple', 'Eng. Software', 'lib/assets/apple.png', 12000],
    ['Discord', 'UI Designer', 'lib/assets/discord.png', 5200],
    ['Behance', 'Eng. Produção', 'lib/assets/behance.png', 8000],
  ];

  final List recentJobs = [
    ['Spotify', 'Designer de produto', 'lib/assets/spotify.png', 9300],
    ['Trello', 'Administrador', 'lib/assets/trello.png', 3070],
    ['Youtube', 'Gereciador de MKT', 'lib/assets/youtube.png', 13600],
    ['Github', 'Programador', 'lib/assets/github.png', 4180],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              height: 45,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[200]),
              child: Image.asset(
                'lib/assets/menu_alt_03.png',
                color: Colors.grey[800],
              ),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
            child: Text(
              'Descubra um novo caminho',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            height: 30,
                            child: Image.asset(
                              'lib/assets/search.png',
                              color: Colors.grey[800],
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Pesquise por um trabalho...'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(12)),
                  child: Image.asset(
                    'lib/assets/slider_01.png',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
            child: Text(
              'Para você',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 5),
          Container(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: jobsForYou.length,
              itemBuilder: (BuildContext context, int index) {
                return JobCard(
                  companyName: jobsForYou[index][0],
                  jobTitle: jobsForYou[index][1],
                  logoImagePath: jobsForYou[index][2],
                  monthlyRate: jobsForYou[index][3],
                );
              },
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
            child: Text(
              'Adicionados recentemente',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                itemCount: recentJobs.length,
                itemBuilder: (BuildContext context, int index) {
                  return recentJobsCard(
                    companyName: recentJobs[index][0],
                    jobTitle: recentJobs[index][1],
                    logoImagePath: recentJobs[index][2],
                    monthlyRate: recentJobs[index][3],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
