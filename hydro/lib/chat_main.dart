import 'package:flutter/material.dart';
class ChatMain extends StatefulWidget {
  const ChatMain({super.key});

  @override
  State<ChatMain> createState() => _ChatMainState();
}

class _ChatMainState extends State<ChatMain> {
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
      resizeToAvoidBottomInset: false,
    backgroundColor: Colors.transparent,
    body: Container(
      margin: EdgeInsets.only(top: 40,left: 20,right: 20),
      child: Column(
        children: [
          Padding(padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,),
              SizedBox(width: 100,),
              Text('Shivam Gupta',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),)
            ],
          ),),

          SizedBox(height: 20,),

          Container(
       padding: EdgeInsets.only(left: 20,right: 20,top: 50,bottom: 40),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/1.14,
            decoration: BoxDecoration(
              color: Colors.white60,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30),),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/2),
                  alignment: Alignment.topRight,
                       decoration: BoxDecoration(
                         color: Color.fromARGB(245, 214, 216, 220),
                         borderRadius: BorderRadius.only(
                           topLeft: Radius.circular(10),
                           topRight: Radius.circular(10),
                           bottomLeft: Radius.circular(10)
                         )
                       ),
                  child: Text('Hello! How are you now?',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 15),),
                ),

                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(right: MediaQuery.of(context).size.width/3),
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 211, 228, 234),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10)
                      )
                  ),
                  child: Text('The day was really good',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 15),),
                ),

                Spacer(),
                Material(
                  elevation: 5,
                    borderRadius: BorderRadius.circular(30),
                  child:Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,borderRadius: BorderRadius.circular(30)
                    ),
                    child: Row(
                      children: [
                      const  Expanded(child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Type a messege",
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
                )

              ],
            ),
          ),
        ],
      ),
    ),
    ),
    );
  }
}
