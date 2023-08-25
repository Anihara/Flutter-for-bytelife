import 'package:alice/utilities/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeroute);
      setState(
        () {
          changeButton = false;
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              SizedBox(
                height: 25.0,
              ),
              Image.asset("assets/images/hehehe.jpg", fit: BoxFit.fill),
              SizedBox(
                height: 15.0,
              ),
              Text("Hey Hey Hey",
                  style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter username';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {
                          print("$name");
                        });
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter password';
                        } else if (value.length < 6) {
                          return 'Password length should be above 6';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 100.0,
                    ),
                    Material(
                        color: Colors.greenAccent,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 10 : 20),
                        child: InkWell(
                          splashColor: Colors.cyan,
                          onTap: () => moveToHome(context),
                          // setState(() {
                          //   changeButton = true;
                          // });
                          // await Future.delayed(Duration(seconds: 1));
                          // await Navigator.pushNamed(
                          //     context, MyRoutes.homeroute);
                          // setState(() {
                          //   changeButton = false;
                          // },
                          // );
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changeButton ? 50 : 100,
                            height: 50,
                            alignment: Alignment.center,
                            child: changeButton
                                ? Icon(
                                    Icons.done,
                                    color: Color.fromARGB(255, 200, 172, 89),
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Color.fromARGB(238, 240, 89, 8),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                          ),
                        ))
                    // ElevatedButton(
                    //   child: Text('Login'),
                    //   style: TextButton.styleFrom(
                    //     minimumSize: const Size(100, 70),
                    //   ),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeroute);
                    //   },
                    // ),
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
