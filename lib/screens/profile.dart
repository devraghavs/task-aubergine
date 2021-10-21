import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.settings,
              color: Colors.grey,
            ),
          )
        ],
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.favorite_border_outlined,
          color: Colors.grey,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                child: Image.asset('assets/Avatar.png'),
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      child: Image.asset('assets/all meditations.png'))),
              SizedBox(
                height: 30,
              ),
              Container(child: Image.asset('assets/all practices.png')),
              SizedBox(
                height: 30,
              ),
              Container(child: Image.asset('assets/all meditations.png'))
            ],
          ),
        ),
      ),
    );
  }
}
