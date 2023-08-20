import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset("assets/images/login_image.png",
           fit: BoxFit.cover),
           SizedBox(
            height: 15.0
            ),
          Text("MushiMushi x Arigato",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 15.0,
              ),
              Padding(padding: EdgeInsets.symmetric(
                vertical :16.0, horizontal: 16.0),
                child: Column(
                  children: [
                    TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Username",
                  labelText: "Username",
                ),
              ),
                 TextFormField(
                  obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password",
                ),
              ),
              SizedBox(
                height: 200.0,
              ),
            ElevatedButton (onPressed: (){},
                   child: Text('Login')),
              ],

                ),),
                
                  
              
        ],
      ),
    );
  }
}
