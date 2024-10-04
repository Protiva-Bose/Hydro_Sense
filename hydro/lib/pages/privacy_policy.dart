import 'package:flutter/material.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  // Define _isVisible as a boolean variable and initialize it to false
  bool _isVisible = false;

  void _toggleContainer() {
    setState(() {
      _isVisible = !_isVisible; // Toggle the visibility
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Privacy & Security',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
    scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 20, right: 15, left: 15,bottom: 30),
          child:
          Column(
            children: [
              Text(
                "Privacy Checkup",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              SizedBox(height: 10),
              Text(
                  "We'll guide you through some settings so you can make the right choices for your main profile and account."),
              SizedBox(height: 10),
              Text("What topic do you want to start with?"),
              Divider(color: Colors.grey.shade500),
              Text(
                "Your profile settings:",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(height: 10),

              // Toggle Container in Vertical Alignment
              Column(
                children: [
                  TextButton(
                    onPressed: _toggleContainer,
                    child: Container(
                      width: 180,
                      height: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30)),
                        boxShadow: [BoxShadow(color: Colors.grey.shade400,offset: Offset(0, 7),blurRadius: 10)]
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/img_38.png',
                            width: 110,
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.only(right: 10, left: 10),
                            child: Text(
                              'Who can see what you share',
                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),


                  SizedBox(height: 20), //

                  // Add space between the button and the visibility widget
                  Visibility(
                    visible: _isVisible,
                    child: Container(
                      width: double.infinity, // Full width of the screen
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40)),
                        color: Colors.blue.shade200,
                      ),
                      child: Padding(padding: const EdgeInsets.only(top:10,right: 5,left: 15),child:  Text("The users ,your friends,groups of community and the Agro Experts your helping hand.Also those people you add in your community sector and knock the experts.",style: TextStyle(fontWeight: FontWeight.w500),)),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 40),


              Column(
                children: [
                  TextButton(
                    onPressed: _toggleContainer,
                    child: Container(
                      width: 180,
                      height: 160,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30)),
                          boxShadow: [BoxShadow(color: Colors.grey.shade400,offset: Offset(0, 7),blurRadius: 10)]
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/img_39.png',
                            width: 110,
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.only(right: 10, left: 10),
                            child: Text(
                              ' How people can fine you on HydroSense',
                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),


                  SizedBox(height: 20), //

                  // Add space between the button and the visibility widget
                  Visibility(
                    visible: _isVisible,
                    child: Container(
                      width: double.infinity, // Full width of the screen
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40)),
                        color: Colors.blue.shade200,
                      ),
                      child: Padding(padding: const EdgeInsets.only(top:10,right: 5,left: 15),child:  Text("Prople find you from the community sector friends also they get the notification that those people want to add or talk with you.Also you can add friends and give the requests to the other people with the help of users name and identity also their profile picture.",style: TextStyle(fontWeight: FontWeight.w500),)),
                    ),
                  ),
                ],
              ),


              SizedBox(height: 60),

              Column(
                children: [
                  TextButton(
                    onPressed: _toggleContainer,
                    child: Container(
                      width: 180,
                      height: 160,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30)),
                          boxShadow: [BoxShadow(color: Colors.grey.shade400,offset: Offset(0, 7),blurRadius: 10)]
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/img_40.png',
                            width: 110,
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.only(right: 10, left: 10),
                            child: Text(
                              ' How to keep your account secure',
                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),


                  SizedBox(height: 20), //

                  // Add space between the button and the visibility widget
                  Visibility(
                    visible: _isVisible,
                    child: Container(
                      width: double.infinity, // Full width of the screen
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40)),
                        color: Colors.blue.shade200,
                      ),
                      child: Padding(padding: const EdgeInsets.only(top:10,right: 5,left: 15),child:  Text("Avoid to report someone without any reason.Keep your password strong and manage safety.Give the valid phone number that you use always.Maintain the rules of our app properly.",style: TextStyle(fontWeight: FontWeight.w500),)),
                    ),
                  ),
                ],
              ),


                  SizedBox(height: 60),

              Column(
                children: [
                  TextButton(
                    onPressed: _toggleContainer,
                    child: Container(
                      width: 180,
                      height: 160,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30)),
                          boxShadow: [BoxShadow(color: Colors.grey.shade400,offset: Offset(0, 7),blurRadius: 10)]
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/img_41.png',
                            width: 90,
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.only(right: 10, left: 10),
                            child: Text(
                              'Your data settings on HydroSense',
                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),


                  SizedBox(height: 20),

                  // Add space between the button and the visibility widget
                  Visibility(
                    visible: _isVisible,
                    child: Container(
                      width: double.infinity, // Full width of the screen
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40)),
                        color: Colors.blue.shade200,
                      ),
                      child: Padding(padding: const EdgeInsets.only(top:10,right: 5,left: 15),child:  Text("Your data can save to create your profile and make ac account.Give the valid information of your personal life.",style: TextStyle(fontWeight: FontWeight.w500),)),
                    ),
                  ),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
