import 'package:flutter/material.dart';
class TermsOfPrivacy extends StatefulWidget {
   TermsOfPrivacy({super.key});

  @override
  State<TermsOfPrivacy> createState() => _TermsOfPrivacyState();
}

class _TermsOfPrivacyState extends State<TermsOfPrivacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(padding: const EdgeInsets.only(top: 80,right: 15,left: 20,bottom: 60),
        child: Column(
            children: [
              Text('Terms of Services',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 30),),
          SizedBox(height: 50,),
              Text('Meta builds technologies and services that enable people to connect with each other,build communities and grow businesses.These Terms govern your use of HydroSense,Weather,Alert and some other software that we offer ,except where we expressly state that separate terms apply.These products are provided to you by Meta Platforms.',style: TextStyle(fontSize: 17),),

              SizedBox(height: 50,),
              Text("We don't charge you to use hydroSense or the other product and services coveres by these Terms,unless we state otherwise.Instead,business,organisations and other persons pay us to show you ads for their products and services.By using our Products,you agree that we can show you ads that we think may be relevant to you and your interests.We use your personal data to help determine which personalized ads to show you.",style: TextStyle(fontSize: 17),),
              SizedBox(height: 50,),
              Text("Our privacy policy explains how we collect and use your personal data to determine some of the ads that you see and provide all of the other services described below.You can also go to your settings pages of the relevant Meta Product at any time to review the provacy choices that you have about how we use your data",style: TextStyle(fontSize: 17),),
              SizedBox(height: 50,),
              Text("The services we provide:",style: TextStyle(fontSize: 20),),
              SizedBox(height: 30,),
              Column(
                children: [
                  Container(
                    width: 380,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.crisis_alert_outlined),

                        SizedBox(width: 10,),
                        Text("Weather Info",style: TextStyle(fontSize: 18),),
                      ],
                    ),

                  ),
                  SizedBox(height: 15,),
                  Container(
                    width: 380,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.water_drop),

                        SizedBox(width: 10,),
                        Text("Water Level Alert",style: TextStyle(fontSize: 18),),
                      ],
                    ),

                  ),
                  SizedBox(height: 15,),
                  Container(
                    width: 380,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.flood_rounded),

                        SizedBox(width: 10,),
                        Text("Upcoming Flood Alert",style: TextStyle(fontSize: 18),),
                      ],
                    ),

                  ),
                  SizedBox(height: 15,),
                  Container(
                    width: 380,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.place_rounded),

                        SizedBox(width: 10,),
                        Text("Drought Alert",style: TextStyle(fontSize: 18),),
                      ],
                    ),

                  ),
                  SizedBox(height: 15,),
                  Container(
                    width: 380,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.air_rounded),

                        SizedBox(width: 10,),
                        Text("Know About Moisture",style: TextStyle(fontSize: 18),),
                      ],
                    ),

                  ),
                  SizedBox(height: 15,),
                  Container(
                    width: 380,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.help_center),

                        SizedBox(width: 10,),
                        Text("Help From AI",style: TextStyle(fontSize: 18),),
                      ],
                    ),

                  ),
                  SizedBox(height: 15,),
                  Container(
                    width: 380,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.messenger_outline),

                        SizedBox(width: 10,),
                        Text("Communicate With Agro Experts",style: TextStyle(fontSize: 18),),
                      ],
                    ),

                  ),
                  SizedBox(height: 15,),
                  Container(
                    width: 380,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.work_history_outlined),

                        SizedBox(width: 10,),
                        Text("Set Everydays Work",style: TextStyle(fontSize: 18),),
                      ],
                    ),

                  ),
                  SizedBox(height: 15,),
                  Container(
                    width: 380,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.shop),

                        SizedBox(width: 10,),
                        Text("Can Sell and Buy",style: TextStyle(fontSize: 18),),
                      ],
                    ),

                  ),

                ],
              )
          ],
        ),),
      ),


    );
  }
}
