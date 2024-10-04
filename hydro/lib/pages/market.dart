import 'package:flutter/material.dart';
class Market extends StatefulWidget {
  const Market({super.key});

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {

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
        backgroundColor: Colors.blueAccent,
        title: Text('Market-Place',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(padding: const EdgeInsets.only(top: 15,left: 10,right: 10,bottom: 10),
          child: Column(
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
                            prefixIcon: Icon(Icons.search_rounded),
                            hintText: "Search your items here",
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
                      ),


                    ],
                  ),
                ) ,
              ),


              SizedBox(height: 30,),
                 Text('Here post and addd your products',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
              Divider(color: Colors.grey.shade400,thickness: 3,),




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
                       Expanded(child:
                      TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.post_add),
                            hintText: "Add products and goods",
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
                      ),

                    ],
                  ),
                ) ,

              ),


              // Column(
              //   children: [
              //     TextButton(
              //       onPressed: _toggleContainer,
              //       child: Container(
              //         width: 180,
              //         height: 160,
              //         decoration:
              //         BoxDecoration(
              //             color: Colors.white,
              //             borderRadius: BorderRadius.only(topRight: Radius.circular(30),
              //                 bottomLeft: Radius.circular(30)),
              //             boxShadow: [BoxShadow(color: Colors.grey.shade400,offset: Offset(0, 7),blurRadius: 10)]
              //         ),
              //         child: Column(
              //           children: [
              //             Image.asset(
              //               'assets/images/img_38.png',
              //               width: 110,
              //             ),
              //             Padding(
              //               padding:
              //               const EdgeInsets.only(right: 10, left: 10),
              //               child: Text(
              //                 'Who can see what you share',
              //                 style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ),
              //
              //
              //     SizedBox(height: 20), //
              //
              //     // Add space between the button and the visibility widget
              //     Visibility(
              //       visible: _isVisible,
              //       child: Container(
              //         width: double.infinity, // Full width of the screen
              //         height: 100,
              //         decoration: BoxDecoration(
              //           borderRadius: BorderRadius.only(topRight: Radius.circular(40),
              //               bottomLeft: Radius.circular(40)),
              //           color: Colors.blue.shade200,
              //         ),
              //         child: Padding(padding: const EdgeInsets.only(top:10,right: 5,left: 15),child:  Text("The users ,your friends,groups of community and the Agro Experts your helping hand.Also those people you add in your community sector and knock the experts.",style: TextStyle(fontWeight: FontWeight.w500),)),
              //       ),
              //     ),
              //   ],
              // ),



              Padding(padding: const EdgeInsets.only(top: 30,bottom: 10),
                child:  Row(

                  children: [

                    Container(
                        decoration: BoxDecoration(
                      border: Border.all(
                        color:Colors.grey,
                        width: 2,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),

                        width: 190,
                        height: 200,

                        // image: Image(image: AssetImage('assets/images/img_8.png',)),
                        child:  Padding(padding: const  EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 10,),
                              Image(image: AssetImage('assets/images/img_21.png'),width: 100,height: 100,),
                              Text('500/-',style: TextStyle(fontSize: 20),),
                              Text('Berry & Bird',style: TextStyle(fontSize: 20),),
                            ],
                          ),)
                    ),

                    SizedBox(
                      width: 5,
                    ),


                    Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:Colors.grey,
                            width: 2,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),

                        width: 190,
                        height: 200,

                        // image: Image(image: AssetImage('assets/images/img_8.png',)),
                        child:  Padding(padding: const  EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 10,),
                              Image(image: AssetImage('assets/images/img_24.png'),width: 100,height: 100,),
                              Text('150/-',style: TextStyle(fontSize: 20),),
                              Text('Carrot',style: TextStyle(fontSize: 20),),
                            ],
                          ),)
                    ),
                  ],
                ),
              ),

              Padding(padding: const EdgeInsets.only(top: 30,bottom: 10),
                child:  Row(

                  children: [

                    Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:Colors.grey,
                            width: 2,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),

                        width: 190,
                        height: 200,

                        // image: Image(image: AssetImage('assets/images/img_8.png',)),
                        child:  Padding(padding: const  EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 10,),
                              Image(image: AssetImage('assets/images/img_22.png'),width: 100,height: 100,),
                              Text('200/-',style: TextStyle(fontSize: 20),),
                              Text('Bansai',style: TextStyle(fontSize: 20),),
                            ],
                          ),)
                    ),

                    SizedBox(
                      width: 5,
                    ),


                    Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:Colors.grey,
                            width: 2,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),

                        width: 190,
                        height: 200,

                        // image: Image(image: AssetImage('assets/images/img_8.png',)),
                        child:  Padding(padding: const  EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 10,),
                              Image(image: AssetImage('assets/images/img_23.png'),width: 100,height: 100,),
                              Text('160/-',style: TextStyle(fontSize: 20),),
                              Text('CouliFolwer',style: TextStyle(fontSize: 20),),
                            ],
                          ),)
                    ),
                  ],
                ),
              ),

              Padding(padding: const EdgeInsets.only(top: 30,bottom: 10),
                child:  Row(

                  children: [

                    Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:Colors.grey,
                            width: 2,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),

                        width: 190,
                        height: 200,

                        // image: Image(image: AssetImage('assets/images/img_8.png',)),
                        child:  Padding(padding: const  EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 10,),
                              Image(image: AssetImage('assets/images/img_25.png'),width: 100,height: 100,),
                              Text('250/-',style: TextStyle(fontSize: 20),),
                              Text('Bashmoti Rice',style: TextStyle(fontSize: 20),),
                            ],
                          ),)
                    ),

                    SizedBox(
                      width: 5,
                    ),


                    Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:Colors.grey,
                            width: 2,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),

                        width: 190,
                        height: 200,

                        // image: Image(image: AssetImage('assets/images/img_8.png',)),
                        child:  Padding(padding: const  EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 10,),
                              Image(image: AssetImage('assets/images/img_26.png'),width: 100,height: 100,),
                              Text('130/-',style: TextStyle(fontSize: 20),),
                              Text('Masoor Dal',style: TextStyle(fontSize: 20),),
                            ],
                          ),)
                    ),
                  ],
                ),
              ),

              Padding(padding: const EdgeInsets.only(top: 30,bottom: 10),
                child:  Row(

                  children: [

                    Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:Colors.grey,
                            width: 2,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),

                        width: 190,
                        height: 200,

                        // image: Image(image: AssetImage('assets/images/img_8.png',)),
                        child:  Padding(padding: const  EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 10,),
                              Image(image: AssetImage('assets/images/img_27.png'),width: 100,height: 100,),
                              Text('150/-',style: TextStyle(fontSize: 20),),
                              Text('Knife',style: TextStyle(fontSize: 20),),
                            ],
                          ),)
                    ),

                    SizedBox(
                      width: 5,
                    ),


                    Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:Colors.grey,
                            width: 2,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),

                        width: 190,
                        height: 200,

                        // image: Image(image: AssetImage('assets/images/img_8.png',)),
                        child:  Padding(padding: const  EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 10,),
                              Image(image: AssetImage('assets/images/img_29.png'),width: 80,height: 80,),
                              Text('200/-',style: TextStyle(fontSize: 20),),
                              Text('Apple',style: TextStyle(fontSize: 20),),
                            ],
                          ),)
                    ),
                  ],
                ),
              ),

              Padding(padding: const EdgeInsets.only(top: 30,bottom: 10),
                child:  Row(

                  children: [

                    Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:Colors.grey,
                            width: 2,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),

                        width: 190,
                        height: 200,

                        // image: Image(image: AssetImage('assets/images/img_8.png',)),
                        child:  Padding(padding: const  EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 10,),
                              Image(image: AssetImage('assets/images/img_43.png'),width: 130,height: 100,),
                              Text('200/-',style: TextStyle(fontSize: 20),),
                              Text('Brown Flax Seeds',style: TextStyle(fontSize: 20),),
                            ],
                          ),)
                    ),

                    SizedBox(
                      width: 5,
                    ),


                    Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:Colors.grey,
                            width: 2,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),

                        width: 190,
                        height: 200,

                        // image: Image(image: AssetImage('assets/images/img_8.png',)),
                        child:  Padding(padding: const  EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 10,),
                              Image(image: AssetImage('assets/images/img_44.png'),width: 140,height: 100,),
                              Text('10,0000/-',style: TextStyle(fontSize: 20),),
                              Text('Tractor',style: TextStyle(fontSize: 20),),
                            ],
                          ),)
                    ),
                  ],
                ),
              ),

              Padding(padding: const EdgeInsets.only(top: 30,bottom: 10),
                child:  Row(

                  children: [

                    Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:Colors.grey,
                            width: 2,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),

                        width: 190,
                        height: 200,

                        // image: Image(image: AssetImage('assets/images/img_8.png',)),
                        child:  Padding(padding: const  EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 10,),
                              Image(image: AssetImage('assets/images/img_45.png'),width: 130,height: 100,),
                              Text('200/-',style: TextStyle(fontSize: 20),),
                              Text('Sun Flower Seeds',style: TextStyle(fontSize: 20),),
                            ],
                          ),)
                    ),

                    SizedBox(
                      width: 5,
                    ),


                    Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:Colors.grey,
                            width: 2,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),

                        width: 190,
                        height: 200,

                        // image: Image(image: AssetImage('assets/images/img_8.png',)),
                        child:  Padding(padding: const  EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 10,),
                              Image(image: AssetImage('assets/images/img_46.png'),width: 140,height: 100,),
                              Text('400/-',style: TextStyle(fontSize: 20),),
                              Text('Rakthashali Red Rice',style: TextStyle(fontSize: 18),),
                            ],
                          ),)
                    ),
                  ],
                ),
              ),

            ],
          ),),
      ),
    );

  }
}
