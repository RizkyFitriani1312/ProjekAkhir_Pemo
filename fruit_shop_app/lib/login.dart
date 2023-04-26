import 'package:flutter/material.dart';
import 'package:fruit_shop_app/homepage.dart';
import 'package:fruit_shop_app/register.dart';
import 'package:google_fonts/google_fonts.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: [
              Container(
                height: 190,
                width: 190,
                margin: EdgeInsets.only(top: 100),
                child: Image(
                  image: AssetImage("assets/logo.png"),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 50, right: 50),
                child: TextFormField(
                  // controller: rc.emailCtrl,
                  cursorColor: Colors.orange,
                  maxLines: 1,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.transparent)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    hintText: "Email",
                    prefixIcon: Icon(
                      Icons.people,
                      color: Color.fromARGB(255, 114, 111, 111),
                    ),
                    hintStyle: GoogleFonts.pacifico(
                      fontSize: 16,
                      color: Color.fromARGB(255, 114, 111, 111),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  validator: (value) =>
                      value!.isEmpty ? 'Email tidak boleh kosong' : null,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 50, right: 50),
                child: TextFormField(
                  // controller: rc.passwordCtrl,
                  cursorColor: Colors.orange,
                  maxLines: 1,
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.transparent)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    hintText: "Password",
                    prefixIcon: Icon(Icons.key,
                        color: Color.fromARGB(255, 114, 111, 111)),
                    hintStyle: GoogleFonts.pacifico(
                      fontSize: 16,
                      color: Color.fromARGB(255, 114, 111, 111),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  validator: (value) =>
                      value!.isEmpty ? 'Password tidak boleh kosong' : null,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 50, right: 50),
                height: 50,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => homepage()),
                      );
                      final snackBar = SnackBar(
                        content: Text('Login Anda Berhasil !'),
                        action: SnackBarAction(
                          label: 'OKE',
                          onPressed: () {},
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 70),
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        'Register Now ? ',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      child: TextButton(
                          child: Text('Create on account'),
                          onPressed: (() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) {
                                return const register();
                              }),
                            );
                          })),
                    ),
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
