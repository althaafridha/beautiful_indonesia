import 'package:beautiful_indonesia/asset/wishlist_grid.dart';
import 'package:beautiful_indonesia/data.dart';
import 'package:beautiful_indonesia/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late SharedPreferences loginData;
  late String username;
  late String email;

  @override
  void initState() {
    super.initState();
    getUserData();
  }

  void getUserData() async {
    loginData = await SharedPreferences.getInstance();
    setState(() {
      username = loginData.getString('username')!;
      email = loginData.getString('email')!;
    });
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text("Cancel"),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = TextButton(
      child: Text("Continue"),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Row(
        children: [
          Text("Logout ", style: TextStyle(fontWeight: FontWeight.w500)),
          Text(
            "$username?",
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
        ],
      ),
      content: Text("Are you sure want to logout $username?",
          style: TextStyle(fontWeight: FontWeight.w300)),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BackButton(
                      color: Colors.grey,
                    ),
                    IconButton(
                        onPressed: () {
                          loginData.clear();
                          showAlertDialog(context);
                        },
                        icon: Icon(
                          Icons.exit_to_app,
                          color: Colors.grey,
                        ))
                  ],
                ),
              ),
              SizedBox(height: 16),
              Hero(
                tag: 'profile',
                child: Image.asset(
                  'images/profile.png',
                  fit: BoxFit.cover,
                  height: 150,
                  width: 150,
                ),
              ),
              SizedBox(height: 12),
              Text(username,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800)),
              SizedBox(height: 8),
              Text(email,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 40),
            child: Text('Your Wishlist',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey)),
          ),
          Expanded(child: WishlistGrid()),
        ],
      ),
    );
  }
}
