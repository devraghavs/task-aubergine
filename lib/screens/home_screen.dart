import 'package:aubergine/screens/see_all.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: size.height * .40,
            child: Image.asset(
              "assets/Header.png",
              fit: BoxFit.cover,
            ),
            // decoration: BoxDecoration(
            //     image: DecorationImage(image: AssetImage("assets/Header.png"))),
          ),
          // SizedBox(
          //   height: 5,
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Popular',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SeeAll(),
                      ));
                    },
                    child: Text(
                      'See All',
                      style: TextStyle(color: Colors.blue),
                    ))
              ],
            ),
          ),
          Container(
            height: size.height * .25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  child: Image.asset(
                    "assets/Card 1.png",
                    fit: BoxFit.cover,
                  ),
                );
              },
              itemCount: 5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('New',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text('See All', style: TextStyle(color: Colors.blue))
              ],
            ),
          ),
          Container(
            height: size.height * .25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  child: Image.asset(
                    "assets/Card 3.jpg",
                  ),
                );
              },
              itemCount: 5,
            ),
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    ));
  }
}
