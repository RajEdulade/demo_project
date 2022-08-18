import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flags"),
          centerTitle: true,
          backgroundColor: Colors.brown,
        ),
        backgroundColor: Colors.blueGrey,
        body: Center(
            child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: Image(
                    image: AssetImage(
                        "assets/images/flag1.jpg")),
              ),
              Text("This is India's Flag",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  )),
              ElevatedButton(
                  style: ButtonStyle(elevation: MaterialStateProperty
                      .all<double>(10),
                    shadowColor: MaterialStateProperty.all<Color>(Colors.black87),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.deepOrange),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                      ))),
                  onPressed: () {
                    print("Hello");
                  },
                  child: Text(
                    "Click me",
                    style: TextStyle(),
                  )),
              TextButton(onPressed: (){}, child: Text("text button", style:
              TextStyle(color: Colors.black),))
            ],
          ),
        )),
      ),
    );
  }
}
