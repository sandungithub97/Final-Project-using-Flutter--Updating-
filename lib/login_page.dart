import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_system/auth_controller.dart';
import 'package:login_system/signup_page.dart';
import 'package:get/get.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    var usernameContoller = TextEditingController();
    var emailContoller = TextEditingController();
    var passwordController = TextEditingController();
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: ()=> FocusScope.of(context).unfocus(),
      child: Scaffold (
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          //keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                width: w,
                height: h*0.3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "img/key-visual.png"
                    ),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Container(

                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
                width: w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome..",
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text("Sign in to your account..",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.lightBlue,
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
                        controller: emailContoller,
                        decoration: InputDecoration(
                          hintText: "Email",
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
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Password",
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
                    Row(
                      children: [
                        Expanded(child: Container(),),
                        Text("Forgot your password..?",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 25),
              GestureDetector(
                onTap: (){
                  AuthController.instance.login(usernameContoller.text.trim(), emailContoller.text.trim(), passwordController.text.trim());
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
                      "Sign in",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 45),
              RichText(text: TextSpan(
                text: "Don\'t have an Account..?",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15
                ),
                children: [
                  TextSpan(
                    text: " Create",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15
                    ),
                    recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=> SignupPage())
                  )
                ]
              ))
            ],
          ),
        ),
      ),
    );
  }
}
