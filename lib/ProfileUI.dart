import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';
// ignore_for_file: prefer_const_construtors

class ProfileUI extends StatelessWidget {
  const ProfileUI({super.key});
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Image(
                  height: MediaQuery.of(context).size.height / 3,
                  image: NetworkImage(
                      'https://assets.thehansindia.com/h-upload/2021/03/20/1040262-srm.webp'),
                ),
                Positioned(
                  bottom: 0.0,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        'https://media.licdn.com/dms/image/C4D03AQGPIgNt7xNE9g/profile-displayphoto-shrink_400_400/0/1662110282644?e=1677110400&v=beta&t=6Fu3njZn3nhEwmTPxH_8EVno8toguKjIEHer8PVqmkE'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 0,
            ),
            ListTile(
              title: Center(
                  child: Text(
                'Hardik Agrawal',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              )),
              subtitle: Center(child: Text('Aspiring App Developer')),
            ),
            ElevatedButton.icon(
              onPressed: () {
                const url =
                    'https://www.linkedin.com/in/hardik-agrawal-b6b149207/';
                launch(url);
              },
              icon: Icon(
                Icons.mail,
                color: Colors.white,
              ),
              label: Text(
                'My LinkedIn',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              title: Text(
                'About Me',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.5,
                ),
              ),
              subtitle: Text(
                'Hi I’m Hardik Agrawal, a first-year student of CSE in SRMKTR. I have developed a keen interest in development over the past few months and thus made the decision to start learning App development through flutter. I started in December and this is the first project I have made. I wanted to make it more interactive and pleasing to look at but I was having trouble understanding how to do so. I am excited to learn more under mentorship from my seniors and hope to be an amazing developer.',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),

            ListTile(
              title: Text(
                'My Achievments',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.5,
                ),
              ),
              subtitle: Text(
                'I regularly participate in MUN’s and have won various awards in the past including best delegate, high commendation etc.',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            ListTile(
              subtitle: Text(
                'I have participated in 2 hackathons so far, one being online hosted by MLH and the other being a SRM departmental hackathon for which our team has been shortlisted for round 2.',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'My Hobbies and Interests',
                 style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.5,
                ),
              ),
              subtitle: Text(
                'I enjoy playing sports a lot. I played state level table-tennis during school. Other than TT, I enjoy playing badminton, carrom, football etc.',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
             ListTile(
              subtitle: Text(
                'I have keen interest in robots and mechanics of stuff, hence i joined the Team Humanoid Club in SRM as a Mechanical Associate. ',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            ListTile(
              subtitle: Text(
                'I love binge-watching and reading shows, anime, manga, manhwas and novels.',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
