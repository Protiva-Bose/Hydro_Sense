import 'package:flutter/material.dart';
class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child:  Scaffold(
        backgroundColor: Colors.blue.shade100,
        appBar: AppBar(
          title: Text('Recent Chats',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          backgroundColor: Colors.blueAccent,
          bottom: const TabBar(
              tabs:[
                Tab(
                  child:Text('Chats',style: TextStyle(color: Colors.white),
                  ),),
                Tab(
                  child:Text('Communities',style: TextStyle(color: Colors.white),),),

                Tab(
                  child:Text('Call',style: TextStyle(color: Colors.white),),),
              ]
          ),
          actions: [
            const   Icon(Icons.search,color: Colors.white,),
            const   SizedBox(
              width: 20,
            ),

            PopupMenuButton(
                icon: Icon(Icons.more_vert_outlined,color: Colors.white,),
                itemBuilder: (context) =>[
                  const  PopupMenuItem(
                    value: '1',
                    child: Text('NewGroup'),
                  ),
                  const    PopupMenuItem(
                    value: '2',
                    child: Text('Settings'),
                  ),
                  const    PopupMenuItem(
                    value: '1',
                    child: Text('LogOut'),
                  ),
                ]
            ),
          ],
        ),

        body: TabBarView(
            children:[

              //chats
               //1st
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(padding: const EdgeInsets.only(top: 20,),
                  child: Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          child: Image.asset(
                            'assets/images/img_2.png',
                            width: 120,
                            height: 120,
                          ),
                        ) ,
                        title: Text('Shivam Gupta'),
                        subtitle: Text('Yes,you can do this.'),
                        trailing: Text('10:00PM'),
                      ),

                      SizedBox(height: 5,),

                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Image.asset(
                            'assets/images/img_12.png',
                            width: 120,
                            height: 120,
                          ),
                        ) ,
                        title: Text('Ankush Roy'),
                        subtitle: Text('Hello,how can i help you?'),
                        trailing: Text('6:00PM'),
                      ),

                      SizedBox(height: 5,),

                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Image.asset(
                            'assets/images/img_18.png',
                            width: 120,
                            height: 120,
                          ),
                        ) ,
                        title: Text('Ankush Roy'),
                        subtitle: Text('Hello,how can i help you?'),
                        trailing: Text('6:00PM'),
                      ),

                      SizedBox(height: 5,),

                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Image.asset(
                            'assets/images/img_19.png',
                            width: 120,
                            height: 120,
                          ),
                        ) ,
                        title: Text('Javin Pelthis'),
                        subtitle: Text('Hello,how can i help you?'),
                        trailing: Text('5:00PM'),
                      ),
                    ],
                  ),
                ),
              ),


              //2nd
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    'assets/images/four.png',
                    width: 120,
                    height: 120,
                  ),
                ) ,
                title: Text('Kurigram Village Farmers'),
                subtitle: Text('Sent a voice messege'),
                trailing: Text('6:00PM'),
              ),



           //3rd
        Padding(padding: const EdgeInsets.only(top: 20,),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  child: Image.asset(
                    'assets/images/img_12.png',
                    width: 120,
                    height: 120,
                  ),
                ) ,
                title: Text('Ankush Roy'),
                subtitle: Text('You misseed a audio call'),
                trailing: Icon(Icons.call),
              ),

              SizedBox(height: 5,),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    'assets/images/img_18.png',
                    width: 120,
                    height: 120,
                  ),
                ) ,
                title: Text('Ankush Roy'),
                subtitle: Text('You misseed a audio call'),
                trailing: Icon(Icons.call),
              ),

              SizedBox(height: 5,),

              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    'assets/images/img_19.png',
                    width: 120,
                    height: 120,
                  ),
                ) ,
                title: Text('Javin Pelthis'),
                subtitle: Text('You misseed a video call'),
                trailing: Icon(Icons.video_call),
              ),
            ],
          ),
        ),


        ]
        ),
      ),
    );

  }
}

