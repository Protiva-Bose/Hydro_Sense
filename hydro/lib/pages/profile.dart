import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/images/img_1.png'),
    fit: BoxFit.cover,
    ),
    ),
    child: Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade200,
        title: Text('Profile',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
         body: Padding(padding: const EdgeInsets.only(top: 50,left: 15,right: 15,bottom: 10),
           child: Column(
             children: [
               SizedBox(height: 40,),

               Center(child:  CircleAvatar(
                 backgroundImage: AssetImage('assets/images/img_20.png'),
                 radius: 90,

                 backgroundColor: Colors.black,
                ),
               ),

               ListTile(
                 leading: Icon(Icons.face),
                 title: Text('Name'),
                 subtitle: Text('Protiva Bose',style: TextStyle(fontWeight: FontWeight.bold),),
                 trailing: Icon(Icons.edit),
               ),
                  
                  Padding(padding: const EdgeInsets.only(left: 55,right: 10),
                  child: Text('This is not your username or pin.This name will be visible to your HydroSense contacts.'),),
                      SizedBox(height: 20,),
               ListTile(
                 leading: Icon(Icons.info),
                 title: Text('About'),
                 subtitle: Text('Agriculture Worker',style: TextStyle(fontWeight: FontWeight.bold),),
                 trailing: Icon(Icons.edit),
               ),

               SizedBox(height: 20,),

               ListTile(
                 leading: Icon(Icons.call),
                 title: Text('Phone'),
                 subtitle: Text('+8801732467312',style: TextStyle(fontWeight: FontWeight.bold),),
               ),
             ],
           ),),
    ),
    );
  }
}
