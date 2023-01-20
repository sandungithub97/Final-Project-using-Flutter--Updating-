import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_system/auth_controller.dart';
import 'package:login_system/login_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fullNameCOntroller = TextEditingController();
    var emailContoller = TextEditingController();
    var passwordController = TextEditingController();
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 25),
            Container(

              width: w,
              height: h*0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "img/logo.jpg"
                      ),
                      fit: BoxFit.cover
                  )
              ),
              child: Column(
                children: [
                  SizedBox(height: h*0.18,), CircleAvatar(
                    backgroundColor: Colors.yellowAccent,
                    radius: 40,
                    backgroundImage: AssetImage(
                      "img/signup.png"
                    ),
                  )
                ],
              ),
            ),
            Container(

              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Registration..",
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                    ),
                  ),

                  SizedBox(height: 25),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 5,
                              offset: Offset(1,1),
                              color: Colors.grey.withOpacity(0.7)
                          )
                        ]
                    ),
                    child: TextField(
                      controller: fullNameCOntroller,
                      decoration: InputDecoration(
                          hintText: "Full Name",
                          prefixIcon: Icon(Icons.account_circle, color: Colors.cyan,),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0
                              )
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 5,
                              offset: Offset(1,1),
                              color: Colors.grey.withOpacity(0.7)
                          )
                        ]
                    ),
                    child: TextField(
                      controller: emailContoller,
                      decoration: InputDecoration(
                          hintText: "Email",
                          prefixIcon: Icon(Icons.account_circle_outlined, color: Colors.cyan,),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0
                              )
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 5,
                              offset: Offset(1,1),
                              color: Colors.grey.withOpacity(0.7)
                          )
                        ]
                    ),
                    child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: Icon(Icons.password, color: Colors.cyan,),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0
                              )
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 25),

                  Text("Are You agree with rules and regulation?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.lightBlue,
                        fontWeight: FontWeight.bold
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 25),
            GestureDetector(
              onTap: (){
                AuthController.instance.register(fullNameCOntroller.text.trim(), emailContoller.text.trim(), passwordController.text.trim());
              },
              child: Container(
                width: w*0.4,
                height: h*0.07,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: AssetImage(
                            "img/gradient.jpg"
                        ),
                        fit: BoxFit.cover
                    )
                ),
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            RichText(text: TextSpan(
                text: "Already have an Account..?",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15
                ),
                children: [
                  TextSpan(
                    text: " Login",

                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15
                    ),
                      recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=> LoginPage())
                  )
                ]
            ))
          ],
        ),
      ),
    );
  }


  }

