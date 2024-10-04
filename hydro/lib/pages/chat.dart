import 'package:flutter/material.dart';
class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
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
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('ChatUp',style: TextStyle(fontWeight: FontWeight.bold),),
          backgroundColor: Colors.white30,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Handle the menu button press
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Handle the search button press
              },
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                // Handle the more button press
              },
            ),
          ],
        ),


        body: Container(
          padding: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/1.15,
          decoration: BoxDecoration(
            color: Colors.white38,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment:MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image(image: AssetImage('assets/images/img_2.png'),
                    height: 70,width: 70,fit: BoxFit.cover,),
                  ),
                  SizedBox(width: 10,),
                 const  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      SizedBox(height: 10,),
                      Text('Shivam Gupta',style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w500),),
                      Text("Hello I'm here to help you.",style: TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.w500),)
                    ],
                  ),
                  SizedBox(width: 40,),
                  Text("4.00PM",style: TextStyle(color: Colors.black45,fontSize: 14,fontWeight: FontWeight.w500),)
                ],
              ),

              SizedBox(height: 30,),

              Row(
                mainAxisAlignment:MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: const Image(image: AssetImage('assets/images/img_3.png'),
                      height: 70,width: 70,fit: BoxFit.cover,),
                  ),
                  SizedBox(width: 10,),
                 const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      SizedBox(height: 10,),
                      Text('Mr. Stifen',style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w500),),
                      Text("Hy, what is going on?",style: TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.w500),)
                    ],
                  ),
                  SizedBox(width: 75,),
                  Text("2.00PM",style: TextStyle(color: Colors.black45,fontSize: 14,fontWeight: FontWeight.w500),)
                ],
              ),
              
            ],
          ),
        )
      ),
    );
  }
}