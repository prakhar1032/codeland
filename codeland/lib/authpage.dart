import 'package:codeland/uploadimage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Prevent going back to the splash screen
        SystemNavigator.pop();
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/desing.png"),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, bottom: 20, top: 20),
                    child: TextFormField(
                      controller: username,
                      decoration: InputDecoration(
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        hintText: 'Username',
                        hintStyle: const TextStyle(
                            fontFamily: 'Montserrat', fontSize: 16),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 10),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, bottom: 20, top: 5),
                    child: TextFormField(
                      controller: password,
                      decoration: InputDecoration(
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        hintText: 'Password',
                        hintStyle: const TextStyle(
                            fontFamily: 'Montserrat', fontSize: 16),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.85,
                        height: 55,
                        decoration: BoxDecoration(
                            color: Color(0xffF68326),
                            borderRadius: BorderRadius.circular(10)),
                        child: ElevatedButton(
                          onPressed: () {
                            if (username.text.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('username is empty',
                                      style: TextStyle(
                                        fontSize: 16,
                                      )),
                                  duration: Duration(milliseconds: 2000),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            } else if (password.text.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('password is empty',
                                      style: TextStyle(
                                        fontSize: 16,
                                      )),
                                  duration: Duration(milliseconds: 2000),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            } else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => UploadImage(),
                                  ));
                            }
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'Quicksand'),
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: Colors.transparent,
                            onSurface: Colors.transparent,
                            shadowColor: Colors.transparent,
                            //make color or elevated button transparent
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("For Assistance & Login Details Contact: "),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("English, Kannada & Telugu :  "),
                      Text(
                        "7406333800",
                        style: TextStyle(
                          color: Color(0xffF68326),
                          decoration: TextDecoration.underline,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("English, Kannada & Telugu :  "),
                      Text(
                        "9071386515",
                        style: TextStyle(
                          color: Color(0xffF68326),
                          decoration: TextDecoration.underline,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Codeland Infosolutions Pvt Ltd."),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
