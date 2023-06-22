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
                "https://dipenmaharjan.com.np/shreeamba.jpg",
                width: MediaQuery.of(context).size.width,
                height: 100,
                // compares to object-fit in css
                fit: BoxFit.cover,
              ),
              Text(
                "Kapla Valor",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                        ],
                      ),
                      Text(
                        "5.0 Stars",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "\$5000",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Text(
                "Description",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              const Text(
                "Lorem Ipsu Lorem Ipsu Lorem Ipsu Lorem Ipsu Lorem Ipsu Lorem IpsuLorem Ipsu",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Row(
                children: [
                  FilledButton(
                    // onpressed function
                    onPressed: () {
                      print("buy now");
                    },
                    child: Text("Buy Now"),
                  ),
                  FilledButton(
                    // onpressed function
                    onPressed: () {
                      print("Add a Bag");
                    },
                    child: Text("Add a Bag"),
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
