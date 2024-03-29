import 'package:flutter/material.dart';
import 'package:blur/blur.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udbtravel_app/Navigation/botom_nav.dart';
import 'package:udbtravel_app/Screens/Login_App/sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primaryColor: Colors.blueGrey,
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            shape: const StadiumBorder(),
            maximumSize: const Size(double.infinity, 48),
            minimumSize: const Size(double.infinity, 48),
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Color(0xFFF1E6FF),
          iconColor: Colors.blueGrey,
          prefixIconColor: Colors.blueGrey,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      child: Scaffold(
        body: Stack(
          children: [
            Blur(
              blur: 10.0,
              blurColor: Colors.blueGrey,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/prambanan.jpeg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SafeArea(
              child: Container(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Theme(
                      data: ThemeData(
                        textTheme: GoogleFonts.pacificoTextTheme().copyWith(
                          headline1: TextStyle(
                            color: Colors.grey[800],
                          ),
                          headline2: TextStyle(
                            color: Colors.grey[800],
                          ),
                          bodyText1: TextStyle(
                            color: Colors.grey[800],
                          ),
                          bodyText2: TextStyle(
                            color: Colors.grey[800],
                          ),
                        ),
                      ),
                      child: Text(
                        "UDB Travel",
                        style: GoogleFonts.pacifico(
                          color: Colors.white,
                          fontSize: 40.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Form(
                      child: Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            cursorColor: Colors.blueGrey,
                            onChanged: (value) {
                              //
                            },
                            decoration: const InputDecoration(
                              hintText: "Your email",
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Icon(Icons.person),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: TextFormField(
                              textInputAction: TextInputAction.done,
                              obscureText: true,
                              cursorColor: Colors.blueGrey,
                              onChanged: (value) {
                                //
                              },
                              decoration: const InputDecoration(
                                hintText: "Your password",
                                prefixIcon: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Icon(Icons.lock),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          Hero(
                            tag: "login_btn",
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const BottomNav(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                primary: const Color.fromARGB(175, 1, 55, 131),
                              ),
                              child: Text(
                                "Login".toUpperCase(),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text(
                                "Don’t have an Account ? ",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const SignUpScreen(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    if (MediaQuery.of(context).viewInsets.bottom == 0)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: CircleAvatar(
                              radius: 26.0,
                              backgroundColor: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.network(
                                  "https://i.ibb.co/7WBNQ3M/281764.png",
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          InkWell(
                            onTap: () {},
                            child: CircleAvatar(
                              radius: 26.0,
                              backgroundColor: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.network(
                                  "https://i.ibb.co/ThDwmPF/145802.png",
                                ),
                              ),
                            ),
                          ),
                        ],
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
