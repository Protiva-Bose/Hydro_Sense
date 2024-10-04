import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hydro/pages/chat.dart';
import 'package:hydro/pages/database.dart';
import 'package:hydro/pages/shared_pref.dart';
import 'package:random_string/random_string.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String email = "", name = "", password = "", confirmPass = "";

  TextEditingController mailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  registration() async {
    if (password.isNotEmpty && password == confirmPass) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);

        String Id = randomAlphaNumeric(10);

        Map<String, dynamic> userInfoMap = {
          "Name": nameController.text,
          "E-mail": mailController.text,
          "username": mailController.text.replaceAll("@gmail.com", ""),
          "Photo": "https://www.pngall.com/wp-content/uploads/5/Profile-Avatar-PNG.png",
          "Id": Id,
        };

        await DatabaseMethods().addUserDetails(userInfoMap, Id);
        await SharedPreferenceHelper().saveUserId(Id);
        await SharedPreferenceHelper().saveUserDisplayName(nameController.text); // Corrected
        await SharedPreferenceHelper().saveUserEmail(mailController.text); // Corrected
        await SharedPreferenceHelper().saveUserPic(
            "https://www.pngall.com/wp-content/uploads/5/Profile-Avatar-PNG.png");
        await SharedPreferenceHelper().saveUserName(
            mailController.text.replaceAll("@gmail.com", ""));

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
              "Registered Successfully",
              style: TextStyle(fontSize: 20),
            )));

        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Chat()));
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
                'Password provided is too weak',
                style: TextStyle(fontSize: 18),
              )));
        } else if (e.code == 'email-already-in-use') {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.orangeAccent,
              content: Text(
                'Account already exists',
                style: TextStyle(fontSize: 18),
              )));
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 1.5,
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
            GestureDetector(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  setState(() {
                    email = mailController.text;
                    name = nameController.text;
                    password = passwordController.text;
                    confirmPass = confirmPassController.text;
                  });
                  registration();
                }
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Column(
                  children: [
                    Container(
                      child: const Center(
                        child: Text(
                          "Sign-Up",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const Text(
                      "Create a new account",
                      style: TextStyle(
                          color: Color(0xFFbbb0ff),
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 30, horizontal: 20),
                          margin: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                          height: MediaQuery.of(context).size.height / 1.5,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Name
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    controller: nameController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter name';
                                      }
                                      return null;
                                    },
                                    keyboardType: TextInputType.name,
                                    style: TextStyle(color: Colors.black),
                                    decoration: InputDecoration(
                                      hintText: 'Name',
                                      fillColor: Colors.white38,
                                      filled: true,
                                      prefixIcon: Icon(
                                        Icons.account_circle,
                                        color: Colors.grey,
                                      ),
                                      icon: Icon(
                                        Icons.account_balance_rounded,
                                        color: Color(0xFF7f30fe),
                                      ),
                                      labelText: 'Name',
                                      labelStyle: TextStyle(
                                          color: Color(0xFF7f30fe)),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFF7f30fe)),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 15),

                                // Email
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    controller: mailController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter E-mail';
                                      }
                                      return null;
                                    },
                                    keyboardType: TextInputType.emailAddress,
                                    style: TextStyle(color: Colors.black),
                                    decoration: InputDecoration(
                                      hintText: 'E-mail',
                                      fillColor: Colors.white38,
                                      filled: true,
                                      prefixIcon: Icon(
                                        Icons.email_rounded,
                                        color: Colors.grey,
                                      ),
                                      icon: Icon(
                                        Icons.attach_email,
                                        color: Color(0xFF7f30fe),
                                      ),
                                      labelText: 'E-mail',
                                      labelStyle: TextStyle(
                                          color: Color(0xFF7f30fe)),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFF7f30fe)),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 15),

                                // Password
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    controller: passwordController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter Password';
                                      }
                                      return null;
                                    },
                                    keyboardType:
                                    TextInputType.visiblePassword,
                                    style: TextStyle(color: Colors.black),
                                    decoration: InputDecoration(
                                      hintText: 'Password',
                                      fillColor: Colors.white38,
                                      filled: true,
                                      prefixIcon: Icon(
                                        Icons.password_rounded,
                                        color: Colors.grey,
                                      ),
                                      icon: Icon(
                                        Icons.lock_outline_rounded,
                                        color: Color(0xFF7f30fe),
                                      ),
                                      labelText: 'Password',
                                      labelStyle: TextStyle(
                                          color: Color(0xFF7f30fe)),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFF7f30fe)),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),

                                // Confirm Password
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    controller: confirmPassController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please confirm your password';
                                      }
                                      return null;
                                    },
                                    keyboardType:
                                    TextInputType.visiblePassword,
                                    style: TextStyle(color: Colors.black),
                                    decoration: InputDecoration(
                                      hintText: 'Retype Password',
                                      fillColor: Colors.white38,
                                      filled: true,
                                      prefixIcon: Icon(
                                        Icons.password_rounded,
                                        color: Colors.grey,
                                      ),
                                      icon: Icon(
                                        Icons.lock_reset_rounded,
                                        color: Color(0xFF7f30fe),
                                      ),
                                      labelText: 'Retype Password',
                                      labelStyle: TextStyle(
                                          color: Color(0xFF7f30fe)),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFF7f30fe)),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),

                                Center(child: Text("Don't have any accound?",style: TextStyle(color: Colors.black),)),
                                Center(child: Text("Sign uo now!?",style: TextStyle(color: Colors.purple,fontWeight: FontWeight.w500),)),
                                SizedBox(height: 10,),
                                Center(
                                  child: Container(
                                    width: 120,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.purple,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    //
                                    // child: Center(child: Text("Sign Up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const Chat()), // Navigate to the Help screen
                                        );
                                      },
                                      child: Text('Sign up',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                    ),

                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
