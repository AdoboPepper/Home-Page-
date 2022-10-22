import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepage/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.emoji_food_beverage_outlined,
                size: 80,
                color: Colors.green,
              ),
              // Welcome to MATCHA
              const SizedBox(height: 10),
              Text(
                'MATCHA',
                style: GoogleFonts.bebasNeue(
                  fontWeight: FontWeight.bold,
                  fontSize: 80,
                  color: Colors.green,
                )
              ),
              const SizedBox(height: 10),
              // log in first
              Text(
                'That greeny goodness',
                style: GoogleFonts.bebasNeue(
                  fontSize: 30,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 50),
              //username or email textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green[500],
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email or Username',

                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // password textField
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green[500],
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',

                      ),
                    ),
                  ),
                ),
              ),
              // sign in button
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green[800],
                    ),
                    child: const Center(
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'No Account yet?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    ' Reigster Now!',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),

                  ),
                ],
              ),
            ],),
        ),
      ),

    );
  }
}
