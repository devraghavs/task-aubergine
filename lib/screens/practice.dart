import 'package:aubergine/screens/see_all.dart';
import 'package:flutter/material.dart';

class Practice extends StatelessWidget {
  const Practice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * .30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.asset(
                          "assets/Card 1.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                          right: 20,
                          top: 10,
                          child: Icon(Icons.favorite_border_outlined))
                    ],
                  );
                },
                itemCount: 5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 5),
              child: Text(
                "All Practices",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            Container(
              height: size.height * .50,
              child: ListView.builder(
                itemBuilder: (BuildContext context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Image.asset('assets/Card 1.png'),
                          title: Text("Anxiety"),
                          trailing: Icon(Icons.favorite_border_outlined),
                        ),
                      ),
                      Divider(
                        height: 2,
                        color: Colors.grey,
                      )
                    ],
                  );
                },
                itemCount: 8,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
