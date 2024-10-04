import 'package:flutter/material.dart';
import 'package:hydro/golpo/story.dart';
import 'package:hydro/pages/agro.dart';
import 'package:hydro/pages/alert.dart';
import 'package:hydro/pages/community.dart';
import 'package:hydro/pages/market.dart';
import 'package:hydro/pages/profile.dart';
import 'package:hydro/pages/settings.dart';
import 'package:hydro/todo/hom.dart';
import 'package:hydro/weather/homee.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'; // Import the package
import 'package:hydro/home.dart';

import 'help.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _controller = PageController();

  @override
  void dispose() {
    // Dispose the controller when the widget is disposed
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent.shade100,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/logo.png'), // Correct usage of AssetImage
                    fit: BoxFit.fill,
                  ),
                ),
                child: Text(''), // Add a child widget for DrawerHeader
              ),
              ListTile(
                leading: Icon(Icons.language_outlined),
                title: const Text('Language'),
                onTap: () {
                  // Handle the tap action.
                },
              ),
              ListTile(
                leading: Icon(Icons.location_city),
                title: const Text('Locations'),
                onTap: () {
                  // Handle the tap action.
                  Navigator.push(context,  MaterialPageRoute(
                      builder: (context) =>
                      const Homee()),
                  );
                  // Ha
                },
              ),
              ListTile(
                leading: Icon(Icons.video_file),
                title: const Text('Tutorial'),
                onTap: () {
                  // Handle the tap action.
                },
              ),
              ListTile(
                leading: Icon(Icons.account_balance_outlined),
                title: const Text('About Us'),
                onTap: () {
                  Navigator.push(context,  MaterialPageRoute(
                      builder: (context) =>
                      const Story()),
                  );
                  // Handle the tap action.
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: const Text('Log-Out'),
                onTap: () {
                  // Handle the tap action.
                },
              ),
            ],
          ),
        ),

        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(image: AssetImage('assets/images/logo.png')),
                const Text(
                  'Blooming Gardens',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  'Your Green Heaven',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.green,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                            20.0), // Set the radius for rounded corners
                        child: Image.asset(
                          'assets/images/i.png',
                          width: 200, // Set the width
                          height: 200, // Set the height
                          fit: BoxFit.cover, // Ensures the image fills the box
                        ),
                      ),
                      const SizedBox(width: 10),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          'assets/images/vii.png',
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          'assets/images/i.png',
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          'assets/images/iii.png',
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          'assets/images/iv.png',
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          'assets/images/v.png',
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: PageView(
                    controller: _controller,
                    children: <Widget>[
                      //1st row button
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [
                                SizedBox(width: 5),
          
                                //1st number
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(40),
                                    image: const DecorationImage(
                                        fit: BoxFit.fill,
                                        image:
                                            AssetImage('assets/images/first.png')),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey
                                            .withOpacity(0.5), // Shadow color
                                        spreadRadius: 5, // Spread radius
                                        blurRadius: 7, // Blur radius
                                        offset: Offset(0, 3), // Shadow position
                                      ),
                                    ],
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                            const Hom()), // Navigate to the Help screen
                                      );
                                    },
                                    child: Text(
                                        '                                                '),
                                  ),
                                ),
                                const SizedBox(width: 30),
          
                                //2nd number
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    image: const DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage('assets/images/two.png')),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey
                                            .withOpacity(0.5), // Shadow color
                                        spreadRadius: 5, // Spread radius
                                        blurRadius: 7, // Blur radius
                                        offset: Offset(0, 3), // Shadow position
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                            const Homee()), // Navigate to the Help screen
                                      );
                                    },
                                    child: Text(
                                        '                                                '),
                                  ),
                                ),
                                const SizedBox(width: 30),
          
                                //3rd number
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(40),
                                    image: const DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage('assets/images/thr.png')),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Alert()), // Navigate to the Help screen
                                      );
                                    },
                                    child: Text(
                                        '                                               '),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 35),
                            child: Row(
                              children: [
                                SizedBox(width: 20),
                                Text('To-Do List'),
                                SizedBox(width: 70),
                                Text('Weather'),
                                SizedBox(width: 70),
                                Text('Hydro Alert'),
                              ],
                            ),
                          ),
                        ],
                      ),
          
                      Column(
                        children: [
                          //2nd row button
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [
                                SizedBox(width: 5),
          
                                //4th number
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(40),
                                    image: const DecorationImage(
                                        fit: BoxFit.fill,
                                        image:
                                            AssetImage('assets/images/four.png')),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Community()), // Navigate to the Help screen
                                      );
                                    },
                                    child: Text(
                                        '                                                '),
                                  ),
                                ),
                                const SizedBox(width: 30),
          
                                //5th number
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(40),
                                    image: const DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage('assets/images/fi.png')),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                            const Agro()), // Navigate to the Help screen
                                      );
                                    },
                                    child: Text(
                                        '                                                '),
                                  ),
                                ),
                                const SizedBox(width: 30),
          
                                //6th number
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(40),
                                    image: const DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage('assets/images/si.png')),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                            const Market()), // Navigate to the Help screen
                                      );
                                    },
                                    child: Text(
                                        '                                                '),
                                  ),
                                ),
                              ],
                            ),
                          ),
          
                          //third row bottun
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 35),
                            child: Row(
                              children: [
                                SizedBox(width: 20),
                                Text('Community'),
                                SizedBox(width: 58),
                                Text('Agro-Brain'),
                                SizedBox(width: 55),
                                Text('MarketPlace'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [
                                SizedBox(width: 5),
          
                                //7th number
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(40),
                                    image: const DecorationImage(
                                        fit: BoxFit.fill,
                                        image:
                                            AssetImage('assets/images/img_4.png')),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                            const Profile()), // Navigate to the Help screen
                                      );
                                    },
                                    child: Text(
                                        '                                                '),
                                  ),
                                ),
          
                                const SizedBox(width: 30),
                                //8th number
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(40),
                                    image: const DecorationImage(
                                        fit: BoxFit.fill,
                                        image:
                                            AssetImage('assets/images/img_5.png')),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Settings()), // Navigate to the Help screen
                                      );
                                    },
                                    child: Text(
                                        '                                               '),
                                  ),
                                ),
          
                                const SizedBox(width: 30),
          
                                //9th number
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(40),
                                    image: const DecorationImage(
                                        fit: BoxFit.fill,
                                        image:
                                            AssetImage('assets/images/img_6.png')),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Help()), // Navigate to the Help screen
                                      );
                                    },
                                    child: Text(
                                        '                                                '),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                SizedBox(width: 35),
                                Text('Profile'),
                                SizedBox(width: 80),
                                Text('Settings'),
                                SizedBox(width: 55),
                                Text('Help & Support'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),


                // Image.asset('assets/images/R.gif',width: 600,
                //   height: 100,),


                Container(
                  padding: EdgeInsets.only(bottom: 60.0),
                  child: SmoothPageIndicator(
                    controller: _controller, // PageController
                    count: 3, // Number of pages
                    effect: const ExpandingDotsEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      activeDotColor: Colors.green,
                      dotColor: Colors.grey,
                    ),
                  ),
                ),

              ],
          ),
        ),
      ),
    );
  }
}
