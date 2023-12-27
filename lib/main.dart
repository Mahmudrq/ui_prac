import 'package:flutter/material.dart';
import 'package:ui_prac/nextpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: UIPage(),
    );
  }
}

class UIPage extends StatefulWidget {
  const UIPage({super.key});

  @override
  State<UIPage> createState() => _UIPageState();
}

class _UIPageState extends State<UIPage> {

  MyScankbar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }//Scankbar

  MyAlertDialog() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
              child: AlertDialog(
            title: Text("Alert!"),
            content: Text("Do You Want To GO Next Page"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("No")),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NextPage()),
                    );
                  },
                  child: Text("Yes")),
            ],
          ));
        });
  }//AlertDialog

  @override
  Widget build(BuildContext context) {

    final ButtonStyle buttonStyle = OutlinedButton.styleFrom(
        padding: EdgeInsets.all(5),
        foregroundColor: Colors.amberAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)));//buttonstyle

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "HOME PAGE",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.amberAccent,
          actions: [
            IconButton(
              onPressed: () {
                MyScankbar("This Your Search Options", context);
              },
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {
                MyScankbar("This Your Email Options", context);
              },
              icon: Icon(Icons.email_rounded),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: "Message"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
          onTap: (int index) {
            if (index == 0) {
              MyScankbar("Home Bottom Menu", context);
            }
            if (index == 1) {
              MyScankbar("Message Bottom Menu", context);
            }
            if (index == 2) {
              MyScankbar("Profile Bottom Menu", context);
            }
          },
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.all(0),
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.amber[300]),
                    accountName: Text(
                      "Mahmud Ul Haque",
                      style: TextStyle(color: Colors.black),
                    ),
                    accountEmail: Text(
                      "Mahmud@gmail.com",
                      style: TextStyle(color: Colors.black),
                    ),
                    currentAccountPicture: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYGftzevAblHeQeqF1AflzRY7bNqFtf4X7fg&usqp=CAU"),
                    onDetailsPressed: () {
                      MyScankbar("THIS IS MY PROFILE", context);
                    },
                  )),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("HOME"),
                onTap: () {
                  MyScankbar("This is Home", context);
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("LOGOUT"),
                onTap: () {
                  MyScankbar("This is LOGOUT", context);
                },
              ),
              ListTile(
                leading: Icon(Icons.mail_outline_outlined),
                title: Text("MAIL"),
                onTap: () {
                  MyScankbar("This is MAIL", context);
                },
              ),
              ListTile(
                leading: Icon(Icons.person_2_rounded),
                title: Text("PROFILE"),
                onTap: () {
                  MyScankbar("This is PERSON", context);
                },
              ),
              ListTile(
                leading: Icon(Icons.phone_android_outlined),
                title: Text("PHONE"),
                onTap: () {
                  MyScankbar("This is PHONE", context);
                },
              ),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.all(0),
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.amber[300]),
                    accountName: Text(
                      "Mahmud Ul Haque",
                      style: TextStyle(color: Colors.black),
                    ),
                    accountEmail: Text(
                      "Mahmud@gmail.com",
                      style: TextStyle(color: Colors.black),
                    ),
                    currentAccountPicture: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYGftzevAblHeQeqF1AflzRY7bNqFtf4X7fg&usqp=CAU"),
                    onDetailsPressed: () {
                      MyScankbar("THIS IS MY PROFILE", context);
                    },
                  )),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("HOME"),
                onTap: () {
                  MyScankbar("This is Home", context);
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("LOGOUT"),
                onTap: () {
                  MyScankbar("This is LOGOUT", context);
                },
              ),
              ListTile(
                leading: Icon(Icons.mail_outline_outlined),
                title: Text("MAIL"),
                onTap: () {
                  MyScankbar("This is MAIL", context);
                },
              ),
              ListTile(
                leading: Icon(Icons.person_2_rounded),
                title: Text("PROFILE"),
                onTap: () {
                  MyScankbar("This is PERSON", context);
                },
              ),
              ListTile(
                leading: Icon(Icons.phone_android_outlined),
                title: Text("PHONE"),
                onTap: () {
                  MyScankbar("This is PHONE", context);
                },
              ),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: Text(
                    "THIS IS JUST THE BEGINING",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: Text(
                    "THIS IS JUST THE BEGINING",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: Text(
                    "THIS IS JUST THE BEGINING",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            OutlinedButton(
                onPressed: () {
                  MyAlertDialog();
                },
                child: Text("Next"),
                style: buttonStyle)
          ],
        ),
      ),
    );
  }
}
