import 'package:flutter/material.dart';
import 'package:hydro/msg/auth_service.dart';
import 'package:provider/provider.dart';
import 'package:hydro/msg/homm.dart';
class Homm extends StatefulWidget {
  const Homm({super.key});

  @override
  State<Homm> createState() => _HommState();
}

class _HommState extends State<Homm> {


   void signOut(){
     final authService=Provider.of<AuthService>(context,listen: false);
     authService.signOut();
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page'),
      backgroundColor: Colors.blue.shade400,
      actions: [
        IconButton(onPressed: signOut, icon: Icon(Icons.logout),
      ),
        ],
      ),
    );
  }
}
