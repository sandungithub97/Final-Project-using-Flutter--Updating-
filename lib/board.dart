
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_system/auth_controller.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
          
          GestureDetector(
            onTap: (){
              AuthController.instance.logout();
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
                  "Sign out",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Text("email.com")
        ],
      ),
    );
  }
}
