import 'package:beautiful_indonesia/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late SharedPreferences logindata;
  late bool loginStatus;

  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  String errorMessage = '';

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/profile.jpg',
            height: 120,
            width: 120,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Your Name',
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Your Email',
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  obscureText: true,
                  controller: passController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Your Password',
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(errorMessage,
                      style: const TextStyle(
                        color: Colors.redAccent,
                      )),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: MaterialButton(
                    child: const Text('Confirm'),
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                    onPressed: () {
                      checkIfNameIsEmpty();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkIfAlreadyLogin();
  }

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }

  // get the text in the TextField and start the Second Screen
  void _sendDataToHomeScreen(BuildContext context) {
    String inputName = usernameController.text;
    String inputEmail = emailController.text;
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

  void checkIfNameIsEmpty() {
    if (usernameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passController.text.isEmpty) {
      setState(() {
        errorMessage = "Field The field can't be empty";
      });
    } else if (emailController.text.contains("@gmail.com")) {
      logindata.setString('username', usernameController.text);
      logindata.setString("email", emailController.text);
      logindata.setBool("isLogin", true);
      _sendDataToHomeScreen(context);
    } else {
      setState(() {
        errorMessage = "Please enter a valid email";
      });
    }
  }

  void checkIfAlreadyLogin() async {
    logindata = await SharedPreferences.getInstance();
    loginStatus = (logindata.getBool('isLogin') ?? false);
    if (loginStatus == true) {
      Navigator.push(
          context, new MaterialPageRoute(builder: (context) => HomePage()));
    }
  }
}
