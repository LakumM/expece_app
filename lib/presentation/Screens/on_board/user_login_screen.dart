import 'package:expece_app/domain/cus_text.dart';
import 'package:expece_app/presentation/Screens/on_board/signupscreen.dart';
import 'package:flutter/material.dart';
import '../../../domain/cuselevatedbtn.dart';
import '../../../domain/textFieldDec.dart';

class User_LoginScreen extends StatefulWidget {
  const User_LoginScreen({super.key});

  @override
  State<User_LoginScreen> createState() => _User_LoginScreenState();
}

class _User_LoginScreenState extends State<User_LoginScreen> {
  bool hideText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(50),
                child: Container(
                  child: Column(children: [
                    CusEx_Text(
                      text: 'Welcome Back to Login!',
                      fSize: 26,
                      fWeight: FontWeight.w800,
                      fColor: Colors.pink.shade200,
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(blurRadius: 5, color: Colors.black87)
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CusEx_TextField(
                            kebType: TextInputType.emailAddress,
                            lText: 'Enter E-Mail.',
                            sIcon: Icon(Icons.email_outlined),
                            sufixText: '@gmail.com',
                          ),
                          CusEx_TextField(
                            obSecureText: hideText,
                            lText: 'Enter Password',
                            sIcon: InkWell(
                              onTap: () {
                                hideText = !hideText;
                                setState(() {});
                              },
                              child: Icon(hideText
                                  ? Icons.remove_red_eye
                                  : Icons.remove_red_eye_outlined),
                            ),
                          ),
                          CusEx_Text(
                            text: 'Forgot Password!',
                            fSize: 14,
                            fWeight: FontWeight.w600,
                            fColor: Colors.pink.shade200,
                          ),
                          SizedBox(height: 12),
                          SizedBox(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    width: 120,
                                    child: GetElevatedBtn(
                                        onTap: () {}, btnName: 'Login')),
                                Container(
                                  width: 120,
                                  child: GetElevatedBtn(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SignUpScreen()));
                                      },
                                      btnName: 'Sign_up'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CusEx_Text(
                      text: 'OR',
                      fColor: Colors.pink.shade200,
                      fWeight: FontWeight.w400,
                      fSize: 14,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CusEx_Text(
                      text: 'Sign Up Using',
                      fColor: Colors.pink.shade200,
                      fWeight: FontWeight.w400,
                      fSize: 14,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      height: 50,
                      width: 350,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon:
                                  Image.asset('assets/pngImage/ic_google.png')),
                          IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                  'assets/pngImage/ic_facebook.png')),
                          IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                  'assets/pngImage/ic_twitter.png')),
                        ],
                      ),
                    )
                  ]),
                ),
              ),
            ],
          ),
        ));
  }
}

/*SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(
                'Wellcome Back....!',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          spreadRadius: 0.5,
                          blurRadius: 11)
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink.shade200),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  strokeAlign: 2,
                                  color: Colors.pink.shade200),
                              borderRadius: BorderRadius.circular(22)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(22))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  strokeAlign: 2,
                                  color: Colors.pink.shade200),
                              borderRadius: BorderRadius.circular(22)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(22))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          ' Forgot Password!',
                          style: TextStyle(
                              color: Colors.deepPurpleAccent.shade700,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        )),
                    SizedBox(height: 20),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              width: 120,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text('Login'),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.pink.shade200,
                                      foregroundColor: Colors.white))),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              width: 120,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text('Signup'),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.pink.shade200,
                                      foregroundColor: Colors.white))),
                        ]),
                  ],
                ),
              ),
              Text('Login To Social Media'),
            ],
          ),
        ),
      ),*/
