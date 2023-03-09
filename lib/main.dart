import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: Icon(Icons.arrow_back),
        actions: [Icon(Icons.search)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Storage",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*   Image.asset(
                       "assets/images/flutter.png",
                     height: 60,
                   ),*/
                Center(
                  child: CircleAvatar(
                    child: FlutterLogo(),
                    backgroundColor: Colors.white,
                    radius: 20,
                  ),
                ),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Text("Login Page"),
                )),
                Center(child: Text("1.0.0")),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 100,
                  margin: EdgeInsets.all(20.0),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                      color: Colors.white),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.delete,
                                color: Colors.blue[800],
                              ),
                              Text(
                                "Clear storage",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                    color: Colors.blue[900]),
                              ),
                            ]),
                      ),
                      const VerticalDivider(),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.delete,
                                color: Colors.blue[800],
                              ),
                              Text(
                                "Clear cache",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.blue[900],
                                    fontSize: 16),
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                      "Space used",style: TextStyle(color: Colors.blue[800],fontSize: 16),
                  )
                  ,
                ),
                tile("App Data", "107 MB"),
                tile("User Data", "70.04 MB"),
                tile("Cache", "129 MB"),
                tile("Total", "305 MB"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget tile(String name, String size) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 10),
          SizedBox(height: 10),
          Text(
          size,
            style: TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}

/// diffrence between class widget and function widget
/// null operator in detail
/// class concepts
/// named vs positional parameters