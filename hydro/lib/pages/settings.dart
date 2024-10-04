import 'package:flutter/material.dart';
class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade200,
        title: Text('Settings'),
      ),
      body:  SingleChildScrollView(
    scrollDirection: Axis.vertical,

      child: Padding(padding: const EdgeInsets.only(top: 20,left: 15,right: 15,bottom: 10),
      child:  Column(
        children: [

          Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(20),
            child:Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children: [
                  const  Expanded(child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search settings",
                        hintStyle: TextStyle(color: Colors.black45)
                    ),
                  ),
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color(0xFFf3f3f3),
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Center(child: Icon(Icons.send,color: Color.fromARGB(255, 164, 154, 154)),)
                  )
                ],
              ),
            ) ,
          ),
          SizedBox(height: 10,),
          
          Padding(padding: const EdgeInsets.only(left: 30,right: 30),
            child: Divider(color: Colors.grey,thickness: 1,),),

          ListTile(
             title: Text('Preferences',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            subtitle: Text('Customise your experience on HydroSense'),
          ),
          SizedBox(height: 5,),

          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
          ),
          Padding(padding: const EdgeInsets.only(left: 30,right: 30),
            child: Divider(color: Colors.grey,thickness: 1.5,),),

          ListTile(
            leading: Icon(Icons.language),
            title: Text('Language',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
          ),
          Padding(padding: const EdgeInsets.only(left: 30,right: 30),
            child: Divider(color: Colors.grey,thickness: 1.5,),),

          ListTile(
            leading: Icon(Icons.dark_mode),
            title: Text('Dark Mode',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
          ),
          Padding(padding: const EdgeInsets.only(left: 30,right: 30),
            child: Divider(color: Colors.grey,thickness: 1.5,),),

          ListTile(
            leading: Icon(Icons.insert_drive_file),
            title: Text('Suggetions',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
          ),
          Padding(padding: const EdgeInsets.only(left: 30,right: 30),
            child: Divider(color: Colors.grey,thickness: 1.5,),),


          SizedBox(height: 10,),
          ListTile(
            title: Text('Audience & Visibility',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            subtitle: Text('Control who can see what you share on HydroSense'),
          ),
          SizedBox(height: 5,),

          ListTile(
            leading: Icon(Icons.my_library_add),
            title: Text('Profile Details',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
          ),
          Padding(padding: const EdgeInsets.only(left: 30,right: 30),
            child: Divider(color: Colors.grey,thickness: 1.5,),),

          ListTile(
            leading: Icon(Icons.find_in_page),
            title: Text('How peple can find you & contact you',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
          ),
          Padding(padding: const EdgeInsets.only(left: 30,right: 30),
            child: Divider(color: Colors.grey,thickness: 1.5,),),

          ListTile(
            leading: Icon(Icons.post_add),
            title: Text('Posts',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
          ),
          Padding(padding: const EdgeInsets.only(left: 30,right: 30),
            child: Divider(color: Colors.grey,thickness: 1.5,),),


          SizedBox(height: 10,),
          ListTile(
            title: Text('Your Activity',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            subtitle: Text("Review your activity & content that you're taggeg in"),
          ),
          SizedBox(height: 5,),

          ListTile(
            leading: Icon(Icons.manage_accounts),
            title: Text('Learn how to manage your information',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
          ),
          Padding(padding: const EdgeInsets.only(left: 30,right: 30),
            child: Divider(color: Colors.grey,thickness: 1.5,),),

          SizedBox(height: 10,),
          ListTile(
            title: Text('Your Information',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            subtitle: Text("Manage your info"),
          ),
          SizedBox(height: 5,),

          ListTile(
            leading: Icon(Icons.info_outline_rounded),
            title: Text('See your info',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
          ),
          Padding(padding: const EdgeInsets.only(left: 30,right: 30),
            child: Divider(color: Colors.grey,thickness: 1.5,),),

          SizedBox(height: 10,),
          ListTile(
            title: Text('Community standards & legal policies',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            //subtitle: Text("Review your activity & content that you're taggeg in"),
          ),
          SizedBox(height: 5,),

          ListTile(
            leading: Icon(Icons.info_sharp),
            title: Text('About',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
          ),
          Padding(padding: const EdgeInsets.only(left: 30,right: 30),
            child: Divider(color: Colors.grey,thickness: 1.5,),),

          ListTile(
            leading: Icon(Icons.design_services_rounded),
            title: Text('Terms of services',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
          ),
          Padding(padding: const EdgeInsets.only(left: 30,right: 30),
            child: Divider(color: Colors.grey,thickness: 1.5,),),
        ],
      ),
      ),


      ),
    );
  }
}
