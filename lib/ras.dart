import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ras extends StatefulWidget {
  const Ras({super.key});

  @override
  State<Ras> createState() => _RasState();
}

class _RasState extends State<Ras> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 242, 246),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Color.fromARGB(255, 58, 53, 62),
                  width: 67.0,
                ),
                left: BorderSide(
                  color: Color.fromARGB(255, 58, 53, 62),
                  width: 24.0,
                ),
                right: BorderSide(
                  color: Color.fromARGB(255, 58, 53, 62),
                  width: 24.0,
                ),
                bottom: BorderSide(
                  color: Color.fromARGB(255, 58, 53, 62),
                  width: 24.0,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Image.asset('assets/techchapter.png'),
                SizedBox(height: 20),
                Image.asset('assets/rassociety.png'),
                SizedBox(height: 40),
                Image.asset('assets/raslogo.png'),
                SizedBox(height: 40),

                Center(
                  child: Image.asset('assets/abtras.png'),
                ),

                SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                          child: Text(
                            "The IEEE Robotics and Automation Society's objectives are scientific, literary, and educational in character. The Society strives for the advancement of the theory and practice of robotics and automation engineering and science and of the allied arts and sciences, and for the maintenance of high professional standards among its members, all in consonance with the Constitution and Bylaws of the IEEE and with special attention to such aims within the Field of Interest of the Society. The IEEE Robotics and Automation Society Sree Chitra Thirunal Student Branch Chapter (IEEE RAS SCT SBC) is a student-led community under the IEEE Robotics and Automation Society that promotes robotics and automation through technical projects, workshops, and other activities. It offers hands-on experience, networking opportunities, and skill enhancements.",
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      SizedBox(
                        width: 340,
                        height: 340,
                        child: Image.asset('assets/talk.jpg'),
                      ),
                    ],
                  ),
                ),

                Image.asset('assets/intiatives.png'),

                SectionCard(
                  content: "In February 2024, the event “Project Zyro: The Reveal” was initiated. In this event Zyro, the exoskeleton was presented, and demonstrated its functionalities and development process. This was a collaborative effort of IEEE SCT SB and IEEE RAS SCT SBC",
                  image1: 'assets/talkk.jpg',
                  image2: 'assets/poster.jpg',
                ),

                SizedBox(height: 20),

                SectionCard(
                  content: "In April 2024, the event “Synergy Sphere: An Expo of Innovations” was organised. This was an expo of innovative and revolutionary technology of the exoskeleton Zyro, and drones, along with a few other projects. The motive of the event was to inspire the minds to make innovation and tech fun and achievable.",
                  image1: 'assets/synergy.jpg',
                  image2: 'assets/workshop.jpg',
                ),
                 SizedBox(height: 20),

                SectionCard(
                  content: "Also in April 2024, an online session “Introduction to Fusion 360” was hosted. The session provided an overview of Fusion 360 and inspired participants in the world of 3D design. The event was taken by Arun A, Chair, IEEE RAS SCT SBC.",
                  image1: 'assets/anchposter.jpg',
                  image2: 'assets/screen.jpg',
                ),
                 SizedBox(height: 20),  

                 SectionCard(
                  content: "In October 2024, as part of DHYUTHI 5.0, IEEE RAS SCT SBC organised a workshop ‘TRAVERSE: The line follower workshop’. The event featured a talk session followed by a hands-on workshop and competition. The workshop focused on building and Programming line-following robots, covering overview on microcontrollers, sensor integration, chassis assembly, and control algorithms ",
                  image1: 'assets/talk.jpg',
                  image2: 'assets/lookdown.jpg',
                ),
                 SizedBox(height: 20),  
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SectionCard extends StatelessWidget {
  final String content;
  final String image1;
  final String image2;

  const SectionCard({
    Key? key,
    required this.content,
    required this.image1,
    required this.image2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 255, 242, 246),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 4,
      margin: EdgeInsets.all(12),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              content,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 250,
                  height: 250,
                  child: Image.asset(image1, fit: BoxFit.cover),
                ),
                SizedBox(width: 8),
                SizedBox(
                  width: 300,
                  height: 300,
                  child: Image.asset(image2, fit: BoxFit.cover),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
