import 'package:flutter/material.dart';

main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red, useMaterial3: false),

      darkTheme: ThemeData(primarySwatch: Colors.yellow, useMaterial3: false),

      color: Colors.yellowAccent,
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  mySnackBar(message, context) {
    return ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],

        onTap: (int index) {
          if (index == 0) {
            mySnackBar("I am Home BottomBar", context);
          }
          if (index == 1) {
            mySnackBar("I am Cart BottomBar", context);
          }
          if (index == 2) {
            mySnackBar("I am Profile BottomBar", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                onDetailsPressed: (){mySnackBar("This is Navigation Drawer",context);},
                currentAccountPictureSize: const Size(70, 70),
                decoration: BoxDecoration(color: Colors.green),
                accountName: Text(
                  "Shimon Bhuiya",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: Text(
                  "shimonbhuiya02@gmail.com",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: Image.network(
                  "https://juststickers.in/wp-content/uploads/2019/01/flutter.png",
                ),
              ),
            ),

            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: () {
                mySnackBar("Home", context);
              },
            ),
            ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person),
              onTap: () {
                mySnackBar("Profile", context);
              },
            ),
            ListTile(
              title: Text("Email"),
              leading: Icon(Icons.email),
              onTap: () {
                mySnackBar("Email", context);
              },
            ),
            ListTile(
              title: Text("Rating"),
              leading: Icon(Icons.star_rate),
              onTap: () {
                mySnackBar("Rate this app", context);
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
                onDetailsPressed: (){mySnackBar("This is Navigation Drawer",context);},
                currentAccountPictureSize: const Size(70, 70),
                decoration: BoxDecoration(color: Colors.green),
                accountName: Text(
                  "Shimon Bhuiya",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: Text(
                  "shimonbhuiya02@gmail.com",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: Image.network(
                  "https://juststickers.in/wp-content/uploads/2019/01/flutter.png",
                ),
              ),
            ),

            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: () {
                mySnackBar("Home", context);
              },
            ),
            ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person),
              onTap: () {
                mySnackBar("Profile", context);
              },
            ),
            ListTile(
              title: Text("Email"),
              leading: Icon(Icons.email),
              onTap: () {
                mySnackBar("Email", context);
              },
            ),
            ListTile(
              title: Text("Rating"),
              leading: Icon(Icons.star_rate),
              onTap: () {
                mySnackBar("Rate this app", context);
              },
            ),
          ],
        ),
      ),

      body: Text("This is Navigation Drawer"),
    );
  }
}
