import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 5.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Color(0xFF7f30fe), Color(0xFF6380fb)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width, 105.0)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Column(
                children: [
                 const Center(
                    child: Text(
                      "SignIn",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                 const Text(
                    "LogIn to your account",
                    style: TextStyle(
                        color: Color(0xFFbbb0ff),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
                        margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                        height: MediaQuery.of(context).size.height/2,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           const Text('E-mail',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),),
                          const  SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 10.0),
                        decoration: BoxDecoration(
                        border: Border.all(width: 1,color: Colors.black38)),
                              child: const TextField(
                               decoration: InputDecoration(border: InputBorder.none,prefixIcon: Icon(Icons.mail_outline,color: Color(0xFF7f30fe),)),
                            ),
                            ),
                            SizedBox(height: 20,),

                           const  Text('Password',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),),
                          const   SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 10.0),
                              decoration: BoxDecoration(
                                  border: Border.all(width: 1,color: Colors.black38)),
                              child:const  TextField(
                                decoration: InputDecoration(border: InputBorder.none,prefixIcon: Icon(Icons.password_rounded,color: Color(0xFF7f30fe),
                                )),
                                obscureText: true,
                              ),
                            ),
                             SizedBox(height: 10,),
                            Container(
                              alignment: Alignment.bottomRight,
                              child: const Text('Forgot Password?',
                                style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500),
                              ),
                            ),
                             SizedBox(height: 50.0,),
                             Center(
                               child: Container(
                                 width: 160,
                                 padding: const EdgeInsets.all(10),
                                 decoration: BoxDecoration(
                                   color: Color(0xFF7f30fe),
                                   borderRadius: BorderRadius.circular(20.0),
                                     boxShadow: const [
                                       BoxShadow(
                                         color: Colors.grey,
                                         blurRadius: 400,
                                       )
                                     ]
                                 ),
                                 child:const Center(child: Text('Sign In',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),) ,
                               ),
                             ),
                          ],
                        ),
                      ),
                    ),
                  ),
                 const SizedBox(height: 40,),
                const  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",style:TextStyle(color: Colors.black,fontSize: 16)),
                      Text('Sign Up Now!',style: TextStyle(color: Color(0xFF7f30fe),fontSize: 16),)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
