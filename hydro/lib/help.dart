import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hydro/pages/market.dart';
import 'package:hydro/pages/privacy_policy.dart';
import 'package:hydro/pages/settings.dart';
import 'package:hydro/pages/terms_of_privacy.dart';

import 'golpo/story.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(
            'Help & Support',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          backgroundColor: Colors.blueAccent,
          bottom: const TabBar(tabs: [
            Tab(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.circle_notifications,
                        color: Colors.white,
                        size: 20,
                      ),
                      Center(
                        child: Text(
                          'Help &',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Centre',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
            Tab(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 7,
                      ),
                      Icon(
                        Icons.move_to_inbox_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                      Center(
                        child: Text(
                          'Support',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Inbox',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
            Tab(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 7,
                      ),
                      Icon(
                        Icons.info,
                        color: Colors.white,
                        size: 20,
                      ),
                      Center(
                        child: Text(
                          'About',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Feature',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
            Tab(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.policy_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                      Center(
                        child: Text(
                          'Terms &',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Policy',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
          ]),
          actions: [
            const Icon(
              Icons.search,
              color: Colors.white,
            ),
            const SizedBox(
              width: 20,
            ),
            PopupMenuButton(
                icon: Icon(
                  Icons.more_vert_outlined,
                  color: Colors.white,
                ),
                itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: '1',
                        child: Text('NewGroup'),
                      ),
                      const PopupMenuItem(
                        value: '2',
                        child: Text('Settings'),
                      ),
                      const PopupMenuItem(
                        value: '1',
                        child: Text('LogOut'),
                      ),
                    ]),
          ],
        ),
        body: TabBarView(children: [
          //first page
          Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(64.0), // here the desired height
              child: AppBar(
                backgroundColor: Colors.grey.shade300,
                title: Text(
                  'Help & Centre',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.blue,
                  backgroundImage: AssetImage('assets/images/img_7.png'),
                ),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    color: Colors.black54,
                    thickness: 1,
                  ),
                  Text(
                    'Hi,how can we help you?',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              fillColor:
                                  const Color.fromARGB(235, 201, 218, 224),
                              filled: true,
                              border: InputBorder.none,
                              hintText: "Serach",
                              hintStyle: const TextStyle(color: Colors.black45),
                              prefixIcon: const Icon(Icons.search_rounded),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(40),
                              )),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey.shade400,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            width: 190,
                            height: 140,

                            // image: Image(image: AssetImage('assets/images/img_8.png',)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(
                                    image:
                                        AssetImage('assets/images/img_8.png'),
                                    width: 50,
                                    height: 50,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text('Account settings'),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Settings()));
                                      },
                                      child: Container(
                                        width: 45,
                                        height: 20,
                                        decoration: BoxDecoration(
                                          color: Colors.blueGrey.shade200,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey.shade300,
                                                offset: Offset(0, 5))
                                          ],
                                          border: Border.all(
                                              color: Colors.grey, width: 2),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Center(
                                            child: Text(
                                          'Click',
                                          style: TextStyle(
                                              color: Colors.grey.shade700),
                                        )),
                                      )),
                                ],
                              ),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey.shade400,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            width: 190,
                            height: 140,

                            // image: Image(image: AssetImage('assets/images/img_8.png',)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(
                                    image:
                                        AssetImage('assets/images/img_9.png'),
                                    width: 50,
                                    height: 50,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text('Lock & Password'),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Settings()));
                                      },
                                      child: Container(
                                        width: 45,
                                        height: 20,
                                        decoration: BoxDecoration(
                                          color: Colors.blueGrey.shade200,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey.shade300,
                                                offset: Offset(0, 5))
                                          ],
                                          border: Border.all(
                                              color: Colors.grey, width: 2),
                                          borderRadius:
                                          BorderRadius.circular(20),
                                        ),
                                        child: Center(
                                            child: Text(
                                              'Click',
                                              style: TextStyle(
                                                  color: Colors.grey.shade700),
                                            )),
                                      )),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey.shade400,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            width: 190,
                            height: 140,

                            // image: Image(image: AssetImage('assets/images/img_8.png',)),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5, left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/img_10.png'),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text('Privacy & Security'),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                   PrivacyPolicy()));
                                      },
                                      child: Container(
                                        width: 45,
                                        height: 20,
                                        decoration: BoxDecoration(
                                          color: Colors.blueGrey.shade200,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey.shade300,
                                                offset: Offset(0, 5),

                                            )
                                          ],
                                          border: Border.all(
                                              color: Colors.grey, width: 2),
                                          borderRadius:
                                          BorderRadius.circular(20),

                                        ),
                                        child: Center(
                                            child: Text(
                                              'Click',
                                              style: TextStyle(
                                                  color: Colors.grey.shade700),
                                            )),
                                      )),
                                ],
                              ),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey.shade400,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            width: 190,
                            height: 140,

                            // image: Image(image: AssetImage('assets/images/img_8.png',)),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5, left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/img_11.png'),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text('MarketPlace'),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Market()));
                                      },
                                      child: Container(
                                        width: 45,
                                        height: 20,
                                        decoration: BoxDecoration(
                                          color: Colors.blueGrey.shade200,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey.shade300,
                                                offset: Offset(0, 5))
                                          ],
                                          border: Border.all(
                                              color: Colors.grey, width: 2),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Center(
                                            child: Text(
                                          'Click',
                                          style: TextStyle(
                                              color: Colors.grey.shade700),
                                        )),
                                      ))
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade200,
                    thickness: 3,
                  ),
                  Text(
                    'Looking for something else?',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 430,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(40),
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/logo.png')),
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
                                  const Story()), // Navigate to the Help screen
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 65),
                        child: Text(
                          'How to use Hydrosense?',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Second page
          Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(60.0), // here the desired height
              child: AppBar(
                backgroundColor: Colors.grey.shade300,
                title: Text(
                  'Help & Centre',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(Icons.support_agent, weight: 30),
              ),
            ),
            body: const Column(
              children: [
                ListTile(
                  title: Text(
                    'Reports',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.report_off_rounded),
                  title: Text(
                    'Reports about others',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.add_alert),
                  title: Text(
                    'Your alerts',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Others',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.report_problem),
                          title: Text(
                            "You anonymously reported Ms041's ad for being sexually inapppropriate.",
                            style: TextStyle(fontSize: 20),
                          ),
                          subtitle: Text('1 new update'),
                          trailing: Text('23 July,2023'),
                        ),

                        ListTile(
                          leading: Icon(Icons.report_problem),
                          title: Text(
                            "You anonymously reported Ms041's ad for being sexually inapppropriate.",
                            style: TextStyle(fontSize: 20),
                          ),
                          subtitle: Text('1 new update'),
                          trailing: Text('23 July,2023'),
                        ),

                        // ListTile(
                        //   leading: Icon(Icons.report_problem),
                        //   title: Text("You anonymously reported WD-24's ad for being sexually inapppropriate.",style: TextStyle(fontSize: 20),),
                        //   subtitle: Text('1 new update'),
                        //   trailing: Text('28 July,2023'),
                        // ),
                      ],
                    ))
              ],
            ),
          ),

          //third page
          Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(64.0), // here the desired height
              child: AppBar(
                backgroundColor: Colors.grey.shade300,
                title: Text(
                  'About our feature',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(Icons.info_outline_rounded, weight: 30),
              ),
            ),
            body: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Image(image: AssetImage('assets/images/logo.png')),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: ListTile(
                    title: Text(
                        "This app is a greate tool for farmers and other businessmans who are related with the agriculture and crops develop also male our everyday food.By using this one can easily know about his everyday weather pattern ,condition and make sense alert with knowing the future days weather info.Easily know about the upcoming flood,and note the waterlevel and make aware of his lives.Can contact with the agriculture experts and take thwir demanding helps and actions.Take help from the most demanding AI tool.Create a communnity of their similarities. "),
                    subtitle: Text(
                      '                        Use this without any hesitasion',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    //trailing: Text('Being a Happy User',style: TextStyle(color: Colors.blue),),
                  ),
                ),
                Text(
                  'Being a Happy User...',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w500),
                ),
                Container(
                  height: 35,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const Story()), // Navigate to the Help screen
                      );
                    },
                    child: Text('Learn Clearly',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                )
              ],
            ),
          ),

          //fourth page
          Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(64.0), // here the desired height
              child: AppBar(
                backgroundColor: Colors.grey.shade300,
                title: Text(
                  'Terms & Policies',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(Icons.backspace, weight: 30),
              ),
            ),
            body: Column(
              children: [
                ListTile(
                  leading:  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TermsOfPrivacy()));
                      },
                      child:Icon(Icons.terminal),
                  ),
                  title: Text(
                    'Terms of Service',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  subtitle: Text('Terms you agree to when you use HydroSense'),
                ),
               const Divider(
                  color: Colors.grey,
                  thickness: 1.5,
                ),

                ListTile(

                  leading: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PrivacyPolicy()));
                    },
                    child:Icon(Icons.lock),
                  ),
                  title: Text(
                    'Privacy Policy',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Information we receive and how it's used"),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1.5,
                ),
                ListTile(
                  leading: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TermsOfPrivacy()));
                    },
                    child:Icon(Icons.group),
                  ),
                  title: Text(
                    'Community standards',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("What isn't allowed and how to report abuse"),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1.5,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
