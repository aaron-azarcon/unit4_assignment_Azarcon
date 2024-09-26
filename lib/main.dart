import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget{
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.account_circle,  // Add your desired icon here
          color: Colors.white, // Set the icon color to match the text color
          ),
        title: const Text(
            'aaron azarcon',
            style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
              ) ,
            ),
        backgroundColor: Colors.indigo.shade800,
        titleSpacing: 1.0,
      ),
    body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(2.0), // Space between border and avatar
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.blue.shade900,
                      width: 3.0,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/cipher-photo.png'),
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      ' Aaron John Azarcon',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '    3         128.7M            0',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      ' Posts      Followers     Following',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 25),
            itemProfile('Email', 'aaronjohn.azarcon@wvsu.edu.ph', Icons.person),
            const SizedBox(height: 10),
            itemProfile('Birthday', 'September 15, 2002', Icons.cake),
            const SizedBox(height: 10),
            itemProfile('Course', 'Bachelor of Science in Computer Science', Icons.book),
            const SizedBox(height: 10),
            itemProfile('Interests', 'Machine Learning, Data Analysis, Cats, Math, Physics, Games', Icons.folder),
            const SizedBox(height: 10),
            itemProfile('Hobbies', 'Music, Coding, Public Speaking, Writing', Icons.headset_mic),

            const SizedBox(height: 20),
            const Text(
              'Biography',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'I am Aaron John Azarcon, currently a 3rd Year Computer Science Student in WVSU. '
                  'I was a former debater, adjudicator, and school writer but after unexpected events got into the '
                  'field of Computer Science. I enjoy being at the intersection of math, physics, and computing. ',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black87,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      )
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.blue.shade900,
          width: 2,
        ),
      ),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold, // Bold title
          ),
        ),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        tileColor: Colors.white,
      ),
    );
  }
}

