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
      theme: ThemeData(),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0.0,
          leading: Icon(
            Icons.arrow_back,
            // color: Colors.red,
          ),
          title: Text(
            "Back to Shopping",
            // style: TextStyle(
            //   color: Colors.green,
            //   fontSize: 14,
            // ),
          ),
          actions: [
            Icon(
              Icons.favorite_border_outlined,
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                "https://images.pexels.com/photos/1926404/pexels-photo-1926404.jpeg?cs=srgb&dl=pexels-imlfernandez-1926404.jpg",
                width: MediaQuery.of(context).size.width,
                height: 100,
                fit: BoxFit.cover,
              ),
              Text(
                "Kapla Valor",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              Row(
                children: [
                  Text(
                    "\$5000",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
